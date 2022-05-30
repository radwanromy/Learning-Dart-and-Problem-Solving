import 'dart:math';

class DifferenceOfSquares {
  List<int> makeSquare(int number) {
    List<int> square = [];

    for (int i = 1; i <= number; i++) square.add(i);

    return square;
  }
  int squareOfSum(int number) {
    num squareSum;
    List<int> square = makeSquare(number);

    squareSum = square.fold(0, (previousValue, element) {
      return pow(element, 2);
    });

    return squareSum.toInt();
  }
  int sumOfSquares(int number) {
    num sumSquare;
    List<int> square = makeSquare(number);
    sumSquare = pow(
        square.fold(0, (previousValue, element) {
          return previousValue + element;
        }),
        2);
    return sumSquare.toInt();
  }
  int differenceOfSquares(int number) {
    int squareSum = squareOfSum(number);
    int sumSquare = sumOfSquares(number);
    return squareSum - sumSquare;
  }
}