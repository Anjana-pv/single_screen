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
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      
                      height: 700,

                      width: 370,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('lib/assest/imag.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(87, 119, 225, 122),
                      ),
                      child: const Text('Completed'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Zero TO One",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text("In house team"),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Details"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("More Info"),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.all(4.0),
                    height: 70,
                    width: 70,
                    color: const Color.fromARGB(255, 225, 224, 221),
                    child: const Center(
                      child: Text(
                        "  09\nReads",
                        style: TextStyle(
                            color: Color.fromARGB(255, 9, 9, 9), fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(4.0),
                    height: 70,
                    width: 70,
                    color: const Color.fromARGB(255, 225, 224, 221),
                    child: const Center(
                      child: Text(
                        '  4.5\nRating',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(4.0),
                    height: 70,
                    width: 70,
                    color: const Color.fromARGB(255, 225, 224, 221),
                    child: const Center(
                      child: Text(
                        '   03\nChapter',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(4.0),
                    height: 70,
                    width: 70,
                    color: const Color.fromARGB(255, 225, 224, 221),
                    child: const Center(
                      child: Text(
                        ' 350\nPages',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20), // Spacing before the text and images
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'lib/assest/imag.png', // Replace with your image path
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(height: 4),
                      const Text('Elite'),
                    ],
                  ),
                  const VerticalDivider(
                    thickness: 2,
                    color: Color.fromARGB(255, 0, 0, 0),
                    width: 20,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'lib/assest/imag.png', // Replace with your image path
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(height: 4),
                      const Text('Business'),
                    ],
                  ),
                  const VerticalDivider(
                    thickness: 2,
                    color: Color.fromARGB(255, 9, 9, 9),
                    width: 20,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'lib/assest/imag.png', // Replace with your image path
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(height: 4),
                      const Text('School'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    "Zero To One by Peter Thiel has significantly influenced corporate strategy models in the tech industry. The book emphasizes the importance of creating something unique and innovative, going from 'Zero to One' rather than replicating what already exists. Read more."),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Chapter(3)'),
                  Text('Hide'),
                  Text('Download'),
                  Icon(Icons.download),
                ],
              ),
              const SizedBox(height: 20),
              // ListView of three items
              SizedBox(
                height: 150, // Adjust the height to fit the content
                child: ListView(
                  children: [
                    ListTile(
                      title: const Text(
                          'Chapter 1 \n Name goes here \n 2/5 Pages'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove_red_eye_outlined),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.download),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: const Text(
                          'Chapter 1 \n Name goes here \n 2/5 Pages'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove_red_eye_outlined),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.download),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      title: const Text(
                          'Chapter 1 \n Name goes here \n 2/5 Pages'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove_red_eye_outlined),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.download_done),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150, // Adjust height as needed
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(6, (index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              width: 100, // Adjust width as needed
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      'lib/assest/imag.png'), // Replace with your image path
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              'Image Title', // Replace with your dynamic text
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
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
