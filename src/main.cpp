#include <iostream>

namespace Surge
{
namespace FaustOscs
{
int spawn_justASin();
int spawn_basicOsc();
}
}

int main( int argc, char **argv )
{
  std::cout << "Hello World" << std::endl;
  std::cout << "Spawing basic" << std::endl;
  Surge::FaustOscs::spawn_basicOsc();

    std::cout << "Spawing just" << std::endl;
  Surge::FaustOscs::spawn_justASin();
}
