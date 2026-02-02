#include <cstdlib>
#include <ctime>
#include <iostream>
#include <string>
using namespace std;
enum enChoices { ROCK = 1, Paper = 2, Scissors = 3 };
int RandNumber(int From, int To) { return rand() % (To - From + 1) + From; }

int EnterUserChoice(string Message) {
  int Number = 0;
  do {
    cout << Message << endl;
    cin >> Number;
  } while (Number < 1 || Number > 3);
  return Number;
}
enChoices GetRandomChoice() { return (enChoices)RandNumber(1, 3); }
enChoices GetUserChoice() {
  int Index = EnterUserChoice(
      "Enter Your Choice Frome 1 - 3 [1] : ROCk [2] Paper : [3] Scissors\n ");
  return (enChoices)Index;
}
string GetString(enChoices choice) {
  switch (choice) {
  case enChoices::ROCK:
    return "ROCK";
  case enChoices::Paper:
    return "Paper";
  case enChoices::Scissors:
    return "Scissors";
  default:
    return "unKown";
  }
}
void GetRes(int Number) {
  int Drow = 0;
  int UserWins = 0;
  int PcWins = 0;
  for (int i = 0; i < Number; i++) {
    enChoices Player = GetUserChoice();
    cout << GetString(Player) << endl;
    enChoices PcChoice = GetRandomChoice();
    cout << GetString(PcChoice) << endl;

    if (Player == PcChoice) {
      cout << "\nDrow :| ";

      Drow++;
    } else if (Player == Paper && PcChoice == ROCK ||
               Player == ROCK && PcChoice == Scissors ||
               Player == Scissors && PcChoice == Paper) {
      cout << "\nPlayer Wins :)";
      UserWins++;
    } else {
      cout << "\nPC Wins :(";

      PcWins++;
    }
  }

  cout << endl << "Drow: " << Drow;
  cout << endl << "User Wins : " << UserWins;
  cout << endl << " pc Wins : " << PcWins;
  cout << endl << "Games is :  " << Number;
  if (UserWins > PcWins) {
    cout << "\n FINAL WINNER IS USER ";
  } else if (PcWins > UserWins) {
    cout << endl << "FINAL WINNER IS PC";
  } else {
    cout << endl << "FINAL WINNER IS  NOBODY";
  }
}
int main() {
  srand((unsigned)time(NULL));
  int Number;
  cout << "\nNumber of Game";
  cin >> Number;
  GetRes(Number);
  return 0;
}
