import 'dart:math';

class Calculator {
  final int height;
  final int weight;

  double _bmi;

  Calculator({this.height, this.weight});

  String calcBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return '太り過ぎ';
    } else if (_bmi > 18.5) {
      return '普通';
    } else {
      return '痩せすぎ';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return '食べるな';
    } else if (_bmi > 18.5) {
      return 'その調子';
    } else {
      return '食べよ';
    }
  }
}
