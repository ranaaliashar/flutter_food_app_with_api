import 'package:flutter/material.dart';
import 'package:meal_app/widgets/text_widget.dart';

class TestFile extends StatelessWidget {
  const TestFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text(
          'Text File',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textWidget(
                text: 'Privacny Policies',
                fontSize: 24,
                fontWeight: FontWeight.bold),
            textWidget(
                text:
                    "A privacy policy is a statement or legal document that discloses some or all of the ways a party gathers, uses, discloses, and manages a customer or client's data.",
                fontSize: 16),
            textWidget(
                text: '1. Data processing must be fair to the data subject.',
                fontSize: 16),
            textWidget(
                text:
                    '2. Data must only be processed for specific and legitimate purposes, outlined in your privacy policy',
                fontSize: 20),
          ],
        ),
      ),
    );
  }
}
