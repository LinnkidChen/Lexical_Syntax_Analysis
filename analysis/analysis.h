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
  Analysis(std::istream inpt_file);
  ana_reslt_retn run();

private:
  std::istream inpt_file;
};