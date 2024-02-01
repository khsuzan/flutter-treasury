void main(List<String> args) {
  // @Deprecated meta annotation to annotate with message
  // @deprecated meta annotation to annotate without message
  // @Convert is a custom annoatation that we can create as our need
}

@Deprecated("Use NewFeature instead") // deprecate annoation with message
class AnOldFeature {}

@deprecated // depreacate anno without message
class AnMostOldFeature {}

@Convert(10, String)
class NewFeature {}

class Convert {
  final int value;
  final Type convertType;
  const Convert(this.value, this.convertType);
}
