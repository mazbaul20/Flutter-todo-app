import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => ToDoPageView();
}

class ToDoPageView extends State<ToDoPage> {

  List ToDoList=[{"2":"2"},{"3":"3"},{"4":"4"},{"5":"5"}];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Expanded(child: TextFormField()),
                    Expanded(child: ElevatedButton(onPressed: (){}, child: Text('Add'))),
                  ],
                ),
            ),
            Expanded(
                flex: 90,
                child: ListView.builder(
                  itemCount: ToDoList.length,
                  itemBuilder: (context, index){
                    return Card(
                      child: Text("All List view"),
                    );
                  },
                ),
            ),
          ],
        ),
      ),
    );
  }

}
