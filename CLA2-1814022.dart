import 'dart:io';
import 'calculation.dart';

//Appropriate local variables or properties and methods or functions.
//There are setters and getters for each local variable or property declared.
//There are calculation and display methods.
//Local variables or properties must be encapsulated with private modifier.
//Include appropriate comments.
//Separate file for class (calculation.dart) and execution (<CLA2-matricno>.dart

void main() {
  stdout.write("Input: "); //21, 23, 12, 45, 39, 40
  var input = stdin.readLineSync();
  List<String> lstring = input.split(", ");
  List<num> list = lstring.map(num.parse).toList();
  print(list);

  calculation.calcSummation(list);
  calculation.calcAverage(list);
  calculation.calcDivision(list);
  calculation.calcSubraction(list);
  calculation.calcMultiplication(list);
  display();
}
