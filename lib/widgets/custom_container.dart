import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            border: Border.all(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(5),
          ),
          padding: const EdgeInsets.all(12),
          child: const Icon(Icons.lock),
        ),
        title: const Text('Introduction'),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.schedule,
              size: 17,
              color: Colors.grey.shade700,
            ),
            Text(
              ' 3h 30min',
              style: TextStyle(fontSize: 11, color: Colors.grey.shade700),
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
        trailing: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            border: Border.all(
              width: 1,
              color: Colors.grey.shade400,
            ),
          ),
          padding: const EdgeInsets.all(5),
          width: 100, // Adjust the width as per your design
          child: const Row(
            mainAxisAlignment:
                MainAxisAlignment.end, // Align contents to the end
            children: [
              Icon(
                Icons.play_circle,
                color: Color.fromARGB(255, 182, 219, 96),
              ),
              SizedBox(width: 4), // Add spacing between icon and text
              Text('Play video'),
            ],
          ),
        ),
      ),
    );
  }
}
