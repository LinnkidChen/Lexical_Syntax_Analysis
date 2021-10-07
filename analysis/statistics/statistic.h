#pragma once
#include <iostream>
class statistic {
public:
  statistic() {
    num = 0;
    id = 0;
    keyword = 0;
    error = 0;
    comment = 0;
    op_ = 0;
  }
  int num;
  int id;
  int keyword;
  int error;
  int comment;
  int op_;
  void print_sta();
};