import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import '../home_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/farmer4.png',
            ),
            const SizedBox(height: 20),
            const Text(
              'Forgot Password',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  height: 1),
            ),
            const SizedBox(height: 20),
            const Text(
              'Input your email address or phone number \nto confirm your account',
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: 'Poppins', fontSize: 18, height: 2),
            ),
            const SizedBox(
              height: 20,
            ),
            DefaultTabController(
              initialIndex: 0,
              length: 2,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: Column(
                  children: [
                    TabBar(
                      indicator: DotIndicator(
                        color: const Color.fromRGBO(40, 118, 111, 1),
                        distanceFromCenter: 16,
                      ),
                      labelColor: const Color.fromRGBO(40, 118, 111, 1),
                      labelStyle: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          height: 1),
                      unselectedLabelColor:
                          const Color.fromRGBO(175, 175, 175, 1),
                      tabs: const [
                        Tab(
                          text: 'Email Address',
                        ),
                        Tab(
                          text: 'Phone Number',
                        ),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        Column(
                          children: [
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
                                decoration: const InputDecoration.collapsed(
                                    hintText: 'search here...',
                                    hintStyle: TextStyle(
                                        color: Color.fromRGBO(175, 175, 175, 1),
                                        fontSize: 16,
                                        height: 1.5)),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.all(25.0),
                                child: Text(
                                  'Phone Number',
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
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration.collapsed(
                                    hintText: 'enter your phone number',
                                    hintStyle: TextStyle(
                                        color: Color.fromRGBO(175, 175, 175, 1),
                                        fontSize: 16,
                                        height: 1.5)),
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Container(
                          decoration: const BoxDecoration(
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
                              primary: const Color.fromRGBO(40, 118, 111, 1),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()));
                            },
                            child: const Text(
                              'Reset',
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
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
