
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'cart.dart';
import 'profile.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: () {
              Get.to(profile());
            },
            child: CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/men.jpeg'), // Replace with user's profile image
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Hello James',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            Text(
              'James@gmail.com',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border, color: Colors.red),
          ),
          IconButton(
            onPressed: () {
              Get.to(cart());
            },
            icon: const Icon(Icons.shopping_cart, color: Colors.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            //   ],
            //  ),
            // Horizontal List for Categories
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    categoryItem('Laptop', 'assets/laptop.jpeg'),
                    categoryItem('Mobile', 'assets/4.jpeg'),
                    categoryItem('Camera', 'assets/camera.jpeg'),
                    categoryItem('Accessories', 'assets/banner.jpeg'),
                    categoryItem('Camera', 'assets/3.jpeg'),
                    categoryItem('Accessories', 'assets/1.jpeg'),
                  ],
                ),
              ),
            ),

            // Promotional Banner
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage(
                        'assets/banner.jpeg'), // Replace with your banner asset
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            // Recently Viewed Section
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Recently Views',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            // GridView for Recently Viewed Items
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4, // Number of items
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  return recentlyViewedItem('assets/4.jpeg');
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.purple[50],
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'My Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
    );
  }

  // Widget for Category Items
  Widget categoryItem(String title, String imagePath) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imagePath), // Replace with category image
        ),
        const SizedBox(height: 5),
        Text(title, style: const TextStyle(fontSize: 14)),
      ],
    );
  }

  // Widget for Recently Viewed Items
  Widget recentlyViewedItem(String imagePath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath), // Replace with product image
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
