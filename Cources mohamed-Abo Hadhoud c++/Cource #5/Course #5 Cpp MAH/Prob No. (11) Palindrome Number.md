#include <iostream>   // Include iostream for input/output operations.

#include <string>     // Include string to work with std::string.

using namespace std;  // Use the standard namespace to avoid using the "std::" prefix.

  

// Function: ReadPositiveNumber

// Purpose: Prompts the user with a custom message to enter a positive number.

//          Continues to prompt until the user inputs a number greater than zero.

// Parameter: Message - a string containing the prompt to display.

// Returns: A positive integer provided by the user.

int ReadPositiveNumber(string Message)

{

  int Number = 0;  // Variable to store the user's input.

  do

  {

    cout << Message << endl;  // Display the prompt message.

    cin >> Number;            // Read the number entered by the user.

  } while (Number <= 0);        // Repeat if the number is not positive.

  

  return Number;  // Return the valid positive number.

}

  

// Function: ReverseNumber

// Purpose: Reverses the digits of a given number.

//          For example, if the input is 123, the function returns 321.

// Parameter: Number - the positive integer whose digits are to be reversed.

// Returns: The reversed number.

int ReverseNumber(int Number)

{

  int Remainder = 0;  // Variable to store the last digit extracted from the number.

  int Number2 = 0;    // Variable to accumulate the reversed number.

  

  // Process each digit until the original number becomes 0.

  while (Number > 0)

  {

    Remainder = Number % 10;          // Extract the last digit from Number.

    Number = Number / 10;             // Remove the last digit from Number.

    Number2 = Number2 * 10 + Remainder; // Append the extracted digit to Number2.

  }

  

  return Number2;  // Return the reversed number.

}

bool CheckNUmber(int Number1) {

  return Number1 == ReverseNumber(Number1);

}

  
  

int main() {

  if (CheckNUmber(ReadPositiveNumber("Read NUmebr1")))

    cout << "It is Pilandom number";

  else

    cout << "It is Not Pilandom number";

}