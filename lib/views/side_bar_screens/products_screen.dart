
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  static const String id = 'products-screen';

  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
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
