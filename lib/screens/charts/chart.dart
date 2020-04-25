/// Donut chart with labels example. This is a simple pie chart with a hole in
/// the middle.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class DonutAutoLabelChart extends StatefulWidget {

  
  _DonutAutoLabelChartState createState() => _DonutAutoLabelChartState();
}

class _DonutAutoLabelChartState extends State<DonutAutoLabelChart> {
  List<charts.Series> seriesList;

   static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data = [
       LinearSales(0, 100),
       LinearSales(1, 75),
       LinearSales(2, 25),
       LinearSales(3, 5),
    ];

    return [
       charts.Series<LinearSales, int>(
        id: 'Sales',
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
        // Set a label accessor to control the text of the arc label.
        labelAccessorFn: (LinearSales row, _) => '${row.year}: ${row.sales}',
      )
    ];
  }

  @override
  void initState(){
    super.initState();
    seriesList = _createSampleData();
  }

  @override
  Widget build(BuildContext context) {
    return  charts.PieChart(seriesList,

      
        defaultRenderer:  charts.ArcRendererConfig(
            arcWidth: 60,
            arcRendererDecorators: [ charts.ArcLabelDecorator()]));
  }

  /// Create one series with sample hard coded data.
 
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}
