import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const CustomFlatButton({
    super.key,
    required this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(
          fontFamily: 'Raleway',
          fontSize: 30,
          height: 1,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 0, 172, 238)
        ),
      ),
    );
  }
}
