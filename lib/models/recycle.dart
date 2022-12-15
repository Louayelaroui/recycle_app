import 'package:flutter/foundation.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> prices;
  final List<String> steps;
  final int min_countite;
  final Complexity complexity;
  final Affordability affordability;
  /// Metal   Clothing Textile Inert Waste
  final bool Plastic;
  final bool Wood;
  final bool WEEE;
  final bool Glass;
  final bool Metal;
  final bool Clothing;
  final bool Textile;
  final bool Inert;
  final bool Waste;


  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.prices,
    required this.steps,
    required this.min_countite,
    required this.complexity,
    required this.affordability,
    required this.Plastic,
    required this.Wood,
    required this.WEEE,
    required this.Glass,
    required this.Metal,
    required this.Clothing,
    required this.Textile,
    required this.Inert,
    required this.Waste,
  });
}
