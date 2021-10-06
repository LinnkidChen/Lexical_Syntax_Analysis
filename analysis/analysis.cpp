#pragma once
#include "analysis.h"
#include <iostream>

Analysis::Analysis(std::string path) {
  inpt_file.open(path);
  file_valid = inpt_file.is_open();
}

void Analysis::run(error &error_, statistic &sta_) {
  int state = 0; // state: 0: normal -1 comment;
  ana_reslt_retn result;
  while (!inpt_file.eof()) {
    read_word(result);
    print_reslt(result);
  }
}

bool Analysis::is_file_valid() { return file_valid; }
void Analysis::read_word(ana_reslt_retn &reslt) {}
void Analysis::print_reslt(ana_reslt_retn const &reslt) {
  switch (reslt.type) {
  case NUM:
    std::cout << reslt.attribute << "  " << reslt.val << std::endl;
    break;
  case ID:
    std::cout << reslt.attribute << "  " << reslt.note << std::endl;
    break;
  case KEYWORD:
    std::cout << reslt.attribute << "  " << reslt.note << std::endl;
  }
}