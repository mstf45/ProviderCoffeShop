import 'package:coffeshop/pages/home_page.dart';
import 'package:flutter/material.dart';

class StartPages extends StatefulWidget {
  const StartPages({Key? key}) : super(key: key);

  @override
  State<StartPages> createState() => _StartPagesState();
}

class _StartPagesState extends State<StartPages> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/latte.png'),
              Text(
                'Coffee Day',
                style: TextStyle(
                  color: Colors.brown.shade900,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Kahveni nasıl seversin?',
                style: TextStyle(
                  color: Colors.brown.shade600,
                  fontSize: 25,
                  inherit: true,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.brown.shade700,
                  ),
                  width: double.infinity,
                  child: const Center(
                    child: Text(
                      'Enter Shop',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
