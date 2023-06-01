import 'package:flutter/material.dart';

class AnimeProgressIndicator extends StatelessWidget {
  final double progressValue;
  final double loadedValue;
  const AnimeProgressIndicator({
    Key? key,
    required this.progressValue,
    this.loadedValue = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LinearProgressIndicator(
          value: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        ),
        LinearProgressIndicator(
          value: loadedValue,
          backgroundColor: Colors.transparent,
          color: Theme.of(context).splashColor,
        ),
        LinearProgressIndicator(
          value: progressValue,
          backgroundColor: Colors.transparent,
          color: Theme.of(context).primaryColor,
        ),
      ],
    );
  }
}
