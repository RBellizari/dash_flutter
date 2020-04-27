/// Donut chart with labels example. This is a simple pie chart with a hole in
/// the middle.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class Chart07 extends StatefulWidget {
  _Chart07State createState() => _Chart07State();
}

class _Chart07State extends State<Chart07> {
  List<charts.Series> seriesList;

  static List<charts.Series<LinearSales, String>> _createSampleData() {
    final data = [
      LinearSales('12 a 24 meses', 0, Color(0xff38B2FC)),
      LinearSales('25 a 36 meses', 0, Color(0xffFC5154)),
      LinearSales('37 a 60 meses', 0, Color(0xff51FC80)),
      LinearSales('61 a 120 meses', 5, Color(0xffE63E95)),
      LinearSales('121 a 240 meses', 5, Color(0xff30B6B0)),
      LinearSales('241 a 360 meses', 90, Color(0xffFE7A45)),
    ];

    return [
      charts.Series<LinearSales, String>(
        id: 'Sales',
        domainFn: (LinearSales sales, _) => sales.active,
        measureFn: (LinearSales sales, _) => sales.sales,
        colorFn: (LinearSales sales, _) =>
            charts.ColorUtil.fromDartColor(sales.colorgraf),
        data: data,
        // Set a label accessor to control the text of the arc label.
        //labelAccessorFn: (LinearSales row, _) => '${row.sales} %',
      )
    ];
  }

  @override
  void initState() {
    super.initState();
    seriesList = _createSampleData();
  }

  @override
  Widget build(BuildContext context) {
    return charts.PieChart(seriesList,
        animate: true,
        animationDuration: Duration(seconds: 2),
        behaviors: [
        new charts.DatumLegend(
          // Positions for "start" and "end" will be left and right respectively
          // for widgets with a build context that has directionality ltr.
          // For rtl, "start" and "end" will be right and left respectively.
          // Since this example has directionality of ltr, the legend is
          // positioned on the right side of the chart.
          position: charts.BehaviorPosition.end,
          // By default, if the position of the chart is on the left or right of
          // the chart, [horizontalFirst] is set to false. This means that the
          // legend entries will grow as new rows first instead of a new column.
          horizontalFirst: false,
          // This defines the padding around each legend entry.
          cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
          // Set [showMeasures] to true to display measures in series legend.
          //showMeasures: true,
          // Configure the measure value to be shown by default in the legend.
          legendDefaultMeasure: charts.LegendDefaultMeasure.firstValue,
          // Optionally provide a measure formatter to format the measure value.
          // If none is specified the value is formatted as a decimal.
          // measureFormatter: (num value) {
          //   return value == null ? '-' : '${value}k';
          // },
        ),
      ],
        defaultRenderer: charts.ArcRendererConfig(
            arcWidth: 100, 
            ));
  }

  /// Create one series with sample hard coded data.

}

/// Sample linear data type.
class LinearSales {
  final String active;
  
  final int sales;
  final Color colorgraf;

  LinearSales(this.active, this.sales, this.colorgraf);
}
