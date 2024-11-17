
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homepage.dart';
import 'login.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 120, 132, 210),
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.to(homepage());
          },
        ),
        title: Text("Profile", style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: Icon(Icons.edit, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Image
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              color: Color.fromARGB(255, 120, 132, 210),
              child: Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://via.placeholder.com/150'), // Profile Image
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.grey[700],
                        size: 24,
                      ),
                    )
                  ],
                ),
              ),
            ),

            // User Information
            userInfoTile("First Name", "Sonu", true),
            userInfoTile("Last Name", "Yadav", true),
            userInfoTile("Email", "s@gmail.com", true),
            userInfoTile("Password", "user123", true),
            userInfoTile("Mobile Number", "1234565432", false),

            // Logout Button
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  Get.to(login());
                },
                icon: Icon(Icons.logout),
                label: Text(
                  "Logout",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 120, 132, 210),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'My Orders'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
        ],
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.grey[200],
      ),
    );
  }

  // User Information Tile Widget
  Widget userInfoTile(String title, String value, bool editable) {
    return ListTile(
      title: Text(title),
      subtitle: Text(value),
      trailing: editable ? Icon(Icons.edit, color: Colors.grey) : null,
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      tileColor: Colors.white,
      shape: Border(
        bottom: BorderSide(color: Colors.grey[300]!),
      ),
    );
  }
}
