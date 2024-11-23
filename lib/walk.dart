import 'package:assigmedico/login.dart';
import 'package:flutter/material.dart';

class Walkscreen extends StatefulWidget {
  const Walkscreen({super.key});

  @override
  State<Walkscreen> createState() => _WalkscreenState();
}

class _WalkscreenState extends State<Walkscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.network('https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTiyqKI87FPEp2uUOKmNWGAI1pPziujxbI2031dYXHwnR46yfr3',
          height: 200,),
            SizedBox(height: 20),
            Text(
              'View and buy\nMedicine online',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 100),

            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: (){}, child: Text("skip",style: TextStyle(color: Colors.grey),)),


Row(
                  children: [
                    CircleAvatar(radius: 4, backgroundColor: Colors.blue),
                    SizedBox(width: 4),
                    CircleAvatar(radius: 4, backgroundColor: Colors.grey),
                    SizedBox(width: 4),
                    CircleAvatar(radius: 4, backgroundColor: Colors.grey),
                  ],
                ),

ElevatedButton(onPressed: (){
  Navigator.push(context, MaterialPageRoute(builder: (context) => loginscreen()));
}, child: Text('Next',style: TextStyle(color: const Color(0xFF3250F7)),))


              ],
            )
          ], 
        ),
      ),
    );
  }
}