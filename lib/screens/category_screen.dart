import 'package:flutter/material.dart';
import 'package:sdmg_ecommerce/model/category_model.dart';

class CategoryDetailsScreen extends StatelessWidget {
   CategoryDetailsScreen({Key? key, required this.model}) : super(key: key);
  final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("${model.categoryName}"),
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemBuilder: (BuildContext context,index){
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: categoryList[index].color,
              ),
              child: Column(
                children: [
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      image: DecorationImage(

                        fit: BoxFit.cover,
                        image:AssetImage(categoryList[index].image,),
                      )
                    ),

                  ),
                  SizedBox(height: 5,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text("Super Master Bed Room",style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),Text("\$85 doller/night",style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.bold),)],),
                  SizedBox(height: 5,),
                  Row(children: [
                    Icon(Icons.star,color: Colors.orangeAccent,size: 15,),
                    Text("4.5",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                   Spacer(),
                    ElevatedButton(onPressed: (){},child: Text("Booking"),),
                  ],)
                ],
              ),
            );
            }),
      ),
    );
  }
}
