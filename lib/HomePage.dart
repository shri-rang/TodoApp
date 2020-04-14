import 'package:flutter/material.dart';
import './widgets/new_todo.dart';
import './widgets/todo_list.dart';
import './models/modal.dart';



class HomePage extends StatefulWidget {
  // 

  // String titleInput;
  // String pendingInput;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    List<Todo>_todo=[
    // Todo(id: 't1', title: 'first', date: DateTime.now(),amount: 33, isPending: false, isCompelete: false),
    //  Todo(id: 't2',  title: 'Second', date: DateTime.now(),amount: 33, isPending: false, isCompelete: false),


    ];


   void _addNewTodo (String toTitle,DateTime chosenDate, bool pending, bool compelet ){
     final addTodo= Todo(
     id: DateTime.now().toString(), 
     title:toTitle , 
     date: chosenDate,
     isPending: pending,
     isCompelete: compelet
     );

     setState(
       (){
         _todo.add(addTodo);
       }
     );

   }
  void _startAddNewTodo(BuildContext ctx){
    showModalBottomSheet(context:ctx , builder:(_){
      return NewTodo(_addNewTodo);

    });
  }

  void _deleteTodo(String id ){
    setState(() {
      _todo.removeWhere((todo){
        return todo.id == id;
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('Todo App'),
       actions: <Widget>[
         IconButton(icon: Icon(Icons.add), onPressed: ()=>_startAddNewTodo(context))
       ],
       
       ),
       
       body:Column(

        children:<Widget>[
           
            TodoList(_todo , _deleteTodo),
        ] 
       ) ,
     floatingActionButton: FloatingActionButton(child: Icon(Icons.add)  ,onPressed:()=>_startAddNewTodo(context)),

    );
 
 
 }
}