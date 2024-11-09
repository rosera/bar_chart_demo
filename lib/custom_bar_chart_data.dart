class BarColumn {
  final int xPos;
  final String xLabel;
  final double yValue;

  BarColumn({required this.xPos, required this.xLabel, required this.yValue});
}

class BarColumnData {
  final double monColumn;
  final double tuesColumn;
  final double wedColumn;
  final double thursColumn;
  final double friColumn;

  BarColumnData({
    required this.monColumn,
    required this.tuesColumn,
    required this.wedColumn,
    required this.thursColumn,
    required this.friColumn,
  });

  List <BarColumn> barColumnData = [];

  void initializeBarColumnData() {
    barColumnData = [
      BarColumn(xPos: 0, xLabel: 'M', yValue: monColumn),
      BarColumn(xPos: 1, xLabel: 'T', yValue: tuesColumn),
      BarColumn(xPos: 2, xLabel: 'W', yValue: wedColumn),
      BarColumn(xPos: 3, xLabel: 'T', yValue: thursColumn),
      BarColumn(xPos: 4, xLabel: 'F', yValue: friColumn),
    ];
  }
}