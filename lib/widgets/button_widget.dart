import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {  
  ButtonWidget({
    super.key,
    required this.onPress,
    required this.icon,
    required this.label,
  });

  VoidCallback onPress;
  IconData icon;
  String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: onPress,
        child: Column(
          children: [
            Icon(icon, color: Colors.blue),
            Text(label, style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
