import 'package:flutter/material.dart';

class PerformaceDetailsWidget extends StatelessWidget {
  const PerformaceDetailsWidget({Key? key}) : super(key: key);

  Widget _getHeaderPerformed() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            "6,7%",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Rentabilidade atual",
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }

  Widget _getRow(BuildContext context, Widget child) {
    return Container(
      child: child,
      margin: const EdgeInsets.only(left: 8, right: 8),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Theme.of(context).dividerColor,
          ),
        ),
      ),
    );
  }

  Widget _getPatrimony(BuildContext context) {
    return _getRow(
      context,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text("Patrimônio"),
          Text("R\$ 76.707,99"),
        ],
      ),
    );
  }

  Widget _getPatrimonyCost(BuildContext context) {
    return _getRow(
      context,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text("Custo de aquisição"),
          Text("R\$ 76.707,99"),
        ],
      ),
    );
  }

  Widget _getDividendAomont(BuildContext context) {
    return _getRow(
      context,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text("Proventos acumulados"),
          Text("R\$ 76.707,99"),
        ],
      ),
    );
  }

  Widget _getTradeAomont(BuildContext context) {
    return _getRow(
      context,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text("Lucro com operações"),
          Text("R\$ 76.707,99"),
        ],
      ),
    );
  }

  Widget _geProfitAomont(BuildContext context) {
    return _getRow(
      context,
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Lucro",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "R\$ 76.707,99",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _getHeaderPerformed(),
          _getPatrimony(context),
          _getPatrimonyCost(context),
          _getDividendAomont(context),
          _getTradeAomont(context),
          _geProfitAomont(context),
        ],
      ),
    );
  }
}
