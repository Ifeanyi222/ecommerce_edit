class User {
  final String name;
  final String email;
  final DateTime joinedDate;
  final String location;

  User({
    required this.name,
    required this.email,
    required this.joinedDate,
    required this.location,
  });
}

void main() {
  // Creating an instance of User class
  User user1 = User(
    name: 'Nwokedike Linus',
    email: 'linusify@ymail.com',
    joinedDate: DateTime(2024, 5, 21),
    location: 'Anambra, Nigeria',
  );

  // Printing details of the user
  print(
      'User 1: ${user1.name}, Email: ${user1.email}, Joined Date: ${user1.joinedDate}, Location: ${user1.location}');
}
