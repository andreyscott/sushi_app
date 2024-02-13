import 'package:flutter/material.dart';
import 'package:sushi_app/models/food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
        name: "Salmon Rolls",
        imagePath: "lib/images/sushi1.png",
        price: 23,
        rating: 4.3,
        description:
            "A classic sushi roll with salmon, avocado, and cucumber. End your meal on a sweet note with our selection of freshly baked donuts. From classic glazed to unique matcha and yuzu flavors, we have a sweet treat to satisfy every craving"),
    Food(
        name: "Sushi Platter",
        imagePath: "lib/images/sushi2.png",
        price: 35,
        rating: 4.5,
        description:
            "A platter of sushi with a variety of fish and vegetables.  Celebrate the pure artistry of fresh seafood with our sashimi platters, showcasing the natural beauty and delicate flavors of each cut of fish. Our chefs select the finest fish from around the world, expertly slicing and presenting each piece to highlight its unique qualities."),
    Food(
        name: "Ramen noodles",
        imagePath: "lib/images/ramen.png",
        price: 39,
        rating: 4.8,
        description:
            "A bowl of tasty ramen noodles with pork, egg, and vegetables. Slurp your way through our comforting ramen broths, simmered for hours and bursting with umami. Choose from classic shoyu to adventurous tantan, each customizable with an array of toppings."),
    Food(
        name: "Poke Bowl",
        imagePath: "lib/images/sushi3.png",
        price: 29,
        rating: 4.7,
        description:
            "A bowl of poke with fresh fish, rice, and vegetables.  Dive into our vibrant poke bowls, brimming with fresh fish, colorful vegetables, and bold sauces. Each bowl is a unique culinary adventure and a feast for the eyes."),
  ];

  final List<Food> _cart = [];

  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
