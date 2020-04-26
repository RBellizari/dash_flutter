/// Donut chart with labels example. This is a simple pie chart with a hole in
/// the middle.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class DonutAutoLabelChart extends StatefulWidget {
  _DonutAutoLabelChartState createState() => _DonutAutoLabelChartState();
}

class _DonutAutoLabelChartState extends State<DonutAutoLabelChart> {
  List<charts.Series> seriesList;

  static List<charts.Series<LinearSales, String>> _createSampleData() {
    final data = [
      LinearSales('Ativo', 70, Color(0xffB7FFA6)),
      LinearSales('Liquidado', 18, Color(0xff89D1E8)),
      LinearSales('Cancelado', 12, Color(0xffF59B82)),
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
        labelAccessorFn: (LinearSales row, _) => '${row.sales}%',
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
        animationDuration: Duration(seconds: 5),
        behaviors: [new charts.DatumLegend()],
        defaultRenderer: charts.ArcRendererConfig(
            arcWidth: 40, arcRendererDecorators: [charts.ArcLabelDecorator()]));
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
