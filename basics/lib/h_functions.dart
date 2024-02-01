import 'dart:math';

void main(List<String> args) {
  // Functions are first level citizens in function
  sum(1, 2); // normal function
  sum2(2, 3); // normal function type defined
  sum3(first: 5, second: 6); // named parameterize function
  sum4(5, 6); // optional parameterize function
  sum4(5, 6, "Sum and return"); // optional parameterize function
  callable(() {}); // anonymous function `(){}`
}

// Shorthand function call using =>
void doVoid() => pow(3, 3);
// Return type can be ommited but not recommended
doVoidAlt() => pow(3, 3);

sum(firstValue, secondValue) {
  return firstValue + secondValue;
}

sum2(int firstValue, int secondValue) {
  return firstValue + secondValue;
}

// Named parameterize function
sum3({required int first, required int second}) {
  return first + second;
}

// Optional parameterize function
sum4(int first, int second, [String? message]) {
  return first + second;
}

callable(Function param) {
  param.call();
}
