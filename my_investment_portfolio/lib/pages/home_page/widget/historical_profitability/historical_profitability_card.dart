import 'package:flutter/material.dart';
import 'package:my_investment_portfolio/pages/home_page/home_controller.dart';
import 'package:my_investment_portfolio/pages/widgets/loading/loading.dart';
import 'package:provider/provider.dart';

import '../card_widget.dart';
import 'historical_graph_widget.dart';

class HistoricalProfitabilityCard extends StatelessWidget {
  const HistoricalProfitabilityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardWidget(
      title: "Rentabilidade histórica",
      child: SizedBox(
        height: 250,
        child: Padding(
          padding: const EdgeInsets.only(top: 32),
          child: Consumer<HomeController>(
            builder: (context, value, child) {
              if (value.isLoading) {
                return const SizedBox.expand(child: Center(child: Loading()));
              }

              return HistoricalGraphWidget.withSampleData();
            },
          ),
        ),
      ),
    );
  }
}
