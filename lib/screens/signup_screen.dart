import 'package:flutter/material.dart';
import 'package:sdmg_ecommerce/screens/home_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // final formKey = GlobalKey<FormState>();
  final fKey = GlobalKey<FormState>();
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 15,
            ),
            Image.asset(
              "assets/images/Profile Image.png",
              height: 150,
              width: 300,
            ),
            Form(
                key: fKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "invalid email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          labelText: "Email",
                          hintText: "ex@gmail.com",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(color: Colors.deepOrange, width: 2),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(color: Colors.purple, width: 2),
                          )),
                    ),
                    TextFormField(
                      onChanged: (value) {
                        password = value;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "empty";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "Password"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      onChanged: (value){
                        setState(() {

                        });
                      },
                      validator: (value) {
                        if (!(value == password)) {
                          return "password dosen't match";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),
                          labelText: "Confirm Password",
                          hintText: "******",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(color: Colors.teal, width: 2),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                            BorderSide(color: Colors.orangeAccent, width: 2),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.red,width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(color: Colors.purple, width: 2),
                          )),


                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                        onPressed: () {
                           if(fKey.currentState!.validate()){
                           Navigator.pushReplacement(context,
                           MaterialPageRoute(builder: (context)=>HomeScreen()));
                          }
                        },
                        child: Text("SignUp")),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
