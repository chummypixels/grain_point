import 'package:flutter/material.dart';
import 'package:grain_point/screens/signup/sign_up_password.dart';
import 'package:grain_point/widgets/otpInput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  String? _otp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset('assets/images/farmer4.png'),
              const SizedBox(height: 40),
              const Text(
                'Verify Account',
                //textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    height: 1),
              ),
              const SizedBox(height: 20),
              const Text(
                'Check your phone for the sms verification \nsent to you',
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontFamily: 'Poppins', fontSize: 18, height: 2),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OtpInput(controller: _fieldOne, autoFocus: true),
                  OtpInput(controller: _fieldTwo, autoFocus: false),
                  OtpInput(controller: _fieldThree, autoFocus: false),
                  OtpInput(controller: _fieldThree, autoFocus: false),
                ],
              ),
            ],
          ),
          Column(
            children: [
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPasswordScreen()));
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
              SizedBox(height: 40),
            ],
          ),
        ],
      ),
    );
  }
}
