// ignore_for_file: unnecessary_type_check

void main(List<String> args) {
  //## 1. `abstract` modifier
  // var abstractClass = AnAbstractClass(); // not possible
  var abstractClassChild = ChildClass(); // possible
  assert(abstractClassChild is AnAbstractClass);

  //## 2. `as` keyword
  // use to typecase any value like dynamic but maybe int
  dynamic maybeInt = "100";
  assert((maybeInt as int).isEven);

  //## 3. `assert` statement use to match true condition
  // if false throw error on debug console
  assert(1 == 1, "Optional message can be added");

  //## 4. `async` modifier
  // use to make a regular function to asynchronous function
  void calculate() async {}

  //## 5. `await` modifier
  // use inside of asynchronous funtion to return a result from future or stream
  void fetch() async {
    await fetchInternetData();
  }
}

// abstract use to abstract a class, abstract class cant be
// instantiate but can be extend
abstract class AnAbstractClass {}

class ChildClass extends AnAbstractClass {}

Future<int> fetchInternetData() async {
  return Future.delayed(Duration.zero);
}
