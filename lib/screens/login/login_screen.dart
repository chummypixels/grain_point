import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grain_point/app_export.dart';
import 'package:grain_point/user_home_screen/home.dart';
import 'package:http/http.dart' as http;

import '../home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;
  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/farmer2.png',
              height: MediaQuery.of(context).size.height - 380,
              width: MediaQuery.of(context).size.width,
            ),
            const SizedBox(height: 20),
            Form(
              child: Column(
                children: [
                  const Text(
                    'Login',
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Enter your details below to continue',
              style: TextStyle(fontFamily: 'Poppins', fontSize: 18, height: 2),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(25.0),
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
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: TextFormField(
                controller: _emailController,
                decoration: const InputDecoration.collapsed(
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(175, 175, 175, 1),
                        fontSize: 16,
                        height: 1.5)),
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
                  hintText: 'Input password',
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(175, 175, 175, 1),
                      fontSize: 16,
                      height: 1.75,
                      letterSpacing: 1),
                ),
              ),
            ),

            SizedBox(
              height: 40,
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
                      login();
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
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account? ",
                  style:
                      TextStyle(fontFamily: 'Poppins', fontSize: 18, height: 2),
                ),
                const Text(
                  "Signup",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    height: 2,
                    color: Color.fromRGBO(40, 118, 111, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Future<void> login() async {
    if (_passwordController.text.isNotEmpty &&
        _emailController.text.isNotEmpty) {
      var response = await http.post(
          Uri.parse('http://grainpoint.com.ng/api/v1/login'),
          body: ({
            'email': _emailController.text,
            'password': _passwordController.text
          }));
      if (response.statusCode == 200) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => UserHomeScreen()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Invalid credentials'),
        ));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Blank field not allowed'),
      ));
    }
  }
}
