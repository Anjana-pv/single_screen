import 'package:flutter/material.dart';

class InfoRow extends StatelessWidget {
  const InfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildColumn(
          imagePath: 'lib/assest/thunder-removebg-preview.png',
          label: 'Elite',
        ),
        _buildDivider(),
        _buildColumn(
          imagePath: 'lib/assest/rocket-removebg-preview.png',
          label: 'High-Yeilds',
        ),
        _buildDivider(),
        _buildColumn(
          imagePath: 'lib/assest/face-removebg-preview.png',
          label: 'Orginals',
        ),
      ],
    );
  }

  Widget _buildColumn({required String imagePath, required String label}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          imagePath,
          height: 50,
          width: 50,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 40, // Match the height of the columns
      child: const VerticalDivider(
        thickness: 1,
        color: Color.fromARGB(182, 136, 133, 133),
        width: 20,
      ),
    );
  }
}
