import 'dart:io';
import 'calculation.dart';

//Appropriate local variables or properties and methods or functions.
//There are setters and getters for each local variable or property declared.
//There are calculation and display methods.
//Local variables or properties must be encapsulated with private modifier.
//Include appropriate comments.
//Separate file for class (calculation.dart) and execution (<CLA2-matricno>.dart

void main() {
  calculation calc = new calculation();
  calc.input();
  calc.setSum();
  calc.setAvg();
  calc.setDivision();
  calc.setSubtract();
  calc.setMultiply();
  calc.display();
}
