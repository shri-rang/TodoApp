import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class NewTodo extends StatefulWidget {
   final Function addTodo;

   NewTodo(this.addTodo);

  @override
  _NewTodoState createState() => _NewTodoState();
}

class _NewTodoState extends State<NewTodo> {
   final titleController= TextEditingController();
   DateTime _selectedDate;

   bool pending = false;
   bool complete = false;

    void _selectDatePicker(){
     showDatePicker(
       context:context, 
       initialDate: DateTime.now(), 
       firstDate: DateTime(2020), 
       lastDate:DateTime.now()).then(
         (pickedDate){
           if(pickedDate==null){
             return;
           }
           setState(() {
             _selectedDate= pickedDate;
             
           });
         }

       );
       
    }

   void submitData(){
     final  enteredTitle = titleController.text;
     

     if(enteredTitle.isEmpty || _selectedDate==null ||(pending & complete)){
       return;

     }
      widget.addTodo(
        enteredTitle,
        _selectedDate,
         pending,
         complete

               );
     Navigator.of(context).pop();    
         
   }

  @override
  Widget build(BuildContext context) {
    return Column(
        children:<Widget>[
          Card(child: Container(
            padding: EdgeInsets.all(10),

            child:Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
             TextField(decoration: InputDecoration(labelText:'Todo', ),
              controller: titleController,
              onSubmitted: (_)=>submitData(),
             ),         
             Column(
               children:<Widget>[
                Row(children: <Widget>[
                  
                  Checkbox(
            value: pending,
            onChanged: (bool value) {
                setState(() {
                  pending   = value;
                });
              
            }
            ),
            Text('Pending'),                  
                ],),
             Row(children: <Widget>[
                  
                  Checkbox(
            value: complete,
            onChanged: (bool value) {
                setState(() {
                  complete   = value;
                });
              
            }
            ),
            Text('Complete'),                  
                ],),

             
               ],
             ),
             
             Container(
               height: 50,
              child: Row(children:<Widget>[  
                 Text(_selectedDate == null ? 'No Date Chosen':'Picked Date: ${DateFormat.yMd().format(_selectedDate)}'),
                 FlatButton(
                   textColor: Theme.of(context).primaryColor,
                   child:Text('Select Date',style: TextStyle(fontWeight:FontWeight.bold),), 
                 
                 onPressed:_selectDatePicker
                 ,),               
               ]
               
               ),
             ),
             RaisedButton(
               child:Text('Add Todo'),
               color: Theme.of(context).primaryColor,
               textColor: Colors.white,
               onPressed: submitData,
                 


                )

            ],)


          ),)
        ],

        

       );
  }
}