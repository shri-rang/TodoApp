// import 'package:flutter/material.dart';
// import './new_todo.dart';
// import './todo_list.dart';
// import '../models/modal.dart';



// class UserTodo extends StatefulWidget {
//   @override
//   _UserTodoState createState() => _UserTodoState();
// }

// class _UserTodoState extends State<UserTodo> {
 

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children:<Widget>[
//          Card(

//                 child:Row(children:<Widget>[

//                   Container(
//                     margin: EdgeInsets.symmetric(
//                       vertical:10,
//                       horizontal:15,
//                     ),
//                     decoration: BoxDecoration(border:Border.all(color: Theme.of(context).accentColor, width:2,),
//                     ),
//                     padding: EdgeInsets.all(10),
//                     child:Text(     '\$${todoList[index].amount.toStringAsFixed(2)}',
//                     style: TextStyle(fontWeight: FontWeight.bold,
//                     fontSize: 20,
//                     color: Theme.of(context).primaryColor,
//                     ),
//                     ),),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                      children: <Widget>[
                    
//                    Text(todoList[index].title,
//                          style: TextStyle(fontSize:20,fontWeight: FontWeight.bold, ),         ),
//                    Text( DateFormat.yMMMd().format(todoList[index].date),
//                      style: TextStyle(color:Colors.grey,),
//                    ),



//                   ],

                      

//                   ),

//                 ],
                
                
//                 ),

//          );
        
        
    
//       ]
//     );



//   }
// }



 