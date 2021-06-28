import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  String message = '';
  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  double calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi;
  }

  String getResult() {
    if (calculateBmi() >= 25) {
      print(_bmi);
      return 'Overweight';
    } else if (calculateBmi() > 18.5) {
      print(_bmi);
      return 'Normal';
    } else {
      print(_bmi);
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      message = 'overweight';
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      message = 'normal';
      return 'You have a normal body weight. Good job!';
    } else {
      message = 'underweight';
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
