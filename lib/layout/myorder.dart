
import 'package:flutter/material.dart';

class myorder extends StatelessWidget {
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
        title: Text("MY ORDERS", style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
              icon: Icon(Icons.search, color: Colors.black), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search by name",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),

            // Filter Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Wrap(
                spacing: 10.0,
                children: [
                  filterButton("All"),
                  filterButton("Ordered"),
                  filterButton("Shipped"),
                  filterButton("Delivered"),
                  filterButton("Cancelled"),
                  filterButton("Exchange"),
                  filterButton("Return"),
                ],
              ),
            ),

            // Order Details
            Divider(thickness: 1),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("15th August",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Order ID 234SEFAN432"),
                      Text("Sold to Raju Kumar",
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text("Supplier: AR Electronics",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),

            // Product Information
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/4.jpeg',
                      width: 80, height: 80), // Product Image
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Order', style: TextStyle(fontSize: 12)),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "New Brand I Phone",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Free Delivery",
                            style: TextStyle(color: Colors.green)),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Delivery Status
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.circle, color: Colors.blue, size: 12),
                  SizedBox(width: 5),
                  Text("Delivery Status",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text("4.9",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(width: 5),
                  Icon(Icons.star, color: Colors.yellow[700]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text("Delivery on 5 September",
                  style: TextStyle(color: Colors.grey)),
            ),

            // Review Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text("Give Review if you liked it!",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text("Edit Review"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: List.generate(
                    5, (index) => Icon(Icons.star_border, color: Colors.grey)),
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
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.grey[200],
      ),
    );
  }

  // Filter Button Widget
  Widget filterButton(String label) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(label, style: TextStyle(fontSize: 12)),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[300],
        //onPrimary: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      ),
    );
  }
}
