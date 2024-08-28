import 'package:flutter/material.dart';
import 'package:single_ui/controller/functions/fuctions.dart';
import 'package:single_ui/screen/home_screen.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required double previousOffset,
  }) : _previousOffset = previousOffset;

  final double _previousOffset;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'lib/assest/imag.png',
                width: MediaQuery.of(context).size.width,
                height:
                    MediaQuery.of(context).size.height *
                        0.7,
                fit: BoxFit.fitHeight,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height:
                    MediaQuery.of(context).size.height *
                        0.7, 
                color: myBackground(_previousOffset),
              ),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min, 
                  children: [
                    SizedBox(
                      height: _previousOffset > 220
                          ? MediaQuery.of(context)
                                  .size
                                  .height *
                              0.6
                          : MediaQuery.of(context)
                                  .size
                                  .height *
                              0.7,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 113, 237, 117),
                      ),
                      child: const Text(
                        'Completed',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Zero To One",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.6,
                        color: Color.fromARGB(
                            255, 10, 10, 10),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "In house team",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}