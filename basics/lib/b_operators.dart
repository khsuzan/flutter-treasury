void main(List<String> args) {
  //## 1. Arithmetic operators
  assert(2 + 3 == 5); // plus / add operator
  assert(3 - 3 == 0); // minus / subtract operator
  assert(2 * 3 == 6); // multiply opeator
  assert(50 / 10 == 5); // division/ divide operator
  assert(10 ~/ 3 == 3); // divide and convert int to lower limit
  assert(10 % 3 == 1); // modulo operator

  //## 2. Increment/ Decrement operators
  var a = 3; // if we use, a++ assign increment and assign it to `a`
  assert(a++ == 3); // compare first then +1 next
  assert(a-- == 4); // same compare first then -1 next
  var b = 10;
  var c = --b; // b and c both 9 before assign c
  assert(c == 9); // b = 9 & c = 9
  var d = b--; // d assign 9 and then subtract b by 1 & b = 8 here
  assert(d == 9);
  assert(b == 8);

  final int someFinalInt = 10;
  //someFinalInt++; can't do this because its a final variable

  //## 3. comparison operators
  assert(2 == 2); // equal
  assert(2 != 3); // not equal
  assert(3 > 2); // greater then
  assert(2 < 3); // less then
  assert(3 >= 3); // greate or equal
  assert(2 <= 3); // less or equal

  //## 4. Type related operators (casting, compare)
  dynamic ten = 10; // dynamic casted as any type
  assert(ten is int); // checking if the value is type of int
  assert((ten as int)
      .isEven); // we are casting ten as int, so that int method are avail like isEven

  //## 5. Assignment operator (arithmetic combine)
  int luckyNumber = 10; // suppose initialize with wrong number
  luckyNumber = 100; // assign operator assign with rigth number
  assert(luckyNumber == 100);

  luckyNumber *= 10; // assign 100 at previous by multiply with 10
  assert(luckyNumber == 1000);

  double myLuckyPoint = 20.5;
  myLuckyPoint /= 10; // by divide always return a double type
  assert(myLuckyPoint == 2.05);

  //## 6. Logical operators (ascii)
  assert(!false == true); // invert the boolean with !
  assert((1 + 2 == 3) || (6 - 2 == 4)); // or operator
  assert((4 + 4 == 8) && (6 + 4 == 10)); // and operator
  // bitwise
}
