import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard(
      {required this.icon,
      required this.title,
      required this.color,
      required this.subTitle,
      Key? key})
      : super(key: key);

  final IconData icon;
  final String title;
  final String subTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        body: SizedBox(
          height: 400,
          width: 400,
          child: Stack(
            children: [
              Positioned(
                top: 80,
                left: 11,
                child: Container(
                  width: MediaQuery.of(context).size.width / 2 - 10,
                  height: 101,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: color),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromRGBO(255, 255, 255, 0.4)),
                        child: Icon(icon, size: 12, color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            title,
                            //textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(250, 250, 250, 1),
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                letterSpacing: 1,
                                height: 1.5),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            subTitle,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(250, 250, 250, 1),
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                height: 1.5),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            FontAwesomeIcons.chartLine,
                            size: 10,
                            color: Colors.orangeAccent,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
