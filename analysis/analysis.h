#pragma once
#include "error/error.h"
#include "statistics/statistic.h"
#include <ctype.h>
#include <fstream>
#include <iostream>
#include <istream>
#include <set>
#include <string>
#define NUM 0
#define ID 1
#define KEYWORD 2
#define ERROR 3
#define COMMENT 4
#define op 5
class ana_reslt_retn {
public:
  std::string note, attribute;
  std::string error;
  int type;
  int val;
};

class Analysis {
public:
  Analysis(std::string path);
  void run(error &error_, statistic &sta_);
  std::string read_one_word;
  bool is_file_valid();
  void read_word(ana_reslt_retn &reslt, error &error_);

  void print_reslt(ana_reslt_retn const &reslt);

private:
  std::ifstream inpt_file;
  bool file_valid;
  std::set<std::string> keyword;
  int status; // distinguish current status. determine whether it is a comment;
  // 1 for not comment; 2 for // comment; 3 for /*comment;
};