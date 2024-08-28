import 'package:flutter/material.dart';


class ChaptersList extends StatelessWidget {
  const ChaptersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150, 
      child: ListView(
        children: [
          ChapterTile(
            title: 'Chapter 1 \n Name goes here \n 2/5 Pages',
            icon: Icons.download,
            onIconPressed: () {},
          ),
          const SizedBox(height: 5),
          ChapterTile(
            title: 'Chapter 2 \n Name goes here \n 3/5 Pages',
            icon: Icons.download,
            onIconPressed: () {},
          ),
          ChapterTile(
            title: 'Chapter 3 \n Name goes here \n 4/5 Pages',
            icon: Icons.download_done,
            onIconPressed: () {},
          ),
        ],
      ),
    );
  }
}


class ChapterTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onIconPressed;

   ChapterTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.onIconPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.grey,
      title: Text(title),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.remove_red_eye_outlined),
            onPressed: onIconPressed,
          ),
          IconButton(
            icon: Icon(icon),
            onPressed: onIconPressed,
          ),
        ],
      ),
    );
  }
}
