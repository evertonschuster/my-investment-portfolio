import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:my_investment_portfolio/App/app_context.dart';
import 'package:my_investment_portfolio/App/theme_data_extensions.dart';
import 'package:my_investment_portfolio/domain/assets/models/stock_portfolio.dart';

class PortfolioGraphWidget extends StatelessWidget {
  final List<charts.Series<Stock, String>> seriesList;

  PortfolioGraphWidget(this.seriesList);

  factory PortfolioGraphWidget.withSampleData() {
    return PortfolioGraphWidget(
      _createSampleData(),
      // Disable animations for image tests.
    );
  }

  @override
  Widget build(BuildContext context) {
    var label = Theme.of(context).textTheme.labelSmall!;
    var color = charts.Color(
      r: label.color!.red,
      b: label.color!.blue,
      g: label.color!.green,
      a: 255,
    );

    return charts.PieChart<String>(
      seriesList,
      animate: true,
      defaultRenderer: charts.ArcRendererConfig(
        // arcWidth: 30,
        arcRendererDecorators: [
          charts.ArcLabelDecorator(
            labelPosition: charts.ArcLabelPosition.outside,
            outsideLabelStyleSpec: charts.TextStyleSpec(
              color: color,
              fontSize: label.fontSize!.round(),
            ),
          ),
        ],
      ),
    );
  }

  static List<charts.Series<Stock, String>> _createSampleData() {
    final data = [
      Stock('Biticonho', 75),
      Stock('Ações BR', 100),
      Stock('ETF BR', 50),
      Stock('Ações EUA', 5),
    ];

    var portfolioGraphColor = Theme.of(AppContext.context).portfolioGraphColor;

    return [
      charts.Series<Stock, String>(
        id: 'Segments',
        domainFn: (Stock segment, _) => segment.name,
        measureFn: (Stock segment, _) => segment.total,
        colorFn: (_, i) => charts.Color(
          r: portfolioGraphColor.red,
          g: portfolioGraphColor.green,
          b: portfolioGraphColor.blue,
          a: ((((i ?? 0) + 1) * 255) / data.length).round(),
        ),
        data: data,
      )
    ];
  }
}
