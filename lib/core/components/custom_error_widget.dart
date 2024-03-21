import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    required this.error,
    super.key,
  });
  final String error;
  @override
  Widget build(BuildContext context) {
    //TODO: Update Design
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error),
          const SizedBox(height: 20),
          Text(
            error,
            style: const TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
