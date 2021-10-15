import 'dart:math';

class CalulatorBrain {
  CalulatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) return 'Overweight';
    if (_bmi > 18.5) return 'Normal';
    return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi >= 25)
      return 'Overweight Overweight Overweight Overweight Overweight Overweight';
    if (_bmi > 18.5)
      return 'Normal Normal Normal Normal Normal Normal Normal Normal';
    return 'Underweight Underweight Underweight Underweight Underweight Underweight Underweight';
  }
}
