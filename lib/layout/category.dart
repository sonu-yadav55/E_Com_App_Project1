
import 'package:flutter/material.dart';

class category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Center(
            child: Text("CATEGORIES", style: TextStyle(color: Colors.black))),
      ),
      body: Row(
        children: [
          // Sidebar
          Column(
            children: [
              Container(
                width: 100,
                color: Colors.grey[200],
                child: ListView(
                  children: [
                    categoryItem("Popular", Colors.blue, Icons.star),
                    categoryItem("Mobiles", Colors.green, Icons.smartphone),
                    categoryItem("Popular home fans", Colors.brown, Icons.ac_unit),
                    categoryItem("New Frizzs", Colors.red, Icons.kitchen),
                    categoryItem("New Version Laptop", Colors.orange, Icons.laptop),
                  ],
                ),
              ),
            ],
          ),

          // Main Content
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "POPULAR",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Divider(thickness: 1),
                  Text(
                    "All Popular",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 0.7,
                      ),
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return popularItem(
                            "Item $index", "https://via.placeholder.com/100");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.grey[200],
      ),
    );
  }

  // Sidebar Category Item
  Widget categoryItem(String title, Color color, IconData icon) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(title, style: TextStyle(fontSize: 12)),
        onTap: () {
          // Action when category is selected
        },
      ),
    );
  }

  // Popular Item Grid Tile
  Widget popularItem(String name, String imageUrl) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(imageUrl),
        ),
        SizedBox(height: 5),
        Text(
          name,
          style: TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
