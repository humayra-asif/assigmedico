import 'package:flutter/material.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          
          Row(
            children: [
              Container(
            width: 110, 
            height: 110,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blue, width: 4), 
            ),
            child: CircleAvatar(
              radius: 50, // The actual avatar size
              backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2023/02/04/16/29/boat-7767575_1280.jpg',
              ),
            ),
          ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Humayra Asif',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Active Member',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),

      
          profileOptionTile(Icons.edit, 'Edit Profile', () {}),
          Divider(),
          profileOptionTile(Icons.history, 'My Orders', () {}),
          Divider(),
          profileOptionTile(Icons.payment, 'Payment Methods', () {}),
          Divider(),
          profileOptionTile(Icons.help, 'Help & Support', () {}),
          Divider(),
          profileOptionTile(Icons.logout, 'Log Out', () {}),
        ],
      ),
    );
  }

  Widget profileOptionTile(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }
}
