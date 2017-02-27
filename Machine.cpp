#include "Machine.h"
#include "Rotor.h"

Machine::Machine()
{
	rotors.reserve(5);
}
void Machine::replaceRotors(std::vector<Rotor> rotorArray){
	for (int i = 0; i < rotorArray.size(); i++){
		rotors[i] = rotorArray[i];
	}
}

void Machine::setRotors(std::string setting) {
	int i = 0;
	for (char& c: setting){
		rotors[i+1].setSetting(Rotor::toIndex(c));
		i++;
	}
}

std::string Machine::convert(std::string msg) {
	std::vector<char> decoded(msg.size());
	int i = 0;
	for (char& c : msg){
		advanceRotors();
		decoded[i] = decodeLetter(c);
	}
	std::string result(decoded.begin(), decoded.end());
	return result;
}

void Machine::advanceRotors(){
	if (rotors[4].atNotch()){
		if (rotors[3].atNotch()){
			rotors[2].advance();
		}
		rotors[3].advance();
	}
	else if (rotors[3].atNotch()){
		rotors[2].advance();
		rotors[3].advance();
	}
	rotors[4].advance();
}

char Machine::decodeLetter(char letter) {
	for (int i = 4; i >= 0; i--) {
		letter = rotors[i].decode(letter);
	}
	for (int i = 0; i < 5; i++){
		letter = rotors[i].decode2(letter);
	}
	return letter;
}

