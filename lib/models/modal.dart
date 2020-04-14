import 'package:flutter/material.dart';


class Todo {

 final String id;
 final String title;
 final DateTime date;
 bool isPending = false;
 bool isCompelete = false;

 Todo({
   @required this.id,
   @required this.title,
   @required this.date,
   this.isPending,
   this.isCompelete
  
 }
 );

}