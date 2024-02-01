void main(List<String> args) {
  //## 1. `if` `else` condition
  if (isRunning()) {
    print("Yes I am running");
  } else if (isWalking()) {
    print("Yes I am walking");
  } else {
    print("Nothing");
  }
  // Conditional expression with ternary operator
  var whatIsDoing = isRunning() ? "Running" : "Nothing";
  print("What he is doing -> $whatIsDoing");
  // if null condtional operator
  var nonNullValue = nullableString() ?? "Default Value For Null";
  print("What value return -> $nonNullValue");

  //## 2. switch
  var command = "OPEN";
  switch (command) {
    case "CLOSED":
      print("Closed");
    case "OPEN":
      print("Open");
    case "OPEN_B":
    case "OPEN_C":
      print("B Open or Closed");
    default:
      print("Nothing");
  }
  // expression switch
  var i = 1;
  var value = switch (i) { > 10 => 100, _ => 99 };
  print("Switch expression value - $value");
}

bool isRunning() => true;
bool isWalking() => true;
String? nullableString() => null;
