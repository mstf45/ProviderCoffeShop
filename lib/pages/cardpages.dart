import 'package:coffeshop/components/coffee_tile.dart';
import 'package:coffeshop/models/coffe_shop.dart';
import 'package:coffeshop/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardPages extends StatefulWidget {
  const CardPages({Key? key}) : super(key: key);

  @override
  State<CardPages> createState() => _CardPagesState();
}

class _CardPagesState extends State<CardPages> {
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  void payNow() {}

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Text(
                'Sepetiniz',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: value.userCard.length,
                  itemBuilder: (context, index) {
                    Coffee eachCoffee = value.userCard[index];
                    return CoffeeTile(
                      coffee: eachCoffee,
                      onPressed: () => removeFromCart(eachCoffee),
                      icon: const Icon(Icons.delete),
                    );
                  },
                ),
              ),
              GestureDetector(
                onTap: payNow,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'Şimdi öde',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
