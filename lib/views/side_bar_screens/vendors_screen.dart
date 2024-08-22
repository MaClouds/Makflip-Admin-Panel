import 'package:flutter/cupertino.dart';

class VendorsScreen extends StatelessWidget {
  static const String id = '\vendors-screen';

  const VendorsScreen({super.key});

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
