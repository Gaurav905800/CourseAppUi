import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String imageUrl;
  final String text;
  final double rating;
  final String timeing;

  const CustomListTile({
    super.key,
    required this.imageUrl,
    required this.text,
    required this.rating,
    required this.timeing,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(7),
          ),
          padding: const EdgeInsets.all(9),
          child: Image.network(imageUrl),
        ),
        title: Text(text),
        subtitle: Row(
          children: [
            const Icon(
              Icons.star_rate,
              size: 15,
              color: Colors.orange,
            ),
            Text(
              rating.toString(),
              style: TextStyle(color: Colors.grey.shade700, fontSize: 13),
            ),
            Text(
              '(230)',
              style: TextStyle(
                fontSize: 9,
                color: Colors.grey.shade700,
              ),
            ),
            const SizedBox(width: 15),
            Icon(
              Icons.play_circle_outline_rounded,
              size: 13,
              color: Colors.grey.shade700,
            ),
            Text(
              ' 30 Lessons',
              style: TextStyle(fontSize: 11, color: Colors.grey.shade700),
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
