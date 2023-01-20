import 'package:problem_4/problem_4.dart' as problem_4;

void main(List<String> arguments) {
  // print('Hello world: ${problem_4.calculate()}!');
  print(_checkIp4Address("255.0.18.22"));
}

String _checkIp4Address(String ip4Address) {
  List address = ip4Address.split(".");
  String result = "";
  for (var i = 0; i < address.length; i++) {
    int element = int.parse(address[i]);
    if (element > 255) {
      result = "not Valid";
      break;
    } else {
      result = "Valid";
    }
  }
  return result;
}
