// • Session 5: Lists, Maps, basic operations

void main() {
  List collections = ['apple', 'orange', 'John', 'Mike', 3, 7, 4.6];
  print(collections);

  //  check the length of the list
  print("the length of the list is ${collections.length}");

  //  check if the list is empty or not.
  print('is list empty ${collections.isEmpty}');
  print('is list not empty ${collections.isNotEmpty}');

  //  accessing elements in the list.
  print(collections[0]);
  print(collections.first);
  print(collections.last);
  print(collections[collections.length - 1]);

  // adding to the list
  collections.add('new added value');
  print(collections);

  //  editing the list
  collections[0] = "Master";
  print(collections);

  //  removing from the list (remove by value)
  collections.remove('Master');
  print(collections);
  // remove by index
  collections.removeAt(0);
  print(collections);

  //  Map operations
  Map user = {
    'name': 'Mike',
    'age': 25,
    'course': 'Flutter',
    'hobby': 'Coding',
  };
  print(user);

  //  adding a map
  user['isActive'] = true;
  print(user);

  //  editing a map
  user['name'] = 'John';
  print(user);

  //  access a field in the map
  print('my name is ${user['name']}');

  // removing from the map
  user.remove('name');
  print(user);
}
