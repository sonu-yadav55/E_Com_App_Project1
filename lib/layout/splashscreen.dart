import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login.dart';


class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Electronic Store'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // Store Logo
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Image.asset(
                    'assets/logo.jpeg', // Add your logo image URL here
                    height: 150,
                  ),
                ],
              ),
            ),

            // Image from the store
            Image.asset(
              'assets/hd.jpg', // Add the image of the store (user browsing)
              height: 200,
            ),

            SizedBox(height: 130),

            // Let's Shop button
            ElevatedButton(
              onPressed: () {
                Get.to(login());
                print('Let\'s Shop Pressed');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,

                // Background color of the button
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
              ),
              child: Text('Let\'s Shop'),
            ),
          ],
        ),
      ),
    );
  }
}
