import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:single_ui/widgets/books_widget.dart';
import 'package:single_ui/widgets/button%20selector.dart';
import 'package:single_ui/widgets/chapters_widget.dart';
import 'package:single_ui/widgets/inforow.dart';
import 'package:single_ui/widgets/my_appbar.dart';
import 'package:single_ui/widgets/satecard.dart';
import 'package:single_ui/widgets/title_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController scrollController = ScrollController(initialScrollOffset: 0);
  late double _previousOffset;
  bool isDownScroll = false;
  @override
  void initState() {
    _previousOffset = 0.0;
    scrollController.addListener(_onScroll);
    super.initState();
  }

  void _onScroll() {
    if (scrollController.position.pixels > _previousOffset) {
      setState(() {
        isDownScroll = true;
      });
    } else if (scrollController.position.pixels < _previousOffset) {
      setState(() {
        isDownScroll = false;
      });
    }
    _previousOffset = scrollController.position.pixels;
  }

  @override
  void dispose() {
    scrollController.removeListener(_onScroll);
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(context),
      body: Builder(builder: (context) {
        return SafeArea(
          child: Stack(
            children: [
              CustomScrollView(
                controller: scrollController,
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleWidget(previousOffset: _previousOffset),
                          const SizedBox(height: 20),
                          const ButtonSelector(), 
                          const SizedBox(height: 20),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              StatCard(numbers: "09", label: "Reads"),
                              StatCard(numbers: "4.5", label: "Rating"),
                              StatCard(numbers: "03", label: "Chapter"),
                              StatCard(numbers: "350", label: "Pages"),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const InfoRow(),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: RichText(
                              text: TextSpan(
                                children: <TextSpan>[
                                  const TextSpan(
                                    text:
                                        "Zero To One by Peter Thiel has significantly influenced corporate strategy models in the tech industry. The book emphasizes the importance of creating something unique and innovative, going from 'Zero to One' rather than replicating what already exists. ",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  TextSpan(
                                    text: 'Read more',
                                    style: const TextStyle(
                                        color: Colors.green, fontSize: 16),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Chapter',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '(3)',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                'Hide',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text(
                                  'Download',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                              Icon(Icons.download),
                              SizedBox(width: 20),
                            ],
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        // List of sample titles
                        List<String> titles = [
                          'Chapter 1',
                          'Chapter 2',
                          'Chapter 3',
                        ];

                        return ChatptersWidget(titles: titles, index: index);
                      },
                      childCount: 3, // Number of chapters
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Read more from in-house team',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'View all',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 84, 171, 98),
                                    fontSize: 17),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            'More books from same author',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                  const BooksWidget(),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}


