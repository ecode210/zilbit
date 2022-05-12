import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zilbit/constants.dart';

class WalletGraph extends StatefulWidget {
  const WalletGraph({Key? key}) : super(key: key);

  @override
  _WalletGraphState createState() => _WalletGraphState();
}

class _WalletGraphState extends State<WalletGraph> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 190.h,
          width: 335.w,
        ),
        Positioned(
          right: -15.w,
          child: SizedBox(
            width: 335.w,
            height: 190.h,
            child: LineChart(mainData()),
          ),
        ),
      ],
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    TextStyle style = Theme.of(context).textTheme.subtitle1!.copyWith(
          color: blackColor,
          fontSize: 10.sp,
        );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = Text('JAN', style: style);
        break;
      case 1:
        text = Text('FEB', style: style);
        break;
      case 2:
        text = Text('MAR', style: style);
        break;
      case 3:
        text = Text('APR', style: style);
        break;
      case 4:
        text = Text('MAY', style: style);
        break;
      case 5:
        text = Text('JUN', style: style);
        break;
      case 6:
        text = Text('JUL', style: style);
        break;
      case 7:
        text = Text('AUG', style: style);
        break;
      case 8:
        text = Text('SEP', style: style);
        break;
      case 9:
        text = Text('OCT', style: style);
        break;
      case 10:
        text = Text('NOV', style: style);
        break;
      case 11:
        text = Text('DEC', style: style);
        break;
      default:
        text = Text('', style: style);
        break;
    }

    return text;
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 20,
            interval: 1,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      ),
      borderData: FlBorderData(show: false),
      clipData: FlClipData(top: true, bottom: true, left: true, right: true),
      lineTouchData: LineTouchData(enabled: false),
      minX: 0,
      maxX: 12,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(1, 2),
            FlSpot(2, 5),
            FlSpot(3, 3),
            FlSpot(4, 4),
            FlSpot(5, 3),
            FlSpot(6, 4),
            FlSpot(7, 3),
            FlSpot(8, 2),
            FlSpot(9, 5),
            FlSpot(10, 3),
            FlSpot(11, 4),
          ],
          isCurved: false,
          color: Colors.green,
          barWidth: 5,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                Colors.green.withOpacity(0.3),
                Colors.green.withOpacity(0),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ],
    );
  }
}
