import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Style.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => ToDoPageView();
}

class ToDoPageView extends State<ToDoPage> {
  List ToDoList = [];
  String item="";

  MyInputOnChange(content){
    setState(() {
      // item=ToDoList.add({"Item":content});
      item=content;
    });
  }

  AddItem(){
    setState(() {
      ToDoList.add({"item":item});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo App')),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      onChanged: (value){
                        MyInputOnChange(value);
                      },
                      decoration: AppInputDecoration("Enter Task"),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        AddItem();
                      },
                      child: Text('Add'),
                      style: AppButtonStyle(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              flex: 90,
              child: ListView.builder(
                itemCount: ToDoList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: SizeBox50(
                      Row(
                        children: [
                          Expanded(flex: 80, child: Text(ToDoList[index]['item'].toString())),
                          Expanded(
                            flex: 20,
                            child: TextButton(
                              onPressed: (){},
                              child: Icon(Icons.delete,color: Colors.red,),
                            ),
                          ),
                        ],
                      ),
                    ),
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
