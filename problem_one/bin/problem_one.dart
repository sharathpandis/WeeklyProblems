import 'package:problem_one/problem_one.dart' as problem_one;

void main(List<String> arguments) {
  print('Hello world: ${problem_one.calculate()}!');
  print(_twoSum([2, 3, 6, 7, 8, 7, 10], 12));
}

List<int> _twoSum(List<int> num, int target) {
  // num = [2, 7, 11, 15];
  // target = 9;
  List<int> _result = [];
  for (var i = 0; i < num.length; i++) {
    int element1 = num[i];
    for (var j = 0; j < num.length; j++) {
      int element2 = num[j];
      int sum = element1 + element2;
      bool _elementsPosition1 =
          num.indexOf(element1) != num.indexOf(element2) ? true : false;

      bool _elementsPosition2 =
          num.indexOf(element1) != num.lastIndexOf(element2) ? true : false;
      if (sum == target && _elementsPosition1) {
        _result.add(num.indexOf(element1));
        _result.add(num.indexOf(element2));
        return _result;
      } else if (sum == target && _elementsPosition2) {
        _result.add(num.indexOf(element1));
        _result.add(num.lastIndexOf(element2));
        return _result;
      }
    }
  }
  return _result;
}
