# MobileAppsClassActivities
It's nothing, I just don't want to lose my work.

## Class Activity 1: Dart Building Blocks

Given the following readLineSync() function (from dart:io library) to read input from the command line or terminal:
'''
import 'dart:io';
void main() {
  stdout.write("Input:");
  var input = stdin.readLineSync();
  stdout.write(input + "\n");
}
'''
1. You are required to get the input from user. The input can be any size (unlimited values) but only with integer and double data type. For example:

Input: 21, 23, 12, 45, 39, 40
Input: 2.2, 45, 3.6, 6.6, 70

2. Then split the input into a list by using .split() function. You can refer to Dart API on split function for more details on implementation. Once you have the list, perform mathematical operation on the values. For example:

Input: 21, 23, 12, 45, 39, 40
Summation: 180
Average: 30
Division: 0.00000108
Subtraction: -138
Multiplication: 406879200

Code: (https://github.com/hannahhuda/MobileAppsClassActivities/blob/main/CLA1-1814022.dart)

## Class Activity 2: Dart Object-Oriented Programming

Based on the previous class activity (Dart Building Blocks) convert your code implementation to Object-Oriented approach. Your implementation must include the following requirements:

    Appropriate local variables or properties and methods or functions.
    There are setters and getters for each local variable or property declared.
    There are calculation and display methods.
    Local variables or properties must be encapsulated with private modifier.
    Include appropriate comments.
    Separate file for class (calculation.dart) and execution (<CLA2-matricno>.dart)
    
 Code: (https://github.com/hannahhuda/MobileAppsClassActivities/blob/main/CLA%202-1814022.dart) & (https://github.com/hannahhuda/MobileAppsClassActivities/blob/main/calculation.dart)
    
 ## Class Activity 3: Flutter forms and gentures
 
 Based on the given [BMI calculator](https://github.com/hannahhuda/bmi). You need to modify the existing code and implement the following widgets:

    1. Flutter Form - Use Form widget.
    2. Flutter Form - Weight and Height (TextFormField)
    3. Flutter Form - Gender using Radio Button (FormField)
    4. Form Validation - validator with Error String and Focus Node to highlight the invalid input.
    
 Code: (https://github.com/hannahhuda/MobileAppsClassActivities/blob/main/1814022.dart)
