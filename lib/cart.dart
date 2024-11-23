import 'package:customizable_counter/customizable_counter.dart';
import 'package:flutter/material.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align content to the left
            children: [
              Row(
                children: [
                  Text(
                    '2 Items in your cart',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add, color: Colors.blue),
                  ),
                  Text(
                    'Add more',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 10),
              items(
                'Sugar free gold',
                'bottle of 500 pellets',
                'Rs.25',
                'https://m.media-amazon.com/images/I/51jz0DrGbdL.jpg',
              ),
              Divider(
                color: const Color.fromARGB(255, 232, 232, 232),
              ),
              items(
                'Sugar free gold',
                'bottle of 500 pellets',
                'Rs.18',
                'https://m.media-amazon.com/images/I/51jz0DrGbdL.jpg',
              ),
              Divider(color: Colors.grey[200]),
              SizedBox(height: 100),
              Text(
                'Payment Summary',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Text('Order Total',style: TextStyle(color: Colors.grey),),
              Text('228.80',style: TextStyle(color: Colors.black),)
              
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Text('Items Discount',style: TextStyle(color: Colors.grey),),
              Text('- 28.80',style: TextStyle(color: Colors.black),)
              
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Text('Coupon Discount',style: TextStyle(color: Colors.grey),),
              Text('-15.80',style: TextStyle(color: Colors.black),)
              
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Text('Shipping',style: TextStyle(color: Colors.grey),),
              Text('Free',style: TextStyle(color: Colors.black),)
              
                ],
              ),
            ),
Divider(color: Colors.grey[200]),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Text('Total',style: TextStyle(color: Colors.black),),
              Text('Rs.185.00',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
              
                ],
              ),
            ),
            
Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                    
                    },
                    child: Text(
                      'Place Order',
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

  Widget items(String first, String second, String price, String url) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                url,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align content to the left
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          first,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.cancel_outlined,
                            color: Colors.grey,
                            size: 21,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1),
                    Text(
                      second,
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          price,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        add(context),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget add(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 40,
      child: CustomizableCounter(
        borderColor: Colors.blue,
        borderWidth: 1,
        borderRadius: 11,
        backgroundColor: Colors.white,
        count: 0,
        step: 1,
        minCount: 0,
        maxCount: 10,
        incrementIcon: const Icon(
          Icons.add,
          color: Colors.black,
          size: 16,
        ),
        decrementIcon: const Icon(
          Icons.remove,
          color: Colors.black,
          size: 16,
        ),
        onCountChange: (count) {
          print("Count updated: $count");
        },
        onIncrement: (count) {
          print("Incremented to: $count");
        },
        onDecrement: (count) {
          print("Decremented to: $count");
        },
      ),
    );
  }
}
