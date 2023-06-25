import 'package:flutter/material.dart';
import 'package:laboratorio_02/app/view/components/shape.dart';
import 'package:laboratorio_02/app/view/task_list/task_list_page.dart';
import 'package:laboratorio_02/app/view/components/h1.dart';



class SlashPage extends StatelessWidget {
  void navigateToTaskListPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TaskListPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tareas'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: const Icon(Icons.list),
              onPressed: () {
                navigateToTaskListPage(context);
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const Shape(),
          const SizedBox(height: 79),
          Image.asset(
            'images/onboarding-image.png',
            width: 180,
            height: 168,
          ),
          const SizedBox(height: 99),
          const Text(
            'Lista de tareas',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 21),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
          ),
          const Text(
            'La mejor forma para que no se te olvide nada es anotarlo. Guardar tus tareas y ve completando poco a poco para aumentar tu productividad.',
          ),
        ],
      ),
    );
  }
}
