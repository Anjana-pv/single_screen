import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            
            Navigator.pop(context);
          },
        ),   
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark_outline_sharp),
            onPressed: () {   
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {
            },
          ),
        ],
      ),
      body: const SafeArea(
        child: Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}
