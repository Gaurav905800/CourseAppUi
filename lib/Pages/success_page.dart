import 'package:flutter/material.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                color: Color(0xFF2A9D8F),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.check,
                size: 50,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            // Payment Success Text
            const Text(
              'Payment Success',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            // Amount Paid
            const Text(
              '\$35.00',
              style: TextStyle(
                fontSize: 28,
                color: Color(0xFF2A9D8F),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // Payment Details Card
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFe9ecef),
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        CircleAvatar(
                          radius: 12,
                          backgroundImage: NetworkImage(
                            'https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg',
                          ),
                        ),
                        SizedBox(width: 10),
                        Text('Christiana Amandla',
                            style: TextStyle(
                              fontSize: 15,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Adobe Xd Editing Course',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ID Transcription',
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade700),
                        ),
                        Text(
                          'Invoice Date',
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'TA11231PW',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Nov 14, 2023',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Done Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 182, 219, 96),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  // Handle Done action
                },
                child: const Text(
                  'Done',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
