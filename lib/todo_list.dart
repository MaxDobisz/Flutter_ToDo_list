import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List<String> todolist = [];
  TextEditingController controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        children: [
          Flexible(
            child: ListView.builder(
              itemCount: todolist.length,
              itemBuilder: ((context, index){
                return ListTile(
                  title: Text(todolist[index]),
                );
              }),
            ),
          ),
          TextField(
            controller: controller1,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.arrow_forward),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      todolist.add(controller1.text);
                      controller1.clear();
                    });
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      todolist.remove(controller1.text);
                      controller1.clear();
                    });
                  },
                  child: const Text(
                    'Delete',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
