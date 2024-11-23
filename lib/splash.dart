import 'dart:async';
import 'package:flutter/material.dart';
import 'package:assigmedico/walk.dart';  // Replace this with your next screen

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Walkscreen()),  // Replace with your next screen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color(0xFF3250F7),  
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.local_hospital,  
                size: 50,
                color: const Color(0xFF3250F7),  
              ),
            ),
            const SizedBox(height: 20),
            
            Text(
              'Quick Medical',
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,  
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
