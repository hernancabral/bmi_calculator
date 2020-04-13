import 'dart:math';

class Calculator {

  Calculator({this.weight, this.height});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI(){
    double _bmi = weight / pow(height/100, 2);
    this._bmi = _bmi;
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Sobrepeso";
    } else if (_bmi >=18.5) {
      return "Normal";
    } else {
      return "Bajo peso";
    }
  }
}