import 'package:bar_chart_demo/custom_bar_chart_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomBarChart extends StatelessWidget {
  final List effortTracker;
  const CustomBarChart({super.key, required this.effortTracker});

  @override
  Widget build(BuildContext context) {
    BarColumnData barChartData = BarColumnData(
        monColumn: effortTracker[0],
        tuesColumn: effortTracker[1],
        wedColumn: effortTracker[2],
        thursColumn: effortTracker[3],
        friColumn: effortTracker[4]
    );

    barChartData.initializeBarColumnData();

    return BarChart(
        BarChartData(
          maxY: 100,
          minY: 0,
          gridData: const FlGridData(show: false),
          borderData: FlBorderData(show: false),
          titlesData: const FlTitlesData(
            show: true,
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            // topTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: getTitleValues)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: getTitleText)),
          ),

          barGroups: barChartData.barColumnData.map(
                (item) => BarChartGroupData(
                    x: item.xPos,
                    barRods: [
                      BarChartRodData(
                          toY: item.yValue,
                          width: 25,
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(4),
                      )
                    ],
                  // showingTooltipIndicators: [0],
                )
            ).toList(),
        ),
    );
  }
}

Widget getTitleText(double value, TitleMeta meta){
  const style = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  Widget text;

  switch (value.toInt()) {
    case 0:
        text = const Text('M', style: style);
        break;
    case 1:
      text = const Text('T', style: style);
      break;
    case 2:
      text = const Text('W', style: style);
      break;
    case 3:
      text = const Text('T', style: style);
      break;
    case 4:
      text = const Text('F', style: style);
      break;
    default:
      text = const Text('Error', style: style);
      break;
  }

  return SideTitleWidget(axisSide: meta.axisSide, space: 4, child: text);
}

Widget getTitleValues(double value, TitleMeta meta){
  const style = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  Widget text;
  text = Text("$value", style: style);

  return SideTitleWidget(axisSide: meta.axisSide, space: 4, child: text);
}
