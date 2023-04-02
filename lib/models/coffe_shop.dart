import 'package:flutter/widgets.dart';

import 'coffee.dart';

class CoffeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(
      'Türk Kahvesi',
      '15.0',
      'assets/türk_kahvesi.png',
    ),
    Coffee(
      'Latte',
      '8.0',
      'assets/latte.png',
    ),
    Coffee(
      'Espresso',
      '20.0',
      'assets/espresso.png',
    ),
    Coffee(
      'Cappuccino',
      '30.0',
      'assets/cappuccino.png',
    ),
    Coffee(
      'Americano',
      '1.0',
      'assets/americano.png',
    ),
  ];
  //user Card
  List<Coffee> _userCard = [];

  //get coffe list
  List<Coffee> get coffeeShop => _shop;

  //get user card
  List<Coffee> get userCard => _userCard;

  //add item to cart
  void addItemToCard(Coffee coffee) {
    _userCard.add(coffee);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCard.remove(coffee);
    notifyListeners();
  }
}
