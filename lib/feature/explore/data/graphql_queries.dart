const String fetchCountryQuery = '''
  query ListJittaSectorType {
    availableCountry {
      name
      flag
      displayExchange
      code
    }
  }
''';

const String fetchRankingQuery = r'''
  query ListJittaSectorType($filter: RankingInput) {
    jittaRanking(filter: $filter) {
      data {
        title
        symbol
        stockId
        rank
        status
        nativeName
        name
        market
        jittaScore
        latestLossChance
        latestPrice
        latestPriceDiff {
          percent
          type
          value
        }
        industry
        jittaRankScore
        currency
        exchange
        sector {
          name
          id
        }
      }
      count
    }
  }
''';

const String fetchStockDetailQuery = r'''
  query ListJittaSectorType($stockId: Int, $stockId2: String) {
    stock(stockId: $stockId, id: $stockId2) {
      type
      title
      symbol
      summary
    }
  }
''';
