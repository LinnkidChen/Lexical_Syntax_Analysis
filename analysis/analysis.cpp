
#include "analysis.h"
#include <cctype>
#include <fstream>
#include <iostream>

Analysis::Analysis(std::string path) {
  inpt_file.open(path);
  file_valid = inpt_file.is_open();

  std::ifstream kyw_file;
  std::string kyw;
  kyw_file.open("keywords.txt");
  while (!kyw_file.eof()) {
    kyw_file >> kyw;
    keyword.insert(kyw);
  }
}
void reset_reslt(ana_reslt_retn *reslt) {
  reslt->attribute.clear();
  reslt->note.clear();
  reslt->error.clear();
  reslt->type = -1;
  reslt->val = -1;
}
void Analysis::run(error &error_, statistic &sta_) {
  //   int state = 0; // state: 0 normal 1 line_comment; 2 block_comment
  ana_reslt_retn result;
  while (!inpt_file.eof()) {
    read_word(result, error_);
    switch (result.type) {
    case NUM:
      sta_.num++;
      print_reslt(result);
      break;
    case ID:
      sta_.id++;
      print_reslt(result);
      break;
    case KEYWORD:
      sta_.keyword++;
      print_reslt(result);
      break;
    case op:
      sta_.op_++;
      print_reslt(result);
      break;
    case COMMENT:
      sta_.comment += result.val;
      break;
    case ERROR:
      sta_.error++;
    }

    reset_reslt(&result);
  }
}

bool Analysis::is_file_valid() { return file_valid; }
void Analysis::read_word(ana_reslt_retn &reslt, error &error_) {
  reslt.type = -1;
  reslt.val = 0;
  char c;
  c = inpt_file.get();
  // skip empty
  while (c == ' ' || c == '\n')
    c = inpt_file.get();
  if (c == '/') {
    if (inpt_file.peek() == '/') { // line comment
      while (c != '\n')
        c = inpt_file.get();
      reslt.type = COMMENT;
      reslt.val = 1;
    }

    else if (inpt_file.peek() == '*') // block comment
    {
      c = inpt_file.get();
      reslt.type = COMMENT;
      while (!inpt_file.eof()) {
        c = inpt_file.get();
        if (c == '\n')
          reslt.val++;
        if (c == '*' && inpt_file.peek() == '/') {
          c = inpt_file.get();
          break;
        }
      }
    }
  }
  if (reslt.type < 0) { // not a comment
                        // regonize id
    if (isalpha(c) || c == '_') {
      reslt.note += c;
      while (isalpha(inpt_file.peek()) || isdigit(inpt_file.peek()) ||
             inpt_file.peek() == '_') {
        c = inpt_file.get();
        reslt.note += c;
      }
      if (keyword.find(reslt.note) == keyword.end()) { // not a keyword
        reslt.attribute = "ID";
        reslt.type = ID;
      } else {
        reslt.attribute = "KEYWORD";
        reslt.type = KEYWORD;
      }
    } else if (isnumber(c)) {
      reslt.note += c;
      int state = 1;
      while (state > 0) {
        switch (state) {
        case 1:
          if (isnumber(inpt_file.peek())) {
            c = inpt_file.get();
            reslt.note += c;
            state = 1;
          } else if (inpt_file.peek() == '.') {
            c = inpt_file.get();
            reslt.note += c;
            state = 2;
          } else if (inpt_file.peek() == 'E' || inpt_file.peek() == 'e') {
            c = inpt_file.get();
            reslt.note += c;
            state = 4;
          } else {
            if (std::isalnum(inpt_file.peek())) {
              reslt.type = ERROR;
              while (std::isalnum(inpt_file.peek())) {
                c = inpt_file.get();
                reslt.note += c;
              }
              error_.add_error("INVALID WORD: " + reslt.note);
            }
            state = 0;
          }
          break;
        case 2:
          if (isnumber(inpt_file.peek())) {
            c = inpt_file.get();
            reslt.note += c;
            state = 3;
          } else {
            while (std::isalnum(inpt_file.peek()) || inpt_file.peek() == '_') {
              reslt.note += c;
              c = inpt_file.get();
            }
            reslt.type = ERROR;
            error_.add_error("Invalid word: " + reslt.note);
          }
          break;
        case 3:
          if (isnumber(inpt_file.peek())) {
            c = inpt_file.get();
            reslt.note += c;
            state = 3;
          } else if (inpt_file.peek() == 'E' || inpt_file.peek() == 'e') {
            c = inpt_file.get();
            reslt.note += c;
            state = 4;
          } else
            state = 0;
          break;
        case 4:
          if (inpt_file.peek() == '+' || inpt_file.peek() == '-') {
            c = inpt_file.get();
            reslt.note += c;
            state = 6;
          } else if (isnumber(inpt_file.peek())) {
            c = inpt_file.get();
            reslt.note += c;
            state = 5;
          }

          else {
            while (std::isalnum(inpt_file.peek()) || inpt_file.peek() == '_') {

              c = inpt_file.get();
              reslt.note += c;
            }
            reslt.type = ERROR;
            error_.add_error("Invalid word: " + reslt.note);
          }
          break;
        case 5:
          if (isnumber(inpt_file.peek())) {
            c = inpt_file.get();
            reslt.note += c;
            state = 5;
          } else
            state = 0;
          break;
        case 6:
          if (isnumber(inpt_file.peek())) {
            c = inpt_file.get();
            reslt.note += c;
            state = 5;
          } else {
            while (std::isalnum(inpt_file.peek()) || inpt_file.peek() == '_') {

              c = inpt_file.get();
              reslt.note += c;
            }
            reslt.type = ERROR;
            error_.add_error("Invalid word: " + reslt.note);
          }
        }
      }
      if (reslt.type < 0) {
        reslt.type = NUM;
        reslt.attribute = "NUM";
      }
    }
  }
  if (reslt.type < 0) {
    // relop
    if (c == '<') {
      switch (inpt_file.peek()) {
      case '=':
        reslt.attribute = "LE";
        reslt.note = "relop";
        reslt.type = op;
        c = inpt_file.get();
        break;
      case '>':
        reslt.attribute = "NE";
        reslt.note = "relop";
        reslt.type = op;
        c = inpt_file.get();
        break;
      default:
        reslt.attribute = "LT";
        reslt.note = "relop";
        reslt.type = op;
      }

    } else if (c == '=') {
      reslt.attribute = "EQ";
      reslt.note = "relop";
      reslt.type = op;
    } else if (c == '>') {
      if (inpt_file.peek() == '=') {
        reslt.attribute = "GE";
        reslt.note = "relop";
        reslt.type = op;
        c = inpt_file.get();
      } else {
        reslt.attribute = "GT";
        reslt.note = "relop";
        reslt.type = op;
      }
    } else if (c == ':') {
      if (inpt_file.peek() == '=') {
        reslt.attribute = "";
        reslt.note = "assign-op";
        reslt.type = op;
      } else {
        reslt.attribute = "";
        reslt.note = ":";
        reslt.type = op;
      }
    }
  }
  if (reslt.type < 0) {
    switch (c) {
    case '+':
      reslt.attribute = "";
      reslt.note = "+";
      reslt.type = op;
      break;
    case '-':
      reslt.attribute = "";
      reslt.note = "-";
      reslt.type = op;
      break;
    case '*':
      reslt.attribute = "";
      reslt.note = "*";
      reslt.type = op;
      break;
    case '/':
      reslt.attribute = "";
      reslt.note = "/";
      reslt.type = op;
      break;
    case '{':
      reslt.attribute = "";
      reslt.note = "{";
      reslt.type = op;
      break;
    case '}':
      reslt.attribute = "";
      reslt.note = "}";
      reslt.type = op;
      break;
    case '(':
      reslt.attribute = "";
      reslt.note = "(";
      reslt.type = op;
      break;
    case ')':
      reslt.attribute = "";
      reslt.note = ")";
      reslt.type = op;
      break;
    case 39: //'
      reslt.attribute = "";
      reslt.note = "\'";
      reslt.type = op;
      break;
    case ';':
      reslt.attribute = "";
      reslt.note = ";";
      reslt.type = op;
      break;
    case ',':
      reslt.attribute = "";
      reslt.note = ",";
      reslt.type = op;
      break;
    case '!':
      reslt.attribute = "";
      reslt.note = "!";
      reslt.type = op;
      break;
    default:
    case '\"':
      reslt.attribute = "";
      reslt.note = "\"";
      reslt.type = op;
      break;
      reslt.note += c;
      error_.add_error("Illegal symbol: " + reslt.note);
      reslt.type = ERROR;
    }
  }
}

void Analysis::print_reslt(ana_reslt_retn const &reslt) {
  switch (reslt.type) {
  case NUM:
    std::cout << reslt.note << "  " << reslt.attribute << std::endl;
    break;
  case ID:
    std::cout << reslt.note << "  " << reslt.attribute << std::endl;
    break;
  case KEYWORD:
    std::cout << reslt.note << "  " << reslt.attribute << std::endl;
    break;
  case op:
    std::cout << reslt.note << "  " << reslt.attribute << std::endl;
    break;
  }
}
