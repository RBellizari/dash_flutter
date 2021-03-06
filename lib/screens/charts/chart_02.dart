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
       OrdinalSales('Plano Empresário', 60,0,0),
       OrdinalSales('Mutuário Final', 18, 0, 0),
       OrdinalSales('Total', 68, 0, 0),
      
    ];

     final desktopSalesData1 = [
       OrdinalSales('Plano Empresário', 0,0,0),
       OrdinalSales('Mutuário Final', 2, 0, 0),
       OrdinalSales('Total', 2, 0, 0),
      
    ];

     final desktopSalesData2 = [
       OrdinalSales('Plano Empresário', 60,0,0),
       OrdinalSales('Mutuário Final', 20, 0, 0),
       OrdinalSales('Total', 70, 0, 0),
      
    ];

    

    

    return [
     charts.Series<OrdinalSales, String>(
        id: 'Saldo Atual',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff51FC80)),
        data: desktopSalesData,
      ),
      charts.Series<OrdinalSales, String>(
        id: 'Saldo em Atraso',
        domainFn: (OrdinalSales sales1, _) => sales1.year,
        measureFn: (OrdinalSales sales1, _) => sales1.sales,
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffFC5154)),
        data: desktopSalesData1,
      ),

       charts.Series<OrdinalSales, String>(
        id: 'Saldo Devedor Total',
        domainFn: (OrdinalSales sales2, _) => sales2.year,
        measureFn: (OrdinalSales sales2, _) => sales2.sales,
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff38B2FC)),
        data: desktopSalesData2,
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
    return  charts.BarChart(
      seriesList,
       animate: true,
        animationDuration: Duration(seconds: 2),
      behaviors:  [charts.SeriesLegend()],
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