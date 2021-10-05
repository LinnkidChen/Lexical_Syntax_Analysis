#pragma once
#include "error/error.h"
#include "statistics/statistic.h"
#include <fstream>
#include <iostream>
#include <istream>
#include <string>
class ana_reslt_retn {
public:
  std::string note, attribute;
  std::string error;
  int val;
  int type;
};

class Analysis {
public:
  Analysis(std::string path);
  void run(error &error_, statistic &sta_);
  std::string read_one_word;
  bool is_file_valid();

private:
  std::ifstream inpt_file;
  bool file_valid;
  int status; // distinguish current status. determine whether it is a comment;
  // 1 for not comment; 2 for // comment; 3 for /*comment;
};