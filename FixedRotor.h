#ifndef FIXEDROTOR_H
#define FIXEDROTOR_H

#include <string>
#include <vector>
#include "Rotor.h"

class FixedRotor : public Rotor {
public:
	FixedRotor() {}
	FixedRotor(std::string rotorName, std::string map, string::inverse): Rotor(rotorName, map, inverse, "") {}
	bool advances() {return false;}
	bool atNotch() {return false;}
	void advance(){return;}
};

#endif // FIXEDROTOR_H
