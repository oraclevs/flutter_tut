import 'dart:io';

//  Todo cli app
/*
 creating a todo
 updating a todo
 removing a todo
 mark as done
 
 */
String todoFilePath = "todo.txt";

void main(List<String> arguments) async {
  print('Welcome to our Todo app ');

  List ourAgs = [
    'create_td',
    'delete_td',
    'edit_td',
    'mark_as_done',
    'add_td',
    'list',
  ];
  //  showing the use the available commands
  if (arguments.isNotEmpty && arguments.first == "help") {
    print('use this command to perform operations in our Todo app');
    print(ourAgs);
    print("Example  == ./Todo create_td MyFirst_Todo.");
    return;
  }
  //  check if the arguments are present
  if (arguments.length < 2) {
    print('Please pass an argument');
    return;
  }

  String command = arguments[0];
  String todoText = arguments[1];

  switch (command) {
    case "create_td":
      await createTodo(todoText: todoText);
      break;
    case "add_td":
      await addTodo(todoText: todoText);
      break;
    case "delete_td":
      await remove(index: int.parse(todoText));
      break;

    case "edit_td":
      updateTodo(index: int.parse(todoText));
      break;
    case "mark_as_done":
      await markAsDone(index: int.parse(todoText));
      break;
    case "list":
      await listAll();
    default:
      print("Unknown command");
  }
}

Future createTodo({required String todoText, bool formatted = true}) async {
  File file = File(todoFilePath);
  if (formatted) {
    await file.writeAsString("todo:$todoText --- completed:false\n");
  } else {
    await file.writeAsString("$todoText\n");
  }
}

Future addTodo({required String todoText}) async {
  File file = File(todoFilePath);
  await file.writeAsString(
    "todo:$todoText --- completed:false\n",
    mode: FileMode.append,
    flush: true,
  );
}

Future listAll({bool withPrint = true}) async {
  File file = File(todoFilePath);
  List todos = await file.readAsLines();
  if (withPrint) {
    print("\n\nHere is a list of all your Todos");
    for (int i = 0; i < todos.length; i++) {
      print("No.$i ${todos[i]}");
    }
  }
  return todos;
}

Future updateTodo({required int index}) async {}

Future markAsDone({required int index}) async {
  List todos = await listAll(withPrint: false);
  String updatedTodo = todos[index].toString().replaceAll("false", "true");
  todos.removeAt(index);
  todos.insert(index, updatedTodo);
  createTodo(todoText: todos.join("\n"), formatted: false);
}

Future remove({required int index}) async {
  List todos = await listAll(withPrint: false);
  todos.removeAt(index);
  createTodo(todoText: todos.join("\n"), formatted: false);
}
