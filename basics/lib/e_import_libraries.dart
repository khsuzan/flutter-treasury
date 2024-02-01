import 'utitlity/utility.dart';
import 'dart:math';

void main(List<String> args) {
  //## 1. Import from its project
  var desc = "We love our country Bangladesh ";
  var formattedDesc = Utility.removeSpace(desc);
  assert(formattedDesc == "We love our country Bangladesh");

  //## 2. Imported from library dart:math
  var two = 2;
  var fourteen = 14;
  assert(14 ==
      max(two,
          fourteen)); //  max() is a function from dart:math, compare and return the large number among them
  var powered = pow(3, 2);
  assert(9 == powered);
}
