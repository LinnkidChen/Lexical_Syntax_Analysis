#pragma once
#include "analysis.h"

Analysis::Analysis(std::string path) { inpt_file.open(path); }

void Analysis::run(error &error_, statistic &sta_) {
  while (!inpt_file.eof()) {
    std::cout << inpt_file.get();
  }
}