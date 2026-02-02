#include <iostream>  

#include <string>    

using namespace std;

  

string ReadPassword()

{

  string Text; 

  

  cout << "Please enter Your Name\n"; // Prompt the user.

  getline(cin, Text); // Read the password input.

  

  return Text;

}

string EncryptText(string Text, short EncryptionKey) {

  for (int i = 0; i <= Text.length(); i++)

  {

    Text[i] = char((int)Text[i] + EncryptionKey);

  }

  return Text;

}

string DecryptingText(string Text, short EncryptionKey) {

  for (int i = 0; i <= Text.length(); i++)

  {

    Text[i] = char((int)Text[i] - EncryptionKey);

  }

  return Text;

};

  

int main() {

  const short decptionKey = 2;

  string Text = ReadPassword();

  string wordAfterEncrpton = EncryptText(Text, decptionKey);

  string wordbeforEncrpton = DecryptingText(wordAfterEncrpton, decptionKey);

  cout << "Enter ur Word : " << Text << endl;

  cout << " Ur Word After EncryptText : " << wordAfterEncrpton << endl;

  cout << " Ur Word Before EncryptText : " << wordbeforEncrpton << endl;

  
  

}