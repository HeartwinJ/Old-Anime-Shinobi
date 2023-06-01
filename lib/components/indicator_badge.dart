import 'package:anime_shinobi/common/score_colors.dart';
import 'package:flutter/material.dart';

class IndicatorBadge extends StatelessWidget {
  final int? score;
  final String? timeRemaining;
  final String? status;
  const IndicatorBadge({
    Key? key,
    this.score,
    this.timeRemaining,
    this.status,
  }) : super(key: key);

  String _getIndicatorText() {
    if (score != null) {
      return score.toString();
    } else if (timeRemaining != null) {
      return 'Ep in' + timeRemaining!;
    } else if (status != null) {
      return status!;
    }
    return '';
  }

  EdgeInsets _getPadding() {
    if (score != null) {
      return const EdgeInsets.only(bottom: 8.0, left: 4.0);
    } else {
      return const EdgeInsets.only(bottom: 8.0);
    }
  }

  Color _getColor(context) {
    if (score != null) {
      return ScoreColors.fromScore(score!);
    } else {
      return Theme.of(context).primaryColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _getPadding(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        decoration: BoxDecoration(
          color: _getColor(context),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(_getIndicatorText()),
      ),
    );
  }
}
