import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int? number) {
    int armNum = 0;

    number.toString().split('').fold(armNum, (previousValue, element) {
      return pow(int.parse(element), number.toString().length);
    });
    return armNum == number ? true : false;
  }
}