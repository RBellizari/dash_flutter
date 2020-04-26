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
       OrdinalSales('Plano Empresário', 5, 10,20),
       OrdinalSales('Mutuário Final', 25, 20, 30),
       OrdinalSales('Total', 100, 30, 40),
      
    ];

    

    

    return [
     charts.Series<OrdinalSales, String>(
        id: 'Saldo Atual',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: desktopSalesData,
      ),
      charts.Series<OrdinalSales, String>(
        id: 'Saldo atraso',
        domainFn: (OrdinalSales sales1, _) => sales1.year,
        measureFn: (OrdinalSales sales1, _) => sales1.sales,
        data: desktopSalesData,
      ),

       charts.Series<OrdinalSales, String>(
        id: 'Saldo atraso',
        domainFn: (OrdinalSales sales2, _) => sales2.year,
        measureFn: (OrdinalSales sales2, _) => sales2.sales,
        data: desktopSalesData,
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
  final int sales2;

  OrdinalSales(this.year, this.sales, this.sales1, this.sales2);
}