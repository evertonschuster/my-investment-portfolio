import 'package:flutter/material.dart';
import 'package:my_investment_portfolio/pages/widgets/loading/loading.dart';

import 'splash_controller.dart';

class SplashPage extends StatelessWidget {
  final SplashController controller = SplashController();

  SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) => controller.init());

    return const Scaffold(
      body: Center(
        child: Loading(),
      ),
    );
  }
}
