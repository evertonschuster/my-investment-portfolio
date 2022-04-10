/// Bar chart example
import 'package:flutter/material.dart';
import 'package:my_investment_portfolio/pages/widgets/loading/loading.dart';
import 'package:provider/provider.dart';

import '../../home_controller.dart';
import '../card_widget.dart';
import 'portfolio_graph_widget.dart';

class PortfolioDistributionCard extends StatelessWidget {
  const PortfolioDistributionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      title: "Divisão do portifólio",
      child: SizedBox(
        height: 250,
        child: Padding(
          padding: const EdgeInsets.only(top: 32),
          child: Consumer<HomeController>(
            builder: (context, value, child) {
              if (value.isLoading) {
                return const SizedBox.expand(child: Center(child: Loading()));
              }

              return PortfolioGraphWidget.withSampleData();
            },
          ),
        ),
      ),
    );
  }
}
