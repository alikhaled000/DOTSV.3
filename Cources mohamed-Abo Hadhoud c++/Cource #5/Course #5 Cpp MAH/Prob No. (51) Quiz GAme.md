#include <cstdlib>
#include <ctime>
#include <iostream>
#include <string>

using namespace std;

enum enQuestionLevel { Easy = 1, Mid = 2, Hard = 3, Mix = 4 };
enum enOpertion { Add = 1, Sub = 2, Mul = 3, Div = 4, MixOp = 5 };

struct stQuizInfo {
  enOpertion operatorType;
  enQuestionLevel QuestionLevel;
  int Number1;
  int Number2;
  int CorrectAnswer;
  int UserAnswer;
};

int GenerateRandomNumber(int From, int To) {
  return rand() % (To - From + 1) + From;
}

enOpertion GetRandomOperation() {
  return (enOpertion)GenerateRandomNumber(1, 4);
}

// Logic to calculate the actual answer based on the operation
int Calculate(int Num1, int Num2, enOpertion Op) {
  switch (Op) {
  case Add:
    return Num1 + Num2;
  case Sub:
    return Num1 - Num2;
  case Mul:
    return Num1 * Num2;
  case Div:
    return (Num2 != 0) ? Num1 / Num2 : 0;
  default:
    return 0;
  }
}

char GetOpSymbol(enOpertion Op) {
  char symbols[] = {' ', '+', '-', '*', '/'};
  return symbols[Op];
}

void SetQuizNumbers(stQuizInfo &Quiz) {
  int Low, High;
  enQuestionLevel Level = (Quiz.QuestionLevel == Mix)
                              ? (enQuestionLevel)GenerateRandomNumber(1, 3)
                              : Quiz.QuestionLevel;

  if (Level == Easy) {
    Low = 1;
    High = 10;
  } else if (Level == Mid) {
    Low = 11;
    High = 50;
  } else {
    Low = 51;
    High = 100;
  }

  Quiz.Number1 = GenerateRandomNumber(Low, High);
  Quiz.Number2 = GenerateRandomNumber(Low, High);
}

void PlayGame() {
  short TotalRounds;
  cout << "How many rounds? (1-10): ";
  cin >> TotalRounds;

  cout << "Enter Level [1]Easy, [2]Mid, [3]Hard, [4]Mix: ";
  int Lvl;
  cin >> Lvl;

  cout << "Enter Operation [Add]+, [Sub]-, [Mul], [Div]/, [5]Mix: ";
  int Op;
  cin >> Op;

  short wins = 0, lose = 0;
  stQuizInfo Quiz;
  Quiz.QuestionLevel = (enQuestionLevel)Lvl;

  for (short i = 1; i <= TotalRounds; i++) {
    // Handle Mix Operation per round
    enOpertion CurrentOp =
        ((enOpertion)Op == MixOp) ? GetRandomOperation() : (enOpertion)Op;

    SetQuizNumbers(Quiz);
    Quiz.CorrectAnswer = Calculate(Quiz.Number1, Quiz.Number2, CurrentOp);

    cout << "\nRound [" << i << "/" << TotalRounds << "]\n";
    cout << Quiz.Number1 << " " << GetOpSymbol(CurrentOp) << " " << Quiz.Number2
         << " = ";
    cin >> Quiz.UserAnswer;

    if (Quiz.UserAnswer == Quiz.CorrectAnswer) {
      cout << "Correct! \a\n";
      wins++;
    } else {
      cout << "Wrong! The answer was: " << Quiz.CorrectAnswer << "\n";
      lose++;
    }
  }

  cout << "\n--- Final Result ---";
  cout << "\nWins: " << wins << " | Losses: " << lose;
  cout << (wins >= lose ? "\nResult: PASS :)" : "\nResult: FAIL :(") << endl;
}

int main() {
  srand((unsigned)time(NULL));
  char PlayAgain = 'Y';

  do {
    PlayGame();
    cout << "\nDo you want to play again? (Y/N): ";
    cin >> PlayAgain;
  } while (PlayAgain == 'Y' || PlayAgain == 'y');

  return 0;
}