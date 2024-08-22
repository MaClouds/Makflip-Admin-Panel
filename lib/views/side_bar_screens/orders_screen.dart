import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  static const String id = '\order-screen';
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
