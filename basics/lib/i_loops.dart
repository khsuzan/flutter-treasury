void main(List<String> args) {
  // for in loop
  for (var number in [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) {
    if (number == 2) {
      continue; // skip/jump next the when condition met
    }
    if (number == 6) {
      break; // break the loop and exit
    }
    print(number);
  }
  // for loop
  for (var i = 0; i < 3; i++) {
    print(i);
  }
  // for in loop with capture
  List<Candidate> candidates = [Candidate(name: "Kawsar", yearsExperience: 3)];
  for (final Candidate(:name, :yearsExperience) in candidates) {
    print('$name has $yearsExperience of experience.');
  }
  // while loop (first check condition then run while block)
  var i = 0;
  while (i <= 4) {
    print(i);
    i++;
  }
  // do while (run do block first then check condition)
  do {
    print(i);
    i--;
  } while (i >= 0);
}

class Candidate {
  Candidate({required this.name, required this.yearsExperience});
  final String name;
  final int yearsExperience;
}
