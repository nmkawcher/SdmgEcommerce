import 'package:flutter/material.dart';
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
                     children: [
                       
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
               ),
             )

           ],
        )
      ],
    ),
    );
  }
}
