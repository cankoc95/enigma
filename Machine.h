#ifndef MACHINE_H
#define MACHINE_H

#include "Rotor.h"
#include <vector>
#include <string>

class Machine
{
private:
	std::vector<Rotor> rotors (5);
public:
	Machine();
	~Machine();
	void replaceRotors(std::vector<Rotor> rotorArray);
	void setRotors(std::string setting);
	std::string convert(std::string message);
	void advanceRotors();
	char decodeLetter(char letter);
};

#endif // MACHINE_H
