import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../api.dart';
import 'otp_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  _register() async {
    var data = {
      'name': _nameController.text,
      'email': _emailController.text,
      'password': _passwordController.text,
      'phone': _phoneController.text
    };

    var res = await CallApi().postData(data, 'register');
    // var body = json.decode(res.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/farmer4.png'),
            const SizedBox(height: 40),
            const Text(
              'Signup',
              //textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  height: 1),
            ),
            const SizedBox(height: 20),
            const Text(
              'Enter your details below to signup',
              style: TextStyle(fontFamily: 'Poppins', fontSize: 18, height: 2),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(32.0),
                child: Text(
                  'Full name',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      height: 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: TextFormField(
                decoration: const InputDecoration.collapsed(
                    hintText: 'Enter your name',
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(175, 175, 175, 1),
                        fontSize: 16,
                        height: 1.75,
                        letterSpacing: 1)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 40.0),
            //   child: TextFormField(
            //     decoration: const InputDecoration.collapsed(
            //         hintText: 'surname',
            //         hintStyle: TextStyle(
            //             color: Color.fromRGBO(175, 175, 175, 1),
            //             fontSize: 16,
            //             height: 1.5)),
            //   ),
            // ),
            const Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Phone',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      height: 1),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: TextFormField(
                decoration: const InputDecoration.collapsed(
                  hintText: '080328932932',
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(175, 175, 175, 1),
                      fontSize: 16,
                      height: 1.75,
                      letterSpacing: 1),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email Address',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      height: 1),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: TextFormField(
                decoration: const InputDecoration.collapsed(
                  hintText: 'e.g johndoe@xyz.co',
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(175, 175, 175, 1),
                      fontSize: 16,
                      height: 1.75,
                      letterSpacing: 1),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      height: 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration.collapsed(
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(175, 175, 175, 1),
                      fontSize: 16,
                      height: 1.75,
                      letterSpacing: 1),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Confirm Password',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      height: 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: TextFormField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: const InputDecoration.collapsed(
                  hintText: 'Please confirm password',
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(175, 175, 175, 1),
                      fontSize: 16,
                      height: 1.75,
                      letterSpacing: 1),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    color: Color.fromRGBO(40, 118, 111, 1),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Color.fromRGBO(40, 118, 111, 1),
                    ),
                    onPressed: () {
                      _register();
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          letterSpacing: 0.800000011920929,
                          fontWeight: FontWeight.normal,
                          height: 1.75),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
