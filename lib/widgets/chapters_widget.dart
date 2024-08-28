import 'package:flutter/material.dart';

class ChatptersWidget extends StatelessWidget {
  const ChatptersWidget({
    super.key,
    required this.titles, required this.index,
  });

  final List<String> titles;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.all(5),
      child: ListTile(
        title: Text(titles[index % titles.length]), // Set text based on index
        subtitle: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name goes here",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ), // Dynamic subtitle
            Text(
              "2/5 Pages",
              style: TextStyle(color: Colors.green),
            ), // Dynamic subtitle
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                icon: const Icon(
                    Icons.remove_red_eye_outlined),
                onPressed: () {},
              ),
            ),
            const SizedBox(width: 20),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                icon: const Icon(Icons.download_rounded),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}