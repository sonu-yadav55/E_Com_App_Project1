
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'otppage.dart';

class forgotpassword extends StatefulWidget {
  const forgotpassword({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<forgotpassword> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  // ignore: unused_field
  final TextEditingController _passwordController = TextEditingController();

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Logo and Store name
                  SizedBox(height: 50.0),
                  Image.asset(
                    'assets/logo.jpeg',
                  ),
                  SizedBox(height: 30.0),

                  // Email TextField
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    validator: _validateEmail,
                  ),
                  SizedBox(height: 20.0),

                  // Sign In Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // If all validations pass, proceed to the signup page or login logic
                          Get.to(otppage());
                        }
                      },
                      child: Text('Send Otp'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow[700], // Button color
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        textStyle: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),

                  SizedBox(height: 50.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
