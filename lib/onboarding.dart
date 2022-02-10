import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        //width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color.fromRGBO(245, 247, 251, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 345,
              left: 247,
              child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(224, 242, 237, 1),
                    borderRadius: BorderRadius.all(Radius.elliptical(200, 200)),
                  ))),
          Positioned(
              top: 56,
              left: 110,
              child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(224, 242, 237, 1),
                    borderRadius: BorderRadius.all(Radius.elliptical(200, 200)),
                  ))),
          Positioned(
              top: -17,
              left: 334,
              child: Container(
                  width: 112.94967651367188,
                  height: 156.44235229492188,
                  child: Stack(children: <Widget>[
                    Positioned(
                      top: 60.6812744140625,
                      left: 37.193634033203125,
                      child: SvgPicture.asset('assets/images/vector.svg',
                          semanticsLabel: 'vector'),
                    ),
                    Positioned(
                      top: 26.548858642578125,
                      left: 38.810394287109375,
                      child: SvgPicture.asset('assets/images/vector.svg',
                          semanticsLabel: 'vector'),
                    ),
                    Positioned(
                      top: 78.28857421875,
                      left: 60.627288818359375,
                      child: SvgPicture.asset('assets/images/vector.svg',
                          semanticsLabel: 'vector'),
                    ),
                    Positioned(
                      top: 78.28857421875,
                      left: 11.245758056640625,
                      child: SvgPicture.asset('assets/images/vector.svg',
                          semanticsLabel: 'vector'),
                    ),
                    Positioned(
                      top: 32.81463623046875,
                      left: 72.352783203125,
                      child: SvgPicture.asset('assets/images/vector.svg',
                          semanticsLabel: 'vector'),
                    ),
                    Positioned(
                      top: 32.81463623046875,
                      left: 13.506744384765625,
                      child: SvgPicture.asset('assets/images/vector.svg',
                          semanticsLabel: 'vector'),
                    ),
                    Positioned(
                      top: 0,
                      left: 30.46099853515625,
                      child: SvgPicture.asset('assets/images/vector.svg',
                          semanticsLabel: 'vector'),
                    ),
                    Positioned(
                      top: 115.47140502929688,
                      left: 56.1075439453125,
                      child: SvgPicture.asset('assets/images/vector.svg',
                          semanticsLabel: 'vector'),
                    ),
                    Positioned(
                      top: 124.66983032226562,
                      left: 65.13412475585938,
                      child: SvgPicture.asset('assets/images/vector.svg',
                          semanticsLabel: 'vector'),
                    ),
                    Positioned(
                      top: 124.66983032226562,
                      left: 0,
                      child: SvgPicture.asset('assets/images/vector.svg',
                          semanticsLabel: 'vector'),
                    ),
                  ]))),
          Positioned(
              top: 466,
              left: 43,
              child: Container(
                decoration: BoxDecoration(),
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width - 60,
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Text(
                            'Receive grains from farmers',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.4),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'At the outlets, you can receive grains from farmers and they get paid for the grains received.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                letterSpacing: 0.800000011920929,
                                fontWeight: FontWeight.normal,
                                height: 1.8571428571428572),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(),
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Container(
                                    width: 7,
                                    height: 6,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(3),
                                        topRight: Radius.circular(3),
                                        bottomLeft: Radius.circular(3),
                                        bottomRight: Radius.circular(3),
                                      ),
                                      color: Color.fromRGBO(175, 175, 175, 1),
                                    )),
                                SizedBox(width: 8),
                                Container(
                                    width: 14,
                                    height: 6,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(3),
                                        topRight: Radius.circular(3),
                                        bottomLeft: Radius.circular(3),
                                        bottomRight: Radius.circular(3),
                                      ),
                                      color: Color.fromRGBO(40, 118, 111, 1),
                                    )),
                                SizedBox(width: 8),
                                Container(
                                    width: 7,
                                    height: 6,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(3),
                                        topRight: Radius.circular(3),
                                        bottomLeft: Radius.circular(3),
                                        bottomRight: Radius.circular(3),
                                      ),
                                      color: Color.fromRGBO(175, 175, 175, 1),
                                    )),
                                SizedBox(width: 8),
                                Container(
                                    width: 7,
                                    height: 6,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(3),
                                        topRight: Radius.circular(3),
                                        bottomLeft: Radius.circular(3),
                                        bottomRight: Radius.circular(3),
                                      ),
                                      color: Color.fromRGBO(175, 175, 175, 1),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 390,
                  height: 422,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 75,
                        left: 32,
                        child: Container(
                            width: 326,
                            height: 347,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                                bottomLeft: Radius.circular(64),
                                bottomRight: Radius.circular(64),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Unsplashunefdyglld8.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    Positioned(
                        top: 39,
                        left: 12,
                        child: Container(
                            width: 366,
                            height: 372,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                                bottomLeft: Radius.circular(64),
                                bottomRight: Radius.circular(64),
                              ),
                              color: Color.fromRGBO(
                                  235, 190, 30, 0.800000011920929),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Unsplashtwosyptnm94.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 390,
                            height: 397,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                                bottomLeft: Radius.circular(64),
                                bottomRight: Radius.circular(64),
                              ),
                              color: Color.fromRGBO(40, 118, 111, 1),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/farmer1.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                  ]))),
          Positioned(
              top: 644,
              left: 0,
              child: Container(
                decoration: BoxDecoration(),
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        width: 375, height: 0, decoration: BoxDecoration()),
                    SizedBox(height: 0),
                    Container(
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                              width: 1,
                              height: 1,
                              decoration: BoxDecoration(),
                              child: Stack(children: <Widget>[])),
                        ],
                      ),
                    ),
                    SizedBox(height: 0),
                    Container(
                      decoration: BoxDecoration(),
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(),
                            padding: EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            child: SingleChildScrollView(
                              physics: const NeverScrollableScrollPhysics(),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12),
                                        bottomLeft: Radius.circular(12),
                                        bottomRight: Radius.circular(12),
                                      ),
                                      color: Color.fromRGBO(245, 247, 251, 1),
                                      border: Border.all(
                                        color: Color.fromRGBO(96, 125, 139, 1),
                                        width: 0.5,
                                      ),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 0, vertical: 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Container(
                                            width: 1,
                                            height: 1,
                                            decoration: BoxDecoration()),
                                        SizedBox(width: 10),
                                        Container(
                                          decoration: BoxDecoration(),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 16),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Text(
                                                'Login',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                    letterSpacing:
                                                        0.800000011920929,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1.75),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Container(
                                    decoration: BoxDecoration(),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 0, vertical: 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Container(
                                            width: 1,
                                            height: 1,
                                            decoration: BoxDecoration()),
                                        SizedBox(height: 10),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(12),
                                              topRight: Radius.circular(12),
                                              bottomLeft: Radius.circular(12),
                                              bottomRight: Radius.circular(12),
                                            ),
                                            color:
                                                Color.fromRGBO(40, 118, 111, 1),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 16),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Text(
                                                'Get started',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                    letterSpacing:
                                                        0.800000011920929,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1.75),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 0),
                    Container(
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(),
                              child: Stack(children: <Widget>[])),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ]));
  }
}
