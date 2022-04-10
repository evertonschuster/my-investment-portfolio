import 'package:my_investment_portfolio/domain/models/assets/stock_portfolio.dart';

abstract class IAssetRepository {
  Future<StockPortfolio> getStockPortfolio();
}
