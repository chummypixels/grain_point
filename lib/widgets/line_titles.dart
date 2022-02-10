import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          //reservedSize: 350,
          getTextStyles: (context, value) {
            const TextStyle(
                color: Color(0xff68737d),
                fontWeight: FontWeight.bold,
                fontSize: 16);
          },

          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return 'JAN';
              case 1:
                return 'FEB';
              case 2:
                return 'MAR';
              case 3:
                return 'APR';
              case 4:
                return 'MAY';
              case 5:
                return 'JUN';
              case 6:
                return 'JUL';
              case 7:
                return 'AUG';
              case 8:
                return 'SEP';
              case 9:
                return 'OCT';
              case 10:
                return 'NOV';
              case 11:
                return 'DEC';
            }
            return '';
          },
          margin: 8,
        ),
        topTitles: SideTitles(
            textAlign: TextAlign.right,
            showTitles: true,
            getTextStyles: (context, value) {
              const TextStyle(
                  color: Color(0xff67727d),
                  fontWeight: FontWeight.bold,
                  fontSize: 16);
            },
            getTitles: (value) {
              switch (value.toInt()) {
                case 0:
                  return 'DY';
                case 2:
                  return 'WK';
                case 4:
                  return 'MT';
                case 6:
                  return 'YR';
              }
              return '';
            },
            reservedSize: 28,
            margin: 12),
      );
}
