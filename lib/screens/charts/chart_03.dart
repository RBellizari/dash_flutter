/// Donut chart with labels example. This is a simple pie chart with a hole in
/// the middle.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class Chart00 extends StatefulWidget {
  _Chart00State createState() => _Chart00State();
}

class _Chart00State extends State<Chart00> {
  List<charts.Series> seriesList;

  static List<charts.Series<LinearSales, String>> _createSampleData() {
    final data = [
      LinearSales('CHC', 16, Color(0xff51FC80)),
      LinearSales('CHH', 22, Color(0xff38B2FC)),
      LinearSales('SFH', 62, Color(0xffFC5154)),
    ];

    return [
      charts.Series<LinearSales, String>(
        //colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
        id: 'Sales',
        domainFn: (LinearSales sales, _) => sales.active,
        measureFn: (LinearSales sales, _) => sales.sales,
        colorFn: (LinearSales sales, _) =>
            charts.ColorUtil.fromDartColor(sales.colorgraf),
        data: data,
        // Set a label accessor to control the text of the arc label.
        labelAccessorFn: (LinearSales row, _) => '${row.sales} %',
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
        behaviors: [charts.DatumLegend()],
        defaultRenderer: charts.ArcRendererConfig(
            arcWidth: 100, arcRendererDecorators: [charts.ArcLabelDecorator()]));
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
