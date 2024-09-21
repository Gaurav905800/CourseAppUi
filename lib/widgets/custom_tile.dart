import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';

class CustomTile extends StatelessWidget {
  final String imageUrl;
  final String text;
  final double rating;
  final String timeing;
  CustomTile({
    super.key,
    required this.imageUrl,
    required this.text,
    required this.rating,
    required this.timeing,
  });

  final List<String> _images = [
    'https://plus.unsplash.com/premium_photo-1678197937465-bdbc4ed95815?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGVyc29ufGVufDB8fDB8fHww',
    'https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cGVyc29ufGVufDB8fDB8fHww',
    'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
    'https://images.unsplash.com/photo-1593642702749-b7d2a804fbcf?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                height: 60,
                imageUrl,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              text,
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                FlutterImageStack(
                  imageList: _images,
                  showTotalCount: true,
                  totalCount: 4,
                  itemRadius: 20,
                  itemCount: 4,
                  itemBorderWidth: 1,
                ),
                const SizedBox(width: 8),
                const Text(
                  'Participant',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Divider(
              color: Colors.grey.shade300,
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.star_rate,
                      size: 15,
                      color: Colors.orange,
                    ),
                    Text(
                      rating.toString(),
                      style:
                          TextStyle(color: Colors.grey.shade700, fontSize: 13),
                    ),
                    Text(
                      '(230)',
                      style: TextStyle(
                        fontSize: 9,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.play_circle_outline_rounded,
                      size: 13,
                      color: Colors.grey.shade700,
                    ),
                    Text(
                      ' 30 Lessons',
                      style:
                          TextStyle(fontSize: 11, color: Colors.grey.shade700),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
