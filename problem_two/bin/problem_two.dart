import 'package:problem_two/problem_two.dart' as problem_two;

void main(List<String> arguments) {
  // print('Hello world: ${problem_two.calculate()}!');
  getLettersCount("Helloworld");
}

void getLettersCount(String given) {
  List<String> characters = [];

  List<String> givenCharacters = given.split('');
  // print(givenCharacters);

  String character1 = "";
  String character2 = "";
  int count = 0;
  for (var i = 0; i < givenCharacters.length; i++) {
    if (characters.contains(givenCharacters[i]) == false) {
      character1 = givenCharacters[i];
      characters.add(character1);
      count = 0;
    } else {
      continue;
    }

    for (var j = 0; j < givenCharacters.length; j++) {
      character2 = givenCharacters[j];
      if (character1 == character2) {
        count++;
      }
    }
    print("${character1}-${count}");
  }

  // print(characters);
}
