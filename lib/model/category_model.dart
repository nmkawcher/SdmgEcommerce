
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryModel{
  final String categoryName;
  final Color   color;

  CategoryModel({required this.categoryName, required this.color});



}
List<CategoryModel>categoryList=[
  CategoryModel(categoryName:"Fresh", color: Colors.orangeAccent),
  CategoryModel(categoryName:"Flexible", color: Colors.deepOrange),
  CategoryModel(categoryName:"Live", color: Colors.orange),
  CategoryModel(categoryName:"Grocery", color: Colors.deepOrangeAccent),
  CategoryModel(categoryName:"Fish", color: Colors.indigo),
  CategoryModel(categoryName:"Cloth", color: Colors.purple),
  CategoryModel(categoryName:"Chicken", color: Colors.teal),
  CategoryModel(categoryName:"Food", color: Colors.cyan),
  CategoryModel(categoryName:"Electronics", color: Colors.blue),
  CategoryModel(categoryName:"Fast Food", color: Colors.lightBlueAccent),
];