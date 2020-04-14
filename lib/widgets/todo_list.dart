import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/modal.dart';


class TodoList extends StatelessWidget {
final List<Todo> todoList;
final Function deletetodo;
TodoList(this.todoList, this.deletetodo );


  @override
  Widget build(BuildContext context) {
    return
           Container(
           height:500,
           
           child:
            todoList.isEmpty ?
             Center(
               child: Column(
                  children: <Widget>[
                    Text('No Todo Added Yet', 
                    style:TextStyle(fontWeight:FontWeight.bold),),

                    SizedBox(
                      height:10,
                    ),

                    Container(
                      height:300 ,
                      child: Image.asset('assets/image/waiting.png', fit: BoxFit.cover,)),

                  ],
            ),
             ) :
            ListView.builder(itemBuilder:(ctx, index){
             return Card(
             margin: EdgeInsets.symmetric(horizontal:5,
                vertical:8
             ),
            child:ListTile(
              leading:
               CircleAvatar(
                backgroundColor: Colors.white,
                 child:Padding(padding: 
                 EdgeInsets.all(10),
                 child:FittedBox(
                   child: todoList[index].isPending == true ? Icon(Icons.brightness_1, color: Colors.red) : Icon(Icons.brightness_1, color: Colors.green,),
                 ) 
                 )
                ),
                title: Text(todoList[index].title),
                subtitle: Text(DateFormat.yMMM().format(todoList[index].date)),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  color: Theme.of(context).primaryColor,
                  onPressed:()=> deletetodo(todoList[index].id)
                  
                  ),
                
              ),
            );


           },
           
           itemCount: todoList.length
           )
           );
    }
    
   
    



            
  }
