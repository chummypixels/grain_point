import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'line_titles.dart';

class LineChartSample2 extends StatefulWidget {
  const LineChartSample2({Key? key}) : super(key: key);

  @override
  _LineChartSample2State createState() => _LineChartSample2State();
}

class _LineChartSample2State extends State<LineChartSample2> {
  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  @override
  Widget build(BuildContext context) {
    return LineChart(LineChartData(
        minX: 0,
        maxX: 11,
        minY: 0,
        maxY: 6,
        titlesData: LineTitles.getTitleData(),
        gridData: FlGridData(show: false),
        borderData: FlBorderData(
            show: true,
            border: Border.all(color: const Color(0xff37434d), width: 1)),
        lineBarsData: [
          LineChartBarData(
              spots: [
                FlSpot(0, 3),
                FlSpot(2.6, 2),
                FlSpot(4.9, 5),
                FlSpot(6.8, 2.5),
                FlSpot(8, 4),
                FlSpot(9.5, 3),
                FlSpot(11, 4),
              ],
              isCurved: true,
              colors: gradientColors,
              barWidth: 5,
              dotData: FlDotData(show: false))
        ]));
    // return Stack(
    //   children: <Widget>[
    //     AspectRatio(
    //       aspectRatio: 1.70,
    //       child: Container(
    //         decoration: const BoxDecoration(
    //             borderRadius: BorderRadius.all(
    //               Radius.circular(18),
    //             ),
    //             color: Color(0xff232d37)),
    //         child: Padding(
    //           padding: const EdgeInsets.only(
    //               right: 18.0, left: 12.0, top: 24, bottom: 12),
    //           child: LineChart(
    //             showAvg ? avgData() : mainData(),
    //           ),
    //         ),
    //       ),
    //     ),
    //     SizedBox(
    //       width: 60,
    //       height: 34,
    //       child: TextButton(
    //         onPressed: () {
    //           setState(() {
    //             showAvg = !showAvg;
    //           });
    //         },
    //         child: Text(
    //           'avg',
    //           style: TextStyle(
    //               fontSize: 12,
    //               color:
    //                   showAvg ? Colors.white.withOpacity(0.5) : Colors.white),
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }

  // LineChartData mainData() {
  //   return LineChartData(
  //     lineTouchData: LineTouchData(
  //         touchTooltipData: LineTouchTooltipData(
  //             fitInsideHorizontally: true,
  //             tooltipBgColor: Colors.white,
  //             getTooltipItems: (List<LineBarSpot> touchedBarSpots) {
  //               return touchedBarSpots.map((barSpot) {
  //                 return LineTooltipItem(
  //                   '${barSpot.y.toInt()}',
  //                   TextStyle(
  //                     fontFamily: 'Jost*',
  //                     fontSize: 15,
  //                     color: Colors.black,
  //                   ),
  //                 );
  //               }).toList();
  //             }),
  //         getTouchedSpotIndicator:
  //             (LineChartBarData barData, List<int> spotIndexes) {
  //           return spotIndexes.map((spotIndex) {
  //             return TouchedSpotIndicatorData(
  //               FlLine(
  //                 color: const Color.fromARGB(255, 77, 77, 77),
  //                 strokeWidth: 1,
  //                 dashArray: [4, 4],
  //               ),
  //               FlDotData(
  //                 getDotPainter: (spot, percent, barData, index) {
  //                   return FlDotCirclePainter(
  //                     radius: 5.5,
  //                     color: gradientColors[0],
  //                     strokeWidth: 2,
  //                     strokeColor: Colors.white,
  //                   );
  //                 },
  //               ),
  //             );
  //           }).toList();
  //         }),
  //     gridData: FlGridData(
  //       show: true,
  //       getDrawingHorizontalLine: (value) {
  //         return FlLine(
  //             color: const Color.fromARGB(255, 98, 95, 161),
  //             strokeWidth: 1,
  //             dashArray: [4, 4]);
  //       },
  //     ),
  //     titlesData: FlTitlesData(
  //       show: true,
  //       bottomTitles: SideTitles(
  //         showTitles: true,
  //         reservedSize: 14,
  //         getTextStyles: (context, value) => const TextStyle(
  //           color: Color.fromARGB(255, 181, 181, 181),
  //           fontWeight: FontWeight.w300,
  //           fontFamily: 'Jost*',
  //           fontSize: 13,
  //         ),
  //         getTitles: (value) {
  //           switch (value.toInt()) {
  //             case 1:
  //               return '10k';
  //             case 3:
  //               return '30k';
  //             case 5:
  //               return '50k';
  //           }
  //           return '';
  //         },
  //       ),
  //       leftTitles: SideTitles(
  //         showTitles: true,
  //         getTextStyles: (context, value) => const TextStyle(
  //           color: Color.fromARGB(255, 181, 181, 181),
  //           fontWeight: FontWeight.w300,
  //           fontFamily: 'Jost*',
  //           fontSize: 16,
  //         ),
  //         getTitles: (value) {
  //           return (value.toInt()).toString();
  //         },
  //         reservedSize: 28,
  //         margin: 12,
  //       ),
  //     ),
  //     borderData: FlBorderData(
  //       show: true,
  //       border: Border.symmetric(
  //         horizontal: BorderSide(
  //             color: const Color.fromARGB(255, 170, 170, 170), width: 1.2),
  //       ),
  //     ),
  //     minX: 0,
  //     maxX: 11,
  //     minY: 0,
  //     maxY: 6, //set to highest v
  //     lineBarsData: [
  //       LineChartBarData(
  //         spots: const [
  //           FlSpot(0, 3),
  //           FlSpot(2.6, 2),
  //           FlSpot(4.9, 5),
  //           FlSpot(6.8, 3.1),
  //           FlSpot(8, 4),
  //           FlSpot(9.5, 3),
  //           FlSpot(11, 4),
  //         ],
  //         isCurved: true,
  //         colors: [
  //           gradientColors[0],
  //         ],
  //         barWidth: 2,
  //         isStrokeCapRound: true,
  //         dotData: FlDotData(
  //           show: false,
  //         ),
  //         belowBarData: BarAreaData(
  //           show: true,
  //           colors: gradientColors,
  //           gradientColorStops: [0, 0.5, 1.0],
  //           gradientFrom: const Offset(0, 0),
  //           gradientTo: const Offset(0, 1),
  //         ),
  //       ),
  //     ],
  //   );
  // }
  //
  // LineChartData avgData() {
  //   return LineChartData(
  //     lineTouchData: LineTouchData(enabled: false),
  //     gridData: FlGridData(
  //       show: true,
  //       drawHorizontalLine: true,
  //       getDrawingVerticalLine: (value) {
  //         return FlLine(
  //           color: const Color(0xff37434d),
  //           strokeWidth: 1,
  //         );
  //       },
  //       getDrawingHorizontalLine: (value) {
  //         return FlLine(
  //           color: const Color(0xff37434d),
  //           strokeWidth: 1,
  //         );
  //       },
  //     ),
  //     titlesData: FlTitlesData(
  //       show: true,
  //       bottomTitles: SideTitles(
  //         showTitles: true,
  //         reservedSize: 22,
  //         getTextStyles: (context, value) => const TextStyle(
  //             color: Color(0xff68737d),
  //             fontWeight: FontWeight.bold,
  //             fontSize: 16),
  //         getTitles: (value) {
  //           switch (value.toInt()) {
  //             case 2:
  //               return 'MAR';
  //             case 5:
  //               return 'JUN';
  //             case 8:
  //               return 'SEP';
  //           }
  //           return '';
  //         },
  //         margin: 8,
  //         interval: 1,
  //       ),
  //       leftTitles: SideTitles(
  //         showTitles: true,
  //         getTextStyles: (context, value) => const TextStyle(
  //           color: Color(0xff67727d),
  //           fontWeight: FontWeight.bold,
  //           fontSize: 15,
  //         ),
  //         getTitles: (value) {
  //           switch (value.toInt()) {
  //             case 1:
  //               return '10k';
  //             case 3:
  //               return '30k';
  //             case 5:
  //               return '50k';
  //           }
  //           return '';
  //         },
  //         reservedSize: 32,
  //         interval: 1,
  //         margin: 12,
  //       ),
  //       topTitles: SideTitles(showTitles: false),
  //       rightTitles: SideTitles(showTitles: false),
  //     ),
  //     borderData: FlBorderData(
  //         show: true,
  //         border: Border.all(color: const Color(0xff37434d), width: 1)),
  //     minX: 0,
  //     maxX: 11,
  //     minY: 0,
  //     maxY: 6,
  //     lineBarsData: [
  //       LineChartBarData(
  //         spots: const [
  //           FlSpot(0, 3.44),
  //           FlSpot(2.6, 3.44),
  //           FlSpot(4.9, 3.44),
  //           FlSpot(6.8, 3.44),
  //           FlSpot(8, 3.44),
  //           FlSpot(9.5, 3.44),
  //           FlSpot(11, 3.44),
  //         ],
  //         isCurved: true,
  //         colors: [
  //           ColorTween(begin: gradientColors[0], end: gradientColors[1])
  //               .lerp(0.2)!,
  //           ColorTween(begin: gradientColors[0], end: gradientColors[1])
  //               .lerp(0.2)!,
  //         ],
  //         barWidth: 5,
  //         isStrokeCapRound: true,
  //         dotData: FlDotData(
  //           show: false,
  //         ),
  //         belowBarData: BarAreaData(show: true, colors: [
  //           ColorTween(begin: gradientColors[0], end: gradientColors[1])
  //               .lerp(0.2)!
  //               .withOpacity(0.1),
  //           ColorTween(begin: gradientColors[0], end: gradientColors[1])
  //               .lerp(0.2)!
  //               .withOpacity(0.1),
  //         ]),
  //       ),
  //     ],
  //   );
  // }
}
