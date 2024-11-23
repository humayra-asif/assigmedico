import 'dart:math';

import 'package:assigmedico/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  TextEditingController emailcontroller= TextEditingController();
    TextEditingController passwordcontroller= TextEditingController();

login() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwordcontroller.text,
      );
      print("Login Successfull");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 230, 230),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 230, 230, 230),
      ),

      body: Center(
        child: Column(
        
          children: [
            SizedBox(height: 20,),
CircleAvatar(
  
              radius: 40,
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              child: Icon(
                Icons.local_hospital,  
                size: 50,
                color: const Color(0xFF3250F7),  
              ),
            ),
            const SizedBox(height: 5),
            
            Text(
              'Quick Medical',
              style: const TextStyle(
                fontSize: 24,
                color: Colors.black,  
                fontWeight: FontWeight.bold,
              ),
            ),
SizedBox(height: 30,),
Text('Please Enter your Email and password \nto Login/Sign Up',style: TextStyle(color: Colors.grey,fontSize: 17),),
SizedBox(height: 28,),

 Padding(
   padding: const EdgeInsets.fromLTRB(40, 30, 40, 30),
   child: TextField(
    
            controller: emailcontroller,
            decoration:  InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    width: 60,
                    color: Colors.black
                  ),

                ),
                labelText: 'co@gmail.com',labelStyle: TextStyle(color: Colors.grey)
              ),     
   ),
 ),
 

 Padding(
   padding: const EdgeInsets.fromLTRB(40, 2, 40, 30),
   child: TextField(
    
            controller: passwordcontroller,
            decoration:  InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    width: 60,
                    color: Colors.black
                  ),

                ),
                labelText: 'enter your password',labelStyle: TextStyle(color: Colors.grey)
              ),     
   ),
 ),


Padding(
  padding: const EdgeInsets.all(8.0),
  child: ElevatedButton(onPressed: (){
    login();
     Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())); 
  }, child: Text('Continue',style: TextStyle(color: Colors.white),),
  style: ElevatedButton.styleFrom(
      backgroundColor:  const Color(0xFF3250F7),
      
    ),
    
  ),
)



        ],),
      ),
    );
  }
}