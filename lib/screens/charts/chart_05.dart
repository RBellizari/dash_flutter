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
class Chart05 extends StatefulWidget {
 
  
   _Chart05State createState() => _Chart05State();

}

class _Chart05State extends State<Chart05> {
   static const secondaryMeasureAxisId = 'secondaryMeasureAxisId';
   List<charts.Series> seriesList;

   static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final globalSalesData = [
      new OrdinalSales('PE', 15, Color(0xff38B2FC)),
      new OrdinalSales('AQUISIÇÃO', 15, Color(0xff38B2FC)),
      new OrdinalSales('HOME', 10, Color(0xff38B2FC)),
      new OrdinalSales('REPASSE', 10, Color(0xff38B2FC)),
     
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
    return new charts.BarChart(
      seriesList,
      //behaviors: [new charts.SeriesLegend()],
      barRendererDecorator: new charts.BarLabelDecorator<String>(),
      barGroupingType: charts.BarGroupingType.grouped,
      vertical: true,
      // It is important when using both primary and secondary axes to choose
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