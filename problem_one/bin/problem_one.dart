import 'package:problem_one/problem_one.dart' as problem_one;

void main(List<String> arguments) {
  // print('Hello world: ${problem_one.calculate()}!');
  print(_twoSum([3, 3], 6));
}

List<int> _twoSum(List<int> num, int target) {
  List<int> _result = [];
  for (var i = 0; i < num.length; i++) {
    int element1 = num[i];
    for (var j = 0; j < num.length; j++) {
      int element2 = num[j];
      int sum = element1 + element2;
      bool _elementsPosition1 =
          // num.indexOf(element1) != num.indexOf(element2) ? true : false;
          i != j ? true : false;
      bool _elementsPosition2 = i != num.lastIndexOf(element2) ? true : false;
      if (sum == target && _elementsPosition1) {
        _result.add(i);
        _result.add(j);
        return _result;
      } else if (sum == target && _elementsPosition2) {
        _result.add(i);
        _result.add(num.lastIndexOf(element2));
        return _result;
      }
    }
  }
  return _result;
}
