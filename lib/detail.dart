import 'package:assigmedico/cart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Detailscreen(),
    );
  }
}

class Detailscreen extends StatefulWidget {
  const Detailscreen({super.key});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            const SizedBox(width: 10),
            Text(
              'Product Details',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notification_add_outlined, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sugar Free Gold Low Calories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(height: 3),
              Text(
                'Etiam mollis metus non purus',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 8),
              Center(
                child: Container(
                  width: 350,
                  height: 170,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://m.media-amazon.com/images/I/617SQcQzuUL.jpg'),
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 3, backgroundColor: Colors.blue),
                  SizedBox(width: 4),
                  CircleAvatar(radius: 3, backgroundColor: Colors.grey),
                  SizedBox(width: 4),
                  CircleAvatar(radius: 3, backgroundColor: Colors.grey),
                ],
              ),
              SizedBox(height: 6),
              Row(
                children: [
                  Text(
                    'Rs.99',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Rs.56',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text('Etiam mollis'),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.add_box_outlined, color: Colors.blue, size: 22),
                    onPressed: () {},
                  ),
                  Text(
                    'Add to Cart',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              Divider(),
              SizedBox(height: 10),
              Text(
                'Package size',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 9),
              Row(
                children: [
                  Tag("Rs 106", '500 pellets'),
                  Tag("Rs 166", '110 pellets'),
                  Tag("Rs 150", '99 pellets'),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Product Details',
                style: TextStyle(fontSize: 21),
              ),
              SizedBox(height: 10),
              Text(
                'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Text(
                'Ingredients',
                style: TextStyle(fontSize: 21),
              ),
              SizedBox(height: 10),
              Text(
                'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 13),
              Row(
                children: [
                  Text(
                    'Expiry Date',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(width: 10),
                  Text('25/12/2023', style: TextStyle(fontSize: 16)),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    'Brand Name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(width: 10),
                  Text('something', style: TextStyle(fontSize: 16)),
                ],
              ),
              SizedBox(height: 30),
              buildRatingSection(),
              SizedBox(height: 20),

Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  Text('★4.2',style: TextStyle(color: Colors.grey,fontSize: 18),),
    Text('05- oct 2020',style: TextStyle(color: Colors.grey,fontSize: 17),),

],),

SizedBox(height: 10,),
Text('Erric Hoffman',style: TextStyle(fontSize: 19),),
SizedBox(height: 10,),
Text('Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas ',
style: TextStyle(fontSize: 16,color: Colors.grey),),
SizedBox(height: 30,),




              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Cartscreen()));
                    },
                    child: Text(
                      'GO TO CART',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3250F7),
                      minimumSize: Size(250, 45),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }



















  Widget Tag(String firsttext, String secondtext) {
    return Container(
      height: 90,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 242, 242, 242),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Text(
            firsttext,
            style: TextStyle(color: Colors.black, fontSize: 23),
          ),
          SizedBox(height: 3),
          Text(secondtext),
        ],
      ),
    );
  }

  Widget buildRatingSection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  '4.4',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.star, color: Colors.amber, size: 35),
              ],
            ),
            
            SizedBox(width: 8),
            Text(
              '923 Ratings',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
         
       
          
        Text(
          '257 Reviews',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        ],
        ),
        
        SizedBox(width: 70),
        Column(
          children: [
            buildRatingBar(5, 67),
            buildRatingBar(4, 20),
            buildRatingBar(3, 13),
            buildRatingBar(2, 15),
            buildRatingBar(1, 25),
          ],
        ),
        SizedBox(height: 16),
        
      ],
    );
  }

  Widget buildRatingBar(int stars, int percentage) {
    return Row(
      children: [
        Text(
          '$stars★',
          style: TextStyle(fontSize: 16,color: Colors.grey),
        ),
        SizedBox(width: 8),
        Container(
          height: 5,
          width: 150,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: LinearProgressIndicator(
            value: percentage / 100,
            minHeight: 8,
            color: Colors.blue,
            backgroundColor: Colors.grey[300],
          ),
        ),
        SizedBox(width: 8),
        Text('$percentage%'),
      ],
    );
  }
}
