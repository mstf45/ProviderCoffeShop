import 'package:flutter/material.dart';

import '../models/coffee.dart';

class CoffeeTile extends StatelessWidget {
  final Widget icon;
  final Coffee coffee;
  void Function()? onPressed;
  CoffeeTile({
    Key? key,
    required this.coffee,
    required this.onPressed,
    required this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text(coffee.price),
        leading: Image.asset(coffee.imagePath),
        trailing: IconButton(
          onPressed: onPressed,
          icon: icon,
        ),
      ),
    );
  }
}
