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
class Chart04 extends StatefulWidget {
 
  
   _Chart04State createState() => _Chart04State();

}

class _Chart04State extends State<Chart04> {
   static const secondaryMeasureAxisId = 'secondaryMeasureAxisId';
   List<charts.Series> seriesList;

   static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final globalSalesData = [
      new OrdinalSales('CHC', 5, Color(0xff38B2FC)),
      new OrdinalSales('CHH', 7, Color(0xff38B2FC)),
      new OrdinalSales('SFH', 23, Color(0xff38B2FC)),
     
    ];

    final losAngelesSalesData = [
      new OrdinalSales('CHC', 3, Color(0xffFC5154)),
      new OrdinalSales('CHH', 4, Color(0xffFC5154)),
      new OrdinalSales('SFH', 8, Color(0xffFC5154)),
      
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Mutuário Final',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: globalSalesData,
        colorFn: (OrdinalSales sales, _) =>
            charts.ColorUtil.fromDartColor(sales.colorgraf),
        labelAccessorFn: (OrdinalSales sales, _) =>
              '${sales.year}: ${sales.sales.toString()}'
      ),
      new charts.Series<OrdinalSales, String>(
        id: 'Plano Empresário',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: losAngelesSalesData,
        colorFn: (OrdinalSales sales, _) =>
            charts.ColorUtil.fromDartColor(sales.colorgraf),
        labelAccessorFn: (OrdinalSales sales, _) =>
              '${sales.year}: ${sales.sales.toString()}'
        
      )..setAttribute(charts.measureAxisIdKey, secondaryMeasureAxisId)
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
    return new charts.BarChart(
      seriesList,
      behaviors: [new charts.SeriesLegend()],
      barGroupingType: charts.BarGroupingType.grouped,
      vertical: false,
      // It is important when using both primary and secondary axes to choose
      // the same number of ticks for both sides to get the gridlines to line
      // up.
      primaryMeasureAxis: new charts.NumericAxisSpec(
          tickProviderSpec:
              new charts.BasicNumericTickProviderSpec(desiredTickCount: 3)),
      secondaryMeasureAxis: new charts.NumericAxisSpec(
          tickProviderSpec:
              new charts.BasicNumericTickProviderSpec(desiredTickCount: 3)),
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