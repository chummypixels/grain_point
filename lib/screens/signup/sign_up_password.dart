import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPasswordScreen extends StatefulWidget {
  const SignUpPasswordScreen({Key? key}) : super(key: key);

  @override
  _SignUpPasswordScreenState createState() => _SignUpPasswordScreenState();
}

class _SignUpPasswordScreenState extends State<SignUpPasswordScreen> {
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
              'Input your preferred password to complete \nsignup',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Poppins', fontSize: 18, height: 2),
            ),
            const SizedBox(height: 25),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                child: Text(
                  'Create Password',
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
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    hintText: 'enter your password',
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
            const Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Confirm password',
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
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    hintText: 'confirm your password',
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(175, 175, 175, 1),
                        fontSize: 16,
                        height: 1.75,
                        letterSpacing: 1)),
              ),
            ),
            SizedBox(
              height: 80,
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
                    onPressed: () {},
                    child: Text(
                      'Complete signup',
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
