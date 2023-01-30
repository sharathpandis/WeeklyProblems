import 'package:problem_5/problem_5.dart' as problem_5;

void main(List<String> arguments) {
  print('Hello world: ${problem_5.calculate()}!');
  print(_sum("1234", "1233333"));
}

String _sum(String num1, String num2) {
  // String num1 = "9999";
  // String num2 = "0000";
  int remaining = 0;
  int addingValue = 0;

  List<String> _result = [];
  var number1, number2;
  number1 = num1;
  number2 = num2;
  if (num1.length > num2.length) {
    number1 = num1;
    number2 = num2;
    // int length = number1.length - number2.length;
    // for (var i = 0; i < length; i++) {
    //   number2 = number2 + "0";
    // }
  } else if (num1.length < num2.length) {
    number2 = num1;
    number1 = num2;
    // int length = number2.length - number1.length;
    // for (var i = 0; i < length; i++) {
    //   number2 = number2 + "0";
    // }
  }
  int length = number1.length - number2.length;
  for (var i = number1.length - 1; i >= 0; i--) {
    int elementA = int.parse(number1[i]);

    int j = i - length;

    int elementB = j >= 0 ? int.parse(number2[j]) : 0;

    int ans = elementA + elementB + remaining;
    remaining = ans >= 10 ? 1 : 0;
    String sumValues = ans.toString();
    if (ans >= 10) {
      addingValue = i == 0 ? int.parse(sumValues) : int.parse(sumValues[1]);
    } else {
      addingValue = int.parse(sumValues);
    }
    _result.insert(0, addingValue.toString());
  }

  return _result.join();
}
