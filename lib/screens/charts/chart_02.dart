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
       OrdinalSales('Plano Empresário', 5),
       OrdinalSales('Mutuário Final', 25),
       OrdinalSales('2016', 100),
      
    ];

    final tableSalesData = [
       OrdinalSales('Plano Empresário', 25),
       OrdinalSales('Mutuário Final', 50),
       OrdinalSales('2016', 10),
       
    ];

    final mobileSalesData = [
       OrdinalSales('Plano Empresário', 10),
       OrdinalSales('Mutuário Final', 15),
       OrdinalSales('Mutuário Final', 50),
      
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

  OrdinalSales(this.year, this.sales);
}