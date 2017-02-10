#ifndef ROTOR_H
#define ROTOR_H

#include <vector>
#include <string>
#include <exception>

class Rotor
{

int _setting;
std::string _rotorName, _map, _inverse, _notch;


public:
	final int ALPHABET_SIZE = 26;
	
	Rotor(): _setting(0), _rotorName(""), _map(""), _inverse(""), _notch("") {}
//	~Rotor();
	Rotor(std::string rotorName, std::string map, std::string inverse, std::string notch):
		_rotorName(rotorName),
		_map(map),
		_inverse(inverse),
		_notch(notch)
		{}
	
	char toLetter(int p) const {return (char) p + 'A';}
	int toIndex(char c) const {return (int) c - 'A';} 
	bool advances() {return true;}
	virtual bool hasInverse() {return true;}
	int getSetting() {return _setting;}
	void setSetting(int position) {
		_setting = position;
		}
	int convertForward(int p);
	virtual int convertBackward(int e);
	bool advance()
	char decode(char letter);
	char decode2(char letter);
	std::string getName() {return _rotorName;}
};

class Reflector : public Rotor { //extends Rotor
	public:
		Reflector();
		Reflector(std::string rotorName, std::string map): Rotor(rotorName, map, "", "") {}
		
		bool hasInverse() {return false;}
		int convertBackward(int unused) {throw "Reflector Doesnt Have This Functionality";}
}
#endif // ROTOR_H
