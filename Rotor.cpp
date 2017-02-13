#include "Rotor.h"
#include <iostream>
#include <string>

int Rotor:convertForward(int p){
	return toIndex(map.at(p));
}

int Rotor:convertBackward(int e) {
	return toIndex(inverse.at(e));
}

bool Rotor::advance(){
	set((_setting + 1) % ALPHABET_SIZE);
}

char Rotor::decode(char c) {
	int c_to_index = toIndex(c);
	int backward = (c_to_index + _setting) % ALPHABET_SIZE;
	int forward = convertForward(backward) - _setting + ALPHABET_SIZE;
	return forward % ALPHABET_SIZE;
}

char Rotor::decode2(char letter) {
	int letter_to_index = (toIndex(letter) + _setting) % ALPHABET_SIZE;
	int backward = convertBackward(letter_to_index) - _setting + ALPHABET_SIZE;
	return toLetter(backward % ALPHABET_SIZE);
}

bool Rotor::atNotch(){
	if (_notch.length() == 2) {
		return (_setting == toIndex(_notch[0])) || (_setting == toIndex(_notch[1]);
	}
	return _setting == _notch[0];
}






