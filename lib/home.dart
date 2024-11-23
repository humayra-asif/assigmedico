import 'package:flutter/material.dart';
import 'package:assigmedico/cart.dart';
import 'package:assigmedico/profile.dart';
import 'detail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: getCurrentView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_none), label: 'Notification'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: 'Medical'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  
  PreferredSizeWidget _buildAppBar() {
    if (currentIndex == 4) {
    
      return AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text("The Profile", style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black),
            onPressed: () {
              
            },
          ),
        ],
      );
    } else if (currentIndex == 3) {
  
      return AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text("Your Cart", style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_shopping_cart, color: Colors.black),
            onPressed: () {
              
            },
          ),
        ],
      );
    } else {
      // Default AppBar
      return AppBar(
        backgroundColor: const Color(0xFF3250F7),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2023/02/04/16/29/boat-7767575_1280.jpg',
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notification_add_rounded, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {},
          ),
        ],
      );
    }
  }

  
  Widget getCurrentView() {
    switch (currentIndex) {
      case 0:
        return buildHomeView();
      case 1:
        return Center(child: Text('Notification Screen', style: TextStyle(fontSize: 18)));
      case 2:
        return Center(child: Text('Medical Screen', style: TextStyle(fontSize: 18)));
      case 3:
        return Cartscreen(); // Cart Screen
      case 4:
        return const Profilescreen(); 
      default:
        return Center(child: Text('Default Screen', style: TextStyle(fontSize: 18)));
    }
  }

  // Home view content
  Widget buildHomeView() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: const BoxDecoration(
                  color: Color(0xFF3250F7),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Humayra',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'Welcome to Quick Medical Store',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 16,
                right: 16,
                child: Container(
                  height: 50,
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: 'Search Medicine & Healthcare products',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Categories',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              item('Medicine', const Color(0xFFF63576)),
              item('Wellness', Colors.green),
              item('Hemeo', Colors.orange),
              item('Eye Care', Colors.blue),
            ],
          ),
          buildBox(
            firsttext: 'Save extra on \nevery order',
            secondLineText: 'Etiam mollis metus \nnon faucibus.',
            imageUrl: 'https://cdn.pixabay.com/photo/2021/10/03/03/47/doctor-6676747_1280.jpg',
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Deals of the Day',
              style: TextStyle(color: Colors.black, fontSize: 19),
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemCount: 6,
            itemBuilder: (context, index) {
              return dealItemCard();
            },
          ),
        ],
      ),
    );
  }

  Widget item(String title, Color color) {
    return Container(
      width: 90,
      height: 130,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: const Color(0xFFF0F0F0),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Column(
        children: [
          CircleAvatar(radius: 40, backgroundColor: color),
          const SizedBox(height: 8),
          Center(
            child: Text(
              title,
              style: const TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBox({
    required String firsttext,
    required String secondLineText,
    required String imageUrl,
  }) {
    return Container(
      width: 450,
      height: 180,
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            firsttext,
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            secondLineText,
            style: const TextStyle(color: Colors.black, fontSize: 15),
          ),
        ],
      ),
    );
  }

  Widget dealItemCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Detailscreen()),
          );
        },
        child: Column(
          children: [
            Image.network(
              'https://www.myvitaminstore.pk/cdn/shop/files/fablous-biotin-2500-mcg-60-ct-613666.jpg?v=1713779159',
              height: 120,
              width: 100,
              fit: BoxFit.fill,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product Title',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Product Subtitle',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Rs.112',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
