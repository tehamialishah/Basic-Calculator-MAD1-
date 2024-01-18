import 'dart:io';

void main(){

  print('Enter Your Values\n(1st value, operator(+,-,*,/), 2nd value and press Enter for Result)');

int value1 = int.parse(stdin.readLineSync()!);
var op = stdin.readLineSync()!;
int value2 = int.parse(stdin.readLineSync()!);

Calculator calculator = Calculator(value1,op,value2);
calculator.calculatorCall();

}


class Calculator{

var value1;

var op;

var value2;

Calculator(this.value1,this.op,this.value2);

void calculatorCall(){

  if(op == '+'){

      var addition = value1+value2;

      print('Your Calculation is "Addition" ($value1 $op $value2)\nYour Calculated Value result is $addition');

  }
  else if(op == '-'){

      var subtraction = value1-value2;

      print('Your Calculation is "Subtraction" ($value1 $op $value2)\nYour Calculated Value result is $subtraction');

  }  
  else if(op == '*'){

      var multiplication = value1*value2;

      print('Your Calculation is "Multiplication" ($value1 $op $value2)\nYour Calculated Value result is $multiplication');

  }
  else if(op == '/'){

      var division = value1/value2;

      print('Your Calculation is "Division" ($value1 $op $value2)\nYour Calculated Value result is $division');

  }
  else{

    print('Your Calculation is "Wrong" ($value1 $op $value2)\nTry Again with Correct Values');
  }
}

}