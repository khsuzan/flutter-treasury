void main(List<String> args) {
  //-- the proof concepts of declare a variable and initialize with a value --//

  //##1. string type
  var intro = 'Hi I am, '; // type inference, string written in single quote
  var name =
      "Kawsar Hossain Suzan"; //string can be written also in double quote
  String country = "Bangladesh"; // type declared
  // country = 100; //its never possible
  print(
      "$intro $name from $country."); // semicolon must be entered at the end here

  //## 2. integer or number type
  var age = 24; // type inference
  int bornIn = 2000; // type declared
  print(
      "I am at $age, from $bornIn."); // semicolon must be entered at the end here

  //## 3. float or double type
  var height = 172.7; // type inference
  double heightInFt = 5.67; // type declared
  print("I am ${height}cm(${heightInFt}ft) long.");

  //## 4. dynamic,
  dynamic bankcash = 2000; // any type of value can be assign now and then
  bankcash = "two thousand"; // string assign but before was int
  print(bankcash);

  //## 5. nullablility
  var nonNullable = "A non nullable variable";
  //nonNullable = null; // cant use like this
  print(nonNullable);

  int? nullableAge = 40; // nullable variable
  nullableAge = null;
  print(nullableAge); // nullable value
  print(nullableAge?.abs() ?? 0); // if nullable then default value 0

  //## 6. value initialization
  String withoutInitilize;
  // print(withoutInitilize); //its not possible, non nullable cant use without intialize

  withoutInitilize =
      "Init with dummy"; // after initialize anytime, it can be use
  print(withoutInitilize);

  String?
      nullableWithoutInit; // nullable always initialize with null by default
  print(nullableWithoutInit);

  //## 7. late modifier
  late String lateVariable; // late variable only Top-Level or inside of class
  // print(lateVariable); // late cant use without assign any variable
  lateVariable = "Now it is assign with a string";
  print(lateVariable);

  //-- ------------------------------------------------------------------------
  // Dart collection api types you can come serially by number or can
  // read by writting sequence, because next 8, 9 have used the 10 (Map)
  // as example and More about this will be discuss, Collections in separate
  // --------------------------------------------------------------------------

  //## 10. Map (Lets assume as special type store value with key)
  var simpleMap = {
    'mapKey': 'mapValue',
    //'mapKey': 'mapValue different', // we cant use same key though value different
    'dart-version': 1.3
  }; // can keep value with their unique key, keys must be unique in a map
  print(simpleMap);

  //## 8. final
  final how = "good";
  // how = "bad"; // not possible after assign
  print(how);
  final String anotherFinalValue;
  anotherFinalValue = "Intialize first final"; // this is possible
  //anotherFinalValue = "Second time assign value for first final"; // but not this
  print(anotherFinalValue);

  final aMapButFinal = {"who": "me"};
  aMapButFinal["who"] = "them"; // can change object value though final
  print(aMapButFinal);

  //## 9. const variable (compile time)
  const who = "me";
  // who = "he";
  print(who);
  const aMapButConst = {"who": "me"};
  // aMapButConst["who"] = "Him"; // not possible because its const
  print(aMapButConst);
}
