const String fetchPokemonListQuery = r'''
query Stock($stockId: String, $stockStockId2: Int) {
  stock(id: $stockId, stockId: $stockStockId2) {
    title
    symbol
  }
}
''';
