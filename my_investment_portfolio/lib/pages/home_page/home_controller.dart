import 'package:flutter/material.dart';
import 'package:my_investment_portfolio/domain/assets/models/stock_portfolio.dart';
import 'package:my_investment_portfolio/domain/assets/repositories/i_asset_repository.dart';
import 'package:my_investment_portfolio/infra/assets/asset_repository.dart';

class HomeController extends ChangeNotifier {
  final IAssetRepository _repository;
  StockPortfolio? stockPortfolio;
  bool isLoading = false;

  HomeController(this._repository) {
    start();
  }

  start() async {
    isLoading = true;
    notifyListeners();

    try {
      await Future.delayed(const Duration(seconds: 1));
      stockPortfolio = await _repository.getStockPortfolio();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  factory HomeController.factory() {
    return HomeController(AssetRepository());
  }
}
