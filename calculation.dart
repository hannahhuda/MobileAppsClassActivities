import 'dart:io';

//class declaration
class calculation {
  //private modifier
  dynamic _list;
  var _sum;
  var _avg;
  var _division;
  var _multiply;
  var _subtract;

  void input() {
    stdout.write("Input: ");
    var input = stdin.readLineSync();
    dynamic ltemp = input.split(", ");
    dynamic ltemp1 = ltemp.map(int.parse).toList();
    _list = ltemp1;
  }

  //setter sum
  void setSum() {
    _sum = 0;
    for (int i = 0; i < _list.length; ++i) {
      _sum += _list[i];
    }
  }

  //getter sum
  dynamic getSum() {
    return _sum;
  }

  //setter average
  void setAvg() {
    _avg = 0;
    _avg = _sum ~/ _list.length;
  }

  //getter average
  dynamic getAvg() {
    return _avg;
  }

  //setter division
  void setDivision() {
    _division = 1.0;
    _division = _list[0] / _division;
    for (int i = 1; i < _list.length; i++) {
      _division = _division / _list[i];
    }
  }

  //getter division
  dynamic getDivision() {
    return _division;
  }

  //setter multiply
  void setMultiply() {
    _multiply = 0;
    _multiply = _list.reduce((value, element) => value * element);
  }

  //getter multiply
  dynamic getMultiply() {
    return _multiply;
  }

  //setter subtraction
  void setSubtract() {
    _subtract = 0;
    _subtract = _list.reduce((value, element) => value - element);
  }

  //getter subtraction
  dynamic getSubtract() {
    return _subtract;
  }

  void display() {
    print("\nSummation: ${getSum()} \n");
    print("Average: ${getAvg()} \n");
    print("Division: ${getDivision().toStringAsFixed(8)} \n");
    print("Subtraction: ${getSubtract()} \n");
    print("Multiplication: ${getMultiply()} \n");
  }
}
