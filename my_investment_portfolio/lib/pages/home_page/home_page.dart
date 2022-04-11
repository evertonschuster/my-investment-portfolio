import 'package:flutter/material.dart';
import 'package:my_investment_portfolio/pages/home_page/home_controller.dart';
import 'package:my_investment_portfolio/pages/home_page/widget/app_bar/app_bar_widget.dart';
import 'package:my_investment_portfolio/pages/home_page/widget/historical_profitability/historical_profitability_card.dart';
import 'package:my_investment_portfolio/pages/home_page/widget/performace/performace_card.dart';
import 'package:my_investment_portfolio/pages/home_page/widget/portfolio_distribution/portfolio_distribution_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => HomeController.factory(),
        child: CustomScrollView(
          slivers: [
            const AppBarWidget(),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Column(
                    children: const [
                      PerformaceCard(),
                      PortfolioDistributionCard(),
                      HistoricalProfitabilityCard(),
                    ],
                  );
                },
                childCount: 1,
              ),
            ),
          ],
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
