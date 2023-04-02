import 'package:coffeshop/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:coffeshop/models/coffe_shop.dart';

import '../components/coffee_tile.dart';

class ShopPages extends StatefulWidget {
  const ShopPages({Key? key}) : super(key: key);

  @override
  State<ShopPages> createState() => _ShopPagesState();
}

class _ShopPagesState extends State<ShopPages> {
  void addToCart(Coffee coffee) {
    Provider.of<CoffeShop>(context, listen: false).addItemToCard(coffee);
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Başarıyla Eklendi'),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                'Kahveni nasıl seversin ?',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 25),
              Expanded(
                child: ListView.builder(
                  itemCount: value.coffeeShop.length,
                  itemBuilder: (context, index) {
                    Coffee eachCoffee = value.coffeeShop[index];
                    return CoffeeTile(
                      icon: const Icon(Icons.add),
                      onPressed: () => addToCart(eachCoffee),
                      coffee: eachCoffee,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
