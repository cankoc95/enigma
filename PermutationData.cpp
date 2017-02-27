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

const std::vector<std::vector<std::string> > PermutationData::ROTOR_SPECS = {
        { "I", "EKMFLGDQVZNTOWYHXUSPAIBRCJ", "UWYGADFPVZBECKMTHXSLRINQOJ",
          "Q" },
        { "II", "AJDKSIRUXBLHWTMCQGZNPYFVOE", "AJPCZWRLFBDKOTYUQGENHXMIVS",
          "E" },
        { "III", "BDFHJLCPRTXVZNYEIWGAKMUSQO", "TAGBPCSDQEUFVNZHYIXJWLRKOM",
          "V" },
        { "IV", "ESOVPZJAYQUIRHXLNFTGKDCMWB", "HZWVARTNLGUPXQCEJMBSKDYOIF",
          "J" },
        { "V", "VZBRGITYUPSDNHLXAWMJQOFECK", "QCYLXWENFTZOSMVJUDKGIARPHB",
          "Z" },
        { "VI", "JPGVOUMFYQBENHZRDKASXLICTW", "SKXQLHCNWARVGMEBJPTYFDZUIO",
          "ZM" },
        { "VII", "NZJHGRCXMYSWBOUFAIVLPEKQDT", "QMGYVPEDRCWTIANUXFKZOSLHJB",
          "ZM" },
        { "VIII", "FKQHTLXOCBJSPDZRAMEWNIUYGV", "QJINSAYDVKBFRUHMCPLEWZTGXO",
          "ZM" },
        { "BETA", "LEYJVCNIXWPBQMDRTAKZGFUHOS", "RLFOBVUXHDSANGYKMPZQWEJICT" },
        { "GAMMA", "FSOKANUERHMBTIYCWLQPZXVGJD", "ELPZHAXJNYDRKFCTSIBMGWQVOU" },
        { "B", "ENKQAUYWJICOPBLMDXZVFTHRGS" },
        { "C", "RDOBJNTKVEHMLFCWZAXGYIPSUQ" }
    };