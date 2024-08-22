import 'package:flutter/cupertino.dart';

class BuyersScreen extends StatelessWidget {
  static const String id = '\buyerscreen';
  const BuyersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'No Data to show',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
