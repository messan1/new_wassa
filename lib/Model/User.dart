class User {
  late String id;

  late String firstname;

  late String lastname;

  late String number;

  late String bith;

  late String email;

  late String role;

  User(
      {required this.firstname,
      required this.lastname,
      required this.email,
      required this.bith,
      required this.number,
      required this.role,
      required this.id});
}
