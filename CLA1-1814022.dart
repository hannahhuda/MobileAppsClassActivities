import 'dart:io';

void main() {
  stdout.write("Input: ");

  var input = stdin.readLineSync();

  List<String> lstring = input.split(", ");
  List<num> list = lstring.map(num.parse).toList();

  var sum = 0, avg = 0, div = 1.0, multiply = 0, sub = 0;
  //var finaldiv = 0;
  for (int i = 0; i < list.length; ++i) {
    sum += list[i];
  }
  avg = sum ~/ list.length;

  div = list[0] / div;
  for (int i = 1; i < list.length; i++) {
    div = div / list[i];
  }

  sub = list.reduce((value, element) => value - element);
  multiply = list.reduce((value, element) => value * element);

  stdout.write("Summation:  ${sum} \n");
  stdout.write("Average: ${avg} \n");
  stdout.write("Division: ${div.toStringAsFixed(8)} \n");
  stdout.write("Subtraction: ${sub} \n");
  stdout.write("Multiplication: ${multiply} \n");
}
