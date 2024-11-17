import 'package:flutter/material.dart';

class EApp extends StatefulWidget {
  const EApp({super.key});

  @override
  State<EApp> createState() => _EAppState();
}

class _EAppState extends State<EApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'E-Commerce App',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.orange),
          ),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Column(
          children: [
            Text(
              'Welcome in our application',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            Column(
              children: [
                Text(
                  'Username',
                  style: TextStyle(fontSize: 15),
                ),
                TextField(
                  
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
