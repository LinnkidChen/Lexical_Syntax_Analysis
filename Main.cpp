/*
Lexical Syntax Analysis

Author: Linnkid_Chen
contact: linnkid.chen@gmail.com

Publish @ https://github.com/LinnkidChen/Lexical_Syntax_Analysis/tree/master

*/

#include "analysis/analysis.cpp"
// #include "analysis/analysis.h"
#include <cstring>
#include <fstream>
#include <iostream>

int main(int argc, char *argv[]) {
  std::ifstream input_strm;
  std::string input_pth;
  int statistic_output = 0; // determine whether output statistic information
  switch (argc) {
  case 1:
    input_pth = argv[0];
    break;
  case 2:
    if (argv[0][1] == 's') // view addition statics
      statistic_output = 1;
    input_pth = argv[1];
    break;

  default:
    std::cout << "Invalid parameters.\n";
    break;
  }

  Analysis ana(input_pth);
  error eor;
  statistic sta;

  if (ana.is_file_valid()) {
    ana.run(eor, sta);
  } else
    std::cout << "Invalid file name\n";

  eor.print_error();
  return 0;
}