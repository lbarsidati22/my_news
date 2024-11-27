import 'package:flutter/material.dart';

class TempleteCategoaryTitle extends StatelessWidget {
  final String title;
  final IconData iconData;
  final bool isSellected;
  final Function() onTap;
  const TempleteCategoaryTitle({
    super.key,
    required this.onTap,
    required this.isSellected,
    required this.iconData,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
              color: isSellected ? Colors.red : Colors.white,
              fontSize: isSellected ? 22 : 20,
              fontWeight: isSellected ? FontWeight.bold : null,
            ),
          ),
          Icon(
            iconData,
            size: isSellected ? 25 : 23,
            color: isSellected ? Colors.red : Colors.white,
          ),
        ],
      ),
    );
  }
}
