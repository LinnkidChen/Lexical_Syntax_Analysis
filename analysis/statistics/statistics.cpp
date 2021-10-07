#include "statistic.h"
#include <ostream>
void statistic::print_sta() {
  std::cout << std::endl;
  std::cout << "NUM: " << num << std::endl
            << "ID: " << id << std::endl
            << "KEYWORD: " << keyword << std::endl
            << "OP: " << op_ << std::endl
            << "COMMENT: " << comment << "(lines)\n"
            << "ERROR: " << error << std::endl;
}