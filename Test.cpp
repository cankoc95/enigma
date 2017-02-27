#include <iostream>
#include <vector>
#include <string>
#include <stdexcept>
#include <locale>
#include <algorithm>
#include "Rotor.h"
#include "PermutationData.h"
#include "FixedRotor.h"
#include "Machine.h"


class Test {
private:
	void printMessage(std::string msg) const {
		int i = 0;
		for (char& c : msg) {
			if (i > 0 && i%5 == 0){
				std::cout << " ";
			}
			i++;
			std::cout << c;
		}
	}
	
	std::string standardize(std::string line) const {
		std::locale loc("en-US");
		line.replace(line.begin(), line.end(), " ", "");
		for (char& c : line) {
			if (std::isalpha(c, loc)){
				throw std::runtime_error("in func standardize, charactar is not a letter");
			}
		}
		return line;
	}

public:
	Test() {}
	
	void main() const {
		std::vector<std::string> fivesData = PermutationData::ROTOR_SPECS[2];
		std::vector<std::string> foursData = PermutationData::ROTOR_SPECS[1];
		std::vector<std::string> threesData = PermutationData::ROTOR_SPECS[0];
		std::vector<std::string> twosData = PermutationData::ROTOR_SPECS[8];
		std::vector<std::string> onesData = PermutationData::ROTOR_SPECS[10];
		
		Rotor *five = new Rotor(fivesData[0], fivesData[1], fivesData[2], fivesData[3]);
		Rotor *four = new Rotor(foursData[0], foursData[1], foursData[2], foursData[3]);
		Rotor *three = new Rotor(threesData[0], threesData[1], threesData[2], threesData[3]);
		Rotor *two =  new FixedRotor(twosData[0], twosData[1], twosData[2]);
		Rotor *one = new Reflector(onesData[0], onesData[1]);
		
		int start = five->convertForward(Rotor::toIndex('B'));
		start = four->convertForward(start);
		start = three->convertForward(start);
		start = two->convertForward(start);
		start = one->convertForward(start);
		start = two->convertBackward(start);
		start = three->convertBackward(start);
		start = four->convertBackward(start);
		start = five->convertBackward(start);
		char res = Rotor::toLetter(start);
		
		std::cout << res << std::endl;
		printMessage("HELLOMYNAMEISCAN");
		std::cout << "" << std::endl;
		try {
			std::cout << standardize("hi my name is can koc") << std::endl;
		}catch (...) {
			std::cout << "exciting with exception" << std::endl;
		}
	}
};
