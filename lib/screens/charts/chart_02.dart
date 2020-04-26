/// Bar chart example
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class StackedBarChart extends StatefulWidget {
  

 

  _StackedBarChartState createState() => _StackedBarChartState();

} 

class _StackedBarChartState extends State<StackedBarChart> {

List<charts.Series> seriesList;


/// Create series list with multiple series
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final desktopSalesData = [
       OrdinalSales('Plano Empresário', 5, 1),
      
      
    ];

    final tableSalesData = [
       OrdinalSales('Mutuário Final', 25, 10),
      
       
    ];

    final mobileSalesData = [
       OrdinalSales('Total', 10, 20),
       
      
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Saldo Atual',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: desktopSalesData,
      ),
      new charts.Series<OrdinalSales, String>(
        id: 'Saldo em Atraso',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: tableSalesData,
      ),
      new charts.Series<OrdinalSales, String>(
        id: 'Saldo Devedor Total',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: mobileSalesData,
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
    seriesList = _createSampleData();
  }

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      behaviors: [new charts.SeriesLegend()],
      barGroupingType: charts.BarGroupingType.stacked,
    );
  }

  
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;
  final int sales1;

  OrdinalSales(this.year, this.sales, this.sales1);
}