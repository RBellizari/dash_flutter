/// Bar chart example
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

/// Example of using a primary and secondary axis (left & right respectively)
/// for a set of grouped bars. This is useful for comparing Series that have
/// different units (revenue vs clicks by region), or different magnitudes (2017
/// revenue vs 1/1/2017 revenue by region).
///
/// The first series plots using the primary axis to position its measure
/// values (bar height). This is the default axis used if the measureAxisId is
/// not set.
///
/// The second series plots using the secondary axis due to the measureAxisId of
/// secondaryMeasureAxisId.
///
/// Note: primary and secondary may flip left and right positioning when
/// RTL.flipAxisLocations is set.
class Chart06 extends StatefulWidget {
 
  
   _Chart06State createState() => _Chart06State();

}

class _Chart06State extends State<Chart06> {
   List<charts.Series> seriesList;

   static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final globalSalesData = [
       OrdinalSales('241 a 360 meses', 46, Color(0xffFC5154)),
       OrdinalSales('121 a 240 meses', 2, Color(0xffFC5154)),
       OrdinalSales('61 a 120 meses', 2, Color(0xffFC5154)),
       OrdinalSales('37 a 60 meses', 0, Color(0xffFC5154)),
       OrdinalSales('25 a 36 meses', 0, Color(0xffFC5154)),
       OrdinalSales('12 a 24 meses', 0, Color(0xffFC5154)),
     
    ];

    

    return [
       charts.Series<OrdinalSales, String>(
        id: 'Mutuário Final',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: globalSalesData,
        colorFn: (OrdinalSales sales, _) =>
            charts.ColorUtil.fromDartColor(sales.colorgraf),
        labelAccessorFn: (OrdinalSales sales, _) =>
              '${sales.sales.toString()}'
      ),
      // Set the 'Los Angeles Revenue' series to use the secondary measure axis.
      // All series that have this set will use the secondary measure axis.
      // All other series will use the primary measure axis.
    ];
  }

  @override
  void initState() {
    super.initState();
    seriesList = _createSampleData();
  }

  @override
  Widget build(BuildContext context) {
    // For horizontal bar charts, set the [vertical] flag to false.
    return  charts.BarChart(
      seriesList,
       animate: true,
        animationDuration: Duration(seconds: 2),
      //behaviors: [new charts.SeriesLegend()],
      barRendererDecorator:  charts.BarLabelDecorator<String>(),
      barGroupingType: charts.BarGroupingType.grouped,
      vertical: false,
      // It is important when using both primar  and secondary axes to choose
      // the same number of ticks for both sides to get the gridlines to line
      // up.
    );
  }

  /// Create series list with multiple series
  
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;
  final Color colorgraf;

  OrdinalSales(this.year, this.sales, this.colorgraf);
}