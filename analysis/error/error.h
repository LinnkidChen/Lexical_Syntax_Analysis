#pragma once
#include <iostream>
#include <list>
#include <string>
class error {
public:
  std::list<std::string> errors;
  void print_error();
  void add_error(std::string);
};