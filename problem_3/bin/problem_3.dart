import 'package:problem_3/problem_3.dart' as problem_3;

void main(List<String> arguments) {
  _nextGreatestElement([4, 5, 16, 7, 8]);
}

void _nextGreatestElement(List _givenList) {
  String result = "";
  for (var i = 0; i < _givenList.length; i++) {
    int elementOne = _givenList[i];
    if (i == _givenList.length - 1) {
      result = "${elementOne} -> -1";
    }

    for (var j = i + 1; j < _givenList.length; j++) {
      int elementTwo = _givenList[j];
      if (elementOne < elementTwo) {
        result = "${elementOne} -> ${elementTwo}";
        break;
      } else {
        result = "${elementOne} -> -1";
        break;
      }
    }
    print(result);
  }
}
