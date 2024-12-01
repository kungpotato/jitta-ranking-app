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
