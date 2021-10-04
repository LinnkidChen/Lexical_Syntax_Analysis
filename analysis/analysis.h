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
  ana_reslt_retn run();

private:
  std::ifstream inpt_file;
};