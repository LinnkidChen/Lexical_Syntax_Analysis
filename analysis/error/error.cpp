#include <error.h>
#include <iterator>
void error::print_error() {
  std::list<std::string>::iterator it;
  it = errors.begin();
  while (it != errors.end()) {
    std::cout << "Error: " << *it << std::endl;
  }
}

void error::add_error(std::string input) { errors.push_back(input); }