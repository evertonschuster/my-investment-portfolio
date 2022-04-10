import 'package:flutter/material.dart';
import 'package:my_investment_portfolio/pages/home_page/home_controller.dart';
import 'package:my_investment_portfolio/pages/home_page/widget/historical_profitability/historical_profitability_card.dart';
import 'package:my_investment_portfolio/pages/home_page/widget/performace/performace_card.dart';
import 'package:my_investment_portfolio/pages/home_page/widget/portfolio_distribution/portfolio_distribution_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Seja bem vindo"),
      ),
      body: ChangeNotifierProvider(
        create: (context) => HomeController.factory(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              PerformaceCard(),
              PortfolioDistributionCard(),
              HistoricalProfitabilityCard(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
