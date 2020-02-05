class User {
  final int id;
  final String name;
  final String imageUrl;

  User({
    this.id,
    this.name,
    this.imageUrl,
  });
}

List<User> users = [
  User(id: 1, name: 'Greg', imageUrl: 'assets/images/greg.jpg'),
  User(id: 2, name: 'James', imageUrl: 'assets/images/james.jpg'),
  User(id: 3, name: 'John', imageUrl: 'assets/images/john.jpg'),
  User(id: 4, name: 'Olivia', imageUrl: 'assets/images/olivia.jpg'),
  User(id: 5, name: 'Sam', imageUrl: 'assets/images/sam.jpg'),
  User(id: 6, name: 'Sophia', imageUrl: 'assets/images/sophia.jpg'),
  User(id: 7, name: 'Steven', imageUrl: 'assets/images/steven.jpg')
];
