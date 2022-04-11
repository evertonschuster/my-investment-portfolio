import 'package:my_investment_portfolio/domain/assets/models/stock_portfolio.dart';

abstract class IAssetRepository {
  Future<StockPortfolio> getStockPortfolio();
}
