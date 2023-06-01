import 'package:flutter/material.dart';

class AnimeIconButton extends StatelessWidget {
  final IconData icon;
  final String subText;
  const AnimeIconButton({Key? key, required this.icon, required this.subText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          Icon(
            icon,
            size: 32,
          ),
          Text(subText),
        ],
      ),
      onTap: () {},
    );
  }
}
