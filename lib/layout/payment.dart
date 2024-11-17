
import 'package:flutter/material.dart';

class payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
        centerTitle: true,
        elevation: 0,
        leading: Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Progress Indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildStepIndicator('Cart', 1),
                buildStepIndicator('Address', 2),
                buildStepIndicator('Payment', 3, isActive: true),
                buildStepIndicator('Summary', 4),
              ],
            ),
            SizedBox(height: 16),
            // Total Amount
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Amount', style: TextStyle(fontSize: 16)),
                Text('₹ 5740',
                    style: TextStyle(fontSize: 20, color: Colors.blue)),
              ],
            ),
            SizedBox(height: 16),
            // Offer Section
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.green[50],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('₹ 30 Off',
                          style: TextStyle(fontSize: 16, color: Colors.green)),
                      SizedBox(width: 8),
                      Text('Claim now with payment offers'),
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.grey[300]),
                      SizedBox(width: 4),
                      CircleAvatar(backgroundColor: Colors.green),
                      SizedBox(width: 4),
                      CircleAvatar(backgroundColor: Colors.grey[300]),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Educational UPI Section
            buildPaymentOption(
              title: 'Educational UPI',
              subtitle: '30% discount applicable',
              buttonText: 'Add bank and Pay',
              color: Colors.amber,
            ),
            SizedBox(height: 16),
            // Credit/Debit Card Section

            buildPaymentOption(
              title: 'Credit / Debit / ATM Card',
              subtitle:
                  'Add and Secure Cards as per RBI Guidelines\n5% Cashback on Apna Store with Any Bank',
              color: Colors.white,
              buttonText: '',
            ),
            SizedBox(height: 16),
            // Net Banking
            buildPaymentOption(
              title: 'Net Banking',
              subtitle: '',
              color: Colors.white,
              buttonText: '',
            ),
            SizedBox(height: 16),
            // Cash on Delivery Section
            buildPaymentOption(
              title: 'Cash on Delivery',
              subtitle: '',
              color: Colors.white,
              isExpandable: true,
              buttonText: '',
            ),
            Spacer(),
            // Order Now Button
            ElevatedButton(
              onPressed: () {
                // Handle Order Now
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text('Order Now', style: TextStyle(fontSize: 18)),
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

  Widget buildPaymentOption({
    required String title,
    required String subtitle,
    required String buttonText,
    Color? color,
    bool isExpandable = false,
  }) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          if (subtitle.isNotEmpty)
            Text(
              subtitle,
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
          SizedBox(height: 8),
          if (buttonText.isNotEmpty)
            ElevatedButton(
              onPressed: () {
                // Handle Payment Option
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(buttonText),
            ),
          if (isExpandable) ...[
            SizedBox(height: 8),
            Icon(Icons.expand_more),
          ],
        ],
      ),
    );
  }
}
