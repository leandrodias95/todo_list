import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Adicone uma tarefa',
                    hintText: 'Estudar Flutter'
                  ),
                ),
              ),
              SizedBox(width: 8),
              ElevatedButton(onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff00d7f3),
                  padding: EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  )

                ),
                child: Icon(
                 Icons.add,
                  size: 30,
                  color: Colors.white
                ),
              )
            ],
          ),
        )
      )
    );
  }
}