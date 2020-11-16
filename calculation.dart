import 'dart:io';

//class declaration
class calculation {
  //double sum = 0;
  //double avg = 0;
  //double division = 1.0;
  //double multiply = 0;
  //double subtract = 0;

  calculation.calcSummation(list) {
    for (int i = 0; i < list.length; ++i) {
      sum += list[i];
    }
  }

  calculation.calcAverage(list) {
    avg = sum / list.length;
  }

  calculation.calcDivision(list) {
    division = list[0] / division;
    for (int i = 1; i < list.length; i++) {
      division = division / list[i];
    }
  }

  calculation.calcSubraction(list) {
    subtract = list.reduce((value, element) => value - element);
  }

  calculation.calcMultiplication(list) {
    multiply = list.reduce((value, element) => value * element);
  }

  //setter sum
  void set sum(list) {
    sum = 0;
  }

  //getter sum
  double get sum {
    return sum;
  }

  //setter average
  void set avg(list) {
    avg = 0;
  }

  //getter average
  double get avg {
    return avg;
  }

  //setter division
  void set division(list) {
    division = 1.0;
  }

  //getter division
  double get division {
    return division;
  }

  //setter multiply
  void set multiply(list) {
    multiply = 0;
  }

  //getter multiply
  double get multiply {
    return multiply;
  }

  //setter subtraction
  void set subtract(list) {
    subtract = 0;
  }

  //getter subtraction
  dynamic get subtract {
    return subtract;
  }
}

void display() {
  stdout.write("Summation: $calculation.sum \n");
  stdout.write("Average: $calculation.avg \n");
  stdout.write("Division: $calculation.division \n");
  stdout.write("Subtraction: $calculation.subtract \n");
  stdout.write("Multiplication: $calculation.multiply \n");
}
