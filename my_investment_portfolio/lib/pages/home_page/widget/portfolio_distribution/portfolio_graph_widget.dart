import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:my_investment_portfolio/domain/models/assets/stock_portfolio.dart';

class PortfolioGraphWidget extends StatelessWidget {
  final List<charts.Series<Stock, String>> seriesList;

  PortfolioGraphWidget(this.seriesList);

  /// Creates a [PieChart] with sample data and no transition.
  factory PortfolioGraphWidget.withSampleData() {
    return PortfolioGraphWidget(
      _createSampleData(),
      // Disable animations for image tests.
    );
  }

  @override
  Widget build(BuildContext context) {
    return charts.PieChart<String>(
      seriesList,
      animate: true,
      defaultRenderer: charts.ArcRendererConfig(
        arcWidth: 30,
        arcRendererDecorators: [
          charts.ArcLabelDecorator(
            labelPosition: charts.ArcLabelPosition.outside,
          ),
        ],
      ),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<Stock, String>> _createSampleData() {
    final data = [
      Stock('Biticonho', 75),
      Stock('Ações BR', 100),
      Stock('ETF BR', 50),
      Stock('Ações EUA', 5),
    ];

    return [
      charts.Series<Stock, String>(
        id: 'Segments',
        domainFn: (Stock segment, _) => segment.name,
        measureFn: (Stock segment, _) => segment.total,
        colorFn: (_, i) => charts.Color(
          r: 103,
          g: 58,
          b: 183,
          a: ((((i ?? 0) + 1) * 255) / data.length).round(),
        ),
        data: data,
      )
    ];
  }
}
