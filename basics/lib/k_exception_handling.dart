void main(List<String> args) {
  try {
    errorThrower();
  } on KnownException {
    print("Its known exception");
    //rethrow; // notification for the exception
  } on Exception catch (_) {
    print("Any other Exception");
  } catch (_) {
    print("Any all other exception");
  } finally {
    print("Run on completion of try catch block");
  }
}

void errorThrower() => throw KnownException();

class KnownException extends Error {}
