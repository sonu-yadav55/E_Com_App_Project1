
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'address.dart';

class product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        actions: [
          IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart_outlined), onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                'assets/4.jpeg', // Replace with actual product image
                height: 200,
                width: 200,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'I Phone 15',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text(
                  '₹75000',
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
                SizedBox(width: 10),
                Text(
                  '+10% off',
                  style: TextStyle(fontSize: 16, color: Colors.green),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Free Delivery',
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    children: [
                      Text(
                        '3.5',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Icon(Icons.star, color: Colors.white, size: 16),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Text('Wishlist', style: TextStyle(fontSize: 16)),
                Spacer(),
                Icon(Icons.favorite_border),
                SizedBox(width: 16),
                Text('Share', style: TextStyle(fontSize: 16)),
                Spacer(),
                Icon(Icons.share),
              ],
            ),
            SizedBox(height: 16),
            Divider(),
            SizedBox(height: 16),
            Text(
              'Product details',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Brand: I Phone'),
            Text('Name: I Phone 15'),
            SizedBox(height: 16),
            Text(
              'Read more',
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(height: 16),
            Divider(),
            SizedBox(height: 16),
            Text(
              'People Also Viewed',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            // Replace these placeholders with a ListView or GridView for images
            Row(
              children: [
                Image.network(
                  'assets/1.jpeg',
                  height: 50,
                  width: 50,
                ),
                SizedBox(width: 10),
                Image.network(
                  'assets/4.jpeg',
                  height: 50,
                  width: 50,
                ),
                SizedBox(width: 10),
                Image.network(
                  'assets/2.jpeg',
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Add to cart'),
                    style: ElevatedButton.styleFrom(
                      disabledBackgroundColor: Colors.purple,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(address());
                    },
                    child: Text('Buy now'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
