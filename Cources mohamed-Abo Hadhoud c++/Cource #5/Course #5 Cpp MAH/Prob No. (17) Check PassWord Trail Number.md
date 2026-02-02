#include <iostream>  

#include <string>    

using namespace std;

  

string ReadPassword()

{

  string Password;  // Variable to store the user's password.

  

  cout << "Please enter a 3-Letter Password (all capital)?\n"; // Prompt the user.

  cin >> Password;  // Read the password input.

  

  return Password;  // Return the password.

}

  
  

bool CheckPass(string OrginalPass)

{

  

  cout << "\n";

  
  

  for (int i = 65; i <= 90; i++)

  {

    int counter = 0;

    string word = "";

    for (int j = 65; j <= 90; j++)

    {

      for (int k = 65; k <= 90; k++)

      {

        word = word + char(i);

        word = word + char(j);

        word = word + char(k);

  

        counter++;

        cout << "Trail Time Counter" << counter << word << endl;

        if (word == OrginalPass) {

          cout << "The Pass Word is : " << word << '\n';

          cout << "Number Of Trail is is : " << counter << endl;

          return true;

        }

        word = "";

      }

    }

  }

  return false;

  

}

  
  
  
  
  

int main() {

  CheckPass(ReadPassword());

}