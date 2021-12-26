
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryModel{
  final String categoryName;
  final Color   color;
  final String image;

  CategoryModel({required this.categoryName, required this.color,required this.image});



}
List<CategoryModel>categoryList=[
  CategoryModel(categoryName:"Fresh", color: Colors.orangeAccent,image:"assets/images/hotel1.png" ),
  CategoryModel(categoryName:"Flexible", color: Colors.deepOrange,image:"assets/images/hotel2.png"),
  CategoryModel(categoryName:"Live", color: Colors.orange,image:"assets/images/hotel3.png"),
  CategoryModel(categoryName:"Grocery", color: Colors.deepOrangeAccent,image:"assets/images/hotel4.png"),
  CategoryModel(categoryName:"Fish", color: Colors.indigo,image:"assets/images/hotel5.png"),
  CategoryModel(categoryName:"Cloth", color: Colors.purple,image:"assets/images/hotel6.png"),
  CategoryModel(categoryName:"Chicken", color: Colors.teal,image:"assets/images/hotel1.png"),
  CategoryModel(categoryName:"Food", color: Colors.cyan,image:"assets/images/hotel2.png"),
  CategoryModel(categoryName:"Electronics", color: Colors.blue,image:"assets/images/hotel3.png"),
  CategoryModel(categoryName:"Fast Food", color: Colors.lightBlueAccent,image:"assets/images/hotel4.png"),
  CategoryModel(categoryName:"Fast Food", color: Colors.lightBlueAccent,image:"assets/images/hotel5.png"),
  CategoryModel(categoryName:"Fast Food", color: Colors.lightBlueAccent,image:"assets/images/hotel6.png"),
];