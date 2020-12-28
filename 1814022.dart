import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Center(
          child: MyCustomForm(),
        ),
      ),
    );
  }
}

enum Gender { Male, Female }

//create a form widget
class MyCustomForm extends StatefulWidget {
  MyCustomForm({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  double _weight = 0.0;
  double _height = 0.0;
  double _bmi = 0.0;

  void _setWeight(String weight) {
    setState(() {
      _weight = double.tryParse(weight) ?? 0.0;
    });
  }

  void _setHeight(String height) {
    setState(() {
      _height = double.tryParse(height) ?? 0.0;
    });
  }

  void _calculateBMI() {
    setState(() {
      _bmi = (_weight / pow(_height, 2)) * 10000;
    });

    if (_bmi < 18.5) {
      _showDialog('You are underweight!');
    } else if (_bmi >= 18.8 && _bmi <= 24.9) {
      _showDialog('You are having normal weight. Well done!');
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      _showDialog('You are overweight!');
    } else if (_bmi >= 30) {
      _showDialog('You are obese. Please watch your diet!');
    }
  }

  String _gender() {
    if (_radioValue == Gender.Male) {
      return 'Gender: Male';
    } else {
      return 'Gender: Female';
    }
  }

  void _showDialog(String status) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: new Text("BMI Status", textAlign: TextAlign.center),
              content: new Text(_gender() + '\n\n' + status),
              actions: <Widget>[
                new FlatButton(
                  child: new Text("Close"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ]);
        });
  }

  final _formKey = GlobalKey<FormState>();
  final weightFocusNode = FocusNode();
  final heightFocusNode = FocusNode();
  Gender _radioValue = Gender.Male;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Weight (kg): '),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter a value';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      _setWeight(value);
                    },
                    focusNode: weightFocusNode,
                    keyboardType: TextInputType.number,
                    onTap: () {
                      FocusScope.of(context).unfocus();
                      FocusScope.of(context).requestFocus(weightFocusNode);
                    },
                  )),
              Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Height (cm): '),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter a value';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      _setHeight(value);
                    },
                    keyboardType: TextInputType.number,
                    focusNode: heightFocusNode,
                    onTap: () {
                      FocusScope.of(context).unfocus();
                      FocusScope.of(context).requestFocus(heightFocusNode);
                    },
                  )),
              //child: FormField(
              SingleChildScrollView(
                  child: Column(children: <Widget>[
                new Text("Gender"),
                ListTile(
                    title: const Text('Male'),
                    leading: Radio(
                        value: Gender.Male,
                        groupValue: _radioValue,
                        onChanged: (Gender value) {
                          setState(() {
                            _radioValue = value;
                          });
                        })),
                ListTile(
                    title: const Text('Female'),
                    leading: Radio(
                        value: Gender.Female,
                        groupValue: _radioValue,
                        onChanged: (Gender value) {
                          setState(() {
                            _radioValue = value;
                          });
                        }))
              ])),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _calculateBMI();
                    }
                  },
                  child: Text('Submit'),
                ),
              )
            ]));
  }
}
