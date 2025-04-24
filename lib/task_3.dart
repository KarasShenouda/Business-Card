import 'package:flutter/material.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do Notes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TodoList(),
    );
  }
}

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final List<TodoItem> _todoItems = [];

  void _addTodoItem(String task) {
    if (task.isNotEmpty) {
      setState(() {
        _todoItems.add(TodoItem(task));
      });
    }
  }

  void _deleteTodoItem(int index) {
    setState(() {
      _todoItems.removeAt(index);
    });
  }

  void _toggleTodoItem(int index) {
    setState(() {
      _todoItems[index].toggleCompleted();
    });
  }

  void _promptAddTodoItem() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AddTodoDialog(
          onAdd: (task) {
            _addTodoItem(task);
            Navigator.of(context).pop();
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do Notes'),
      ),
      body: ListView.builder(
        itemCount: _todoItems.length,
        itemBuilder: (context, index) {
          return TodoListItem(
            item: _todoItems[index],
            onDelete: () => _deleteTodoItem(index),
            onToggle: () => _toggleTodoItem(index),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _promptAddTodoItem,
        tooltip: 'Add Task',
        child: Icon(Icons.add),
      ),
    );
  }
}

class TodoItem {
  final String task;
  bool isCompleted;

  TodoItem(this.task) : isCompleted = false;

  void toggleCompleted() {
    isCompleted = !isCompleted;
  }
}

class TodoListItem extends StatelessWidget {
  final TodoItem item;
  final VoidCallback onDelete;
  final VoidCallback onToggle;

  TodoListItem(
      {required this.item, required this.onDelete, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        item.task,
        style: TextStyle(
          decoration: item.isCompleted
              ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
      trailing: Wrap(
        children: [
          IconButton(
            icon: Icon(
              item.isCompleted
                  ? Icons.check_box
                  : Icons.check_box_outline_blank,
              color: item.isCompleted ? Colors.green : null,
            ),
            onPressed: onToggle,
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: onDelete,
          ),
        ],
      ),
    );
  }
}

class AddTodoDialog extends StatefulWidget {
  final Function(String) onAdd;

  AddTodoDialog({required this.onAdd});

  @override
  _AddTodoDialogState createState() => _AddTodoDialogState();
}

class _AddTodoDialogState extends State<AddTodoDialog> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add a new task'),
      content: TextField(
        controller: _textEditingController,
        autofocus: true,
        onSubmitted: (val) => _submit(),
        decoration: InputDecoration(
          hintText: 'Enter task here',
        ),
      ),
      actions: [
        TextButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text('Add'),
          onPressed: _submit,
        ),
      ],
    );
  }

  void _submit() {
    final task = _textEditingController.text;
    widget.onAdd(task);
  }
}
