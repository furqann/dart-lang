import 'SpacecraftClass.dart';

void main(List<String> args) {
  //without optional new keyword as per dart 2
  var apollo_11 = Spacecraft("Apollo Eleven", new DateTime(1960));

  //with optional new keyword as per dart 2
  var apollo_7 = new Spacecraft("Apollo Seven", new DateTime(1948));

  //Named constructor
  var apollo_1 = Spacecraft.unlaunched("Apollo One");

  apollo_11.describe();
  apollo_7.describe();
  apollo_1.describe();
}
