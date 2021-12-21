import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdmg_ecommerce/model/category_model.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
           children: [
             Container(
               padding: EdgeInsets.symmetric(horizontal:10, ),
               height: height/3,
               width: width,
              decoration: BoxDecoration(
                color: Colors.green[400],
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
              ),
               child: Column(
                 children: [

                     Align(alignment:Alignment.centerLeft,child: Icon(Icons.menu,color: Colors.white,)),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 10,),
                         child: Text("SDMG Ecommerce",style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                           fontSize: 20
                         ),),
                       ),
                       Image.asset("assets/images/apple-pay.png",height: 50,width: 50,color: Colors.white,),
                     ],
                   )
                   
                 ],
               ),
             ),
             Positioned(
               bottom: 0,
               left: 0,
               right: 0,
               child: Container(
                 margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                 height: 40,
                 width: width-40,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(8),
                   color: Colors.white
                 ),
                 child: TextField(
                   decoration: InputDecoration(
                     hintText: "Search Product",
                     prefixIcon: Icon(Icons.search,),
                     focusedBorder: InputBorder.none
                   ),
                 ),
               ),
             ),
           ],
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Categories",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
              GestureDetector(onTap: (){print("click on see more");},child: Text("See more",style: TextStyle(decoration: TextDecoration.underline,fontWeight: FontWeight.bold,color: Colors.blue,),))
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          height: 100,
          width: double.infinity,
          child: ListView.builder(
            physics: ScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: categoryList.length,
              itemBuilder: (context,index){
              return Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: categoryList[index].color
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(categoryList[index].categoryName,style: TextStyle(fontWeight:FontWeight.bold ),)

                ],
              );
              }
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("New Arrival",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),),
              GestureDetector(onTap: (){print("click on see more");},child: Text("See more",style: TextStyle(decoration: TextDecoration.underline,fontWeight: FontWeight.bold,color: Colors.blue,),))
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          height: 200,
          child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
             mainAxisSpacing: 10,
            children: List.generate(categoryList.length, (index) =>
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: categoryList[index].color
              ),
            )),
          ),
        )
      ],
    ),
    );
  }
}


