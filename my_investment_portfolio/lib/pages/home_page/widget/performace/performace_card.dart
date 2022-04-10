import 'package:flutter/material.dart';
import 'package:my_investment_portfolio/pages/home_page/widget/card_widget.dart';
import 'package:my_investment_portfolio/pages/home_page/widget/performace/performace_details_widget.dart';

class PerformaceCard extends StatelessWidget {
  const PerformaceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CardWidget(
      title: "Performance",
      child: SizedBox(
        height: 250,
        child: Padding(
          padding: EdgeInsets.only(top: 16),
          child: PerformaceDetailsWidget(),
        ),
      ),
    );
  }
}
