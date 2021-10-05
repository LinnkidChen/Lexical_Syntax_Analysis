#pragma once
#include "analysis.h"

Analysis::Analysis(std::string path) {
  inpt_file.open(path);
  file_valid = inpt_file.is_open();
}

void Analysis::run(error &error_, statistic &sta_) {
  while (!inpt_file.eof()) {
    std::cout << inpt_file.get();
  }
}

bool Analysis::is_file_valid() { return file_valid; }