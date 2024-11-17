
import 'package:flutter/material.dart';

class cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CART'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Progress Indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildStepIndicator('Cart', 1, isActive: true),
                buildStepIndicator('Address', 2),
                buildStepIndicator('Payment', 3),
                buildStepIndicator('Summary', 4),
              ],
            ),
            SizedBox(height: 16),
            // Cart Item
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Image.network(
                      'assets/4.jpeg', // Product Image
                      height: 80,
                      width: 80,
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'I Phone 15 - Silver Black',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '₹75000 +10% off',
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            'All issue easy returns',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Qty: 1'),
                              GestureDetector(
                                onTap: () {
                                  // Handle remove action
                                },
                                child: Text(
                                  'Remove',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            // Delivery details
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sold to Raju Kumar',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  'Free Delivery',
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
            SizedBox(height: 16),
            // Price Details
            Divider(),
            Text(
              'Price Details(1 Item)',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Product Price'),
                Text('+ ₹1420'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Discount'),
                Text('- ₹1391.6'),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order Total',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '₹1391.6',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 16),
            // Discount Info
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Yah! Your total discount is 32.4',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.purple),
              ),
            ),
            Spacer(),
            // Footer (Price and Continue Button)
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '₹1391.6 Total price',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle continue action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber, // Background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  child: Text('Continue'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStepIndicator(String label, int step, {bool isActive = false}) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: isActive ? Colors.amber : Colors.grey[300],
          child: Text(
            '$step',
            style: TextStyle(color: isActive ? Colors.white : Colors.black),
          ),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: isActive ? Colors.amber : Colors.black,
          ),
        ),
      ],
    );
  }
}
