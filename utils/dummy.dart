class Person {
  late String firstName;
  late String lastName;
  late int age;
  final int _ll = 22;

  Person(this.firstName, this.lastName, this.age);

  // convenience method
  Person.minor(String first, String last) : this(first, last, 17);
}

void main() {
  Person pp = Person.minor("emeka", "onyeokoro");
  print(pp._ll);
  print(pp.age);
}
