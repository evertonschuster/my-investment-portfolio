class StockPortfolio {
  late final List<Stock> portfolio;
}

class Stock {
  late final String name;
  late final double total;

  Stock(this.name, this.total);
}
