import 'package:flutter/material.dart';

class BooksWidget extends StatelessWidget {
  const BooksWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 260,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 150,
                height: 200,
                margin: const EdgeInsets.only(right: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image:
                                AssetImage('lib/assest/imag.png'),
                            fit: BoxFit.fitHeight,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    const SizedBox(height: 7),
                    const Text(
                      'Zero To Hero',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}