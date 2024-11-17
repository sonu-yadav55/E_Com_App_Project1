
import 'dart:js_interop';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import '';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homrscreenState();
}

class _homrscreenState extends State<homescreen> {
  final TextEditingController _fnameController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _designationController = TextEditingController();

  // CollectionReference _employee =
  //     FirebaseFirestore.instance.collection("employees");

  CollectionReference _employee =
      FirebaseFirestore.instance.collection("employees");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Employee",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: "Tracking",
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Enter First Name",
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Enter Gender",
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Enter Designation",
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Add",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            Expanded(
              child: StreamBuilder(
                  stream: _employee.snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return CircularProgressIndicator();
                    }
                    return ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          var emp = snapshot.data!.docs[index];
                          return Card(
                            elevation: 4,
                            margin: EdgeInsets.symmetric(vertical: 8),
                            child: ListTile(
                              title: Text(
                                emp['Fname'],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              trailing: Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.edit),
                                  ),
                                ],
                              ),
                              subtitle: Text(
                                emp['Designation'],
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ),
                          );
                        });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
