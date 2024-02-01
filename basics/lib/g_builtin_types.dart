void main(List<String> args) {
  //## 1. Number
  // in dart number have two flavor int, double (both 64 bit)
  // int = 1 , double = 3.41
  int helloIamInt = 1000;
  print(helloIamInt.isEven);
  print(helloIamInt.isOdd);

  double helloDouble = 234.545;
  print(helloDouble.ceilToDouble());

  //## 2. Strings
  String someText = "Some text in details";
  String someMoreText = 'Some more text';

  //## 3. Booleans
  bool doYouLoveLanguage = false;
  bool doYouLikeToSing = true;
  assert(doYouLikeToSing);

  //## 4. Records
  (String, String, {String c}) birdPair = ("Fluffy", "Duffy", c: "Tuffy");
  print(birdPair.$1);
  print(birdPair.c);

  (int x, int y, int z) point = (1, 2, 3);
  (int r, int g, int b) color = (1, 2, 3);
  print(point == color);

  ({int x, int y, int z}) point2 = (x: 1, y: 2, z: 3);
  ({int r, int g, int b}) color2 = (r: 1, g: 2, b: 3);
  print(point2 == color2); // Prints 'false'. Lint: Equals on unrelated types.

  //-- Collections                                --//
  //## 5. List

  var list = [1, 3, 4];
}
