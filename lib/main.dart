import 'package:flutter/material.dart';
import 'models/food.dart'; //importing food.dart

void main() {
  runApp(const MenuApp());
}

class MenuApp extends StatelessWidget {
  const MenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    //List of Food
    List<Food> food = [
      Food(name: 'Pasta', imgPath: 'assets/Images/pasta.jpg'),
      Food(name: 'Burger', imgPath: 'assets/Images/burger.jpg'),
      Food(name: 'Sushi', imgPath: 'assets/Images/suchi.jpg'),
      Food(name: 'Pizza', imgPath: 'assets/Images/pizza.jpg'),
      Food(name: 'Biryani', imgPath: 'assets/Images/biryani.jpg'),
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade300,
          title: const Text(
            "Menu",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: food.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      food[index].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      food[index].imgPath,
                      width: 125,
                      height: 125,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
