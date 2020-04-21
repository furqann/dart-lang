class Spacecraft {
  String name;
  DateTime launchDate;
  //There are two other ways to create constructors
  //with factory keyword and one with const
  //https://dart.dev/guides/language/language-tour#constant-constructors

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here.
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  // use ? to avoid exception.
  int get launchYear =>
      launchDate?.year; // read-only non-final property

  /// For documentation natured comments
  void describe() {
    //Using $ sign, access the property directly.
    print('Spacecraft: $name');
    if (launchDate != null) {
      int years =
          DateTime.now().difference(launchDate).inDays ~/
              365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}