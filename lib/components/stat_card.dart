import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  final String statName;
  final int statVal;
  const StatCard({
    Key? key,
    required this.statName,
    required this.statVal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(statName),
          Text(
            statVal.toString(),
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
