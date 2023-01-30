import 'package:problem_4/problem_4.dart' as problem_4;

void main(List<String> arguments) {
  // print('Hello world: ${problem_4.calculate()}!');
  print(_checkIp4Address("255.0.1.22"));
}

String _checkIp4Address(String ip4Address) {
  if (ip4Address.contains(RegExp(r'[A-Z]')) ||
      ip4Address.contains(RegExp(r'[a-z]'))) {
    return "Invalid";
  }
  List address = ip4Address.split(".");
  String result = "";
  for (var i = 0; i < address.length; i++) {
    int element = int.parse(address[i]);
    if (element > 255) {
      result = "Invalid";
      break;
    } else {
      result = "Valid";
    }
  }
  return result;
}
