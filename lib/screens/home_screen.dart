import 'package:flutter/material.dart';
import 'package:grain_point/widgets/chart.dart';
import 'package:grain_point/widgets/container_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 3 - 40,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                ContainerCard(
                  icon: Icons.person,
                  title: 'Total Farmers',
                  subTitle: '105 Farmers',
                  color: Colors.lightGreen,
                ),
                ContainerCard(
                  icon: Icons.person,
                  title: 'Total Payouts',
                  subTitle: '20,000,000',
                  color: Colors.blueAccent,
                ),
              ],
            ),
          ),
          Expanded(child: LineChartSample2()),
          Text('hey'),
          SizedBox(height: MediaQuery.of(context).size.height / 3 + 20),
        ],
      ),
    );
  }
}
