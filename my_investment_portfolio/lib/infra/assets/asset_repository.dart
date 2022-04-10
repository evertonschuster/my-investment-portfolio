import 'package:my_investment_portfolio/domain/models/assets/repositories/i_asset_repository.dart';
import 'package:my_investment_portfolio/domain/models/assets/stock_portfolio.dart';

class AssetRepository extends IAssetRepository {
  @override
  Future<StockPortfolio> getStockPortfolio() {
    // TODO: implement getStockPortfolio
    throw UnimplementedError();
  }
}
