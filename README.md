# Jitta_ranking

Welcome to the Jitta Ranking App, a mobile application built to display a stock ranking fetched from
a GraphQL API. Users can explore stock details, filter stocks by market and sector, and enjoy
offline support for seamless usage.

## Features

1. Stock Ranking List
2. Stock Details Screen
3. Filters
4. Offline Support

## Architecture Overview

Layers

	1.Presentation Layer:
	    State Management: Implemented with Riverpod.
        UI Screens and Widgets.
	2.Domain Layer:
	    Business logic, use cases, and models.
	3.Data Layer:
		Repository pattern for data fetching.
		Integration with GraphQL API using libraries like Apollo Client or GraphQL Flutter.
	4.Caching:
		Local data storage using Hive, SQLite, or SharedPreferences.

## Architecture Overview

Prerequisites

	•Flutter SDK installed (≥ version 3.x).
	•Internet connection for the first run (to cache data).
	•Basic knowledge of Flutter.

Installation and Setup

   ```bash
  git clone https://github.com/kungpotato/jitta-ranking-app.git
  cd jitta-ranking-app
   ```

   ```bash
  flutter pub get
   ```

   ```bash
  flutter pub run build_runner build --delete-conflicting-outputs
   ```

   ```bash
  flutter test
   ```

   ```bash
  flutter run
   ```