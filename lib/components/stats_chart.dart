import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class StatsChart extends StatelessWidget {
  const StatsChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Score Distribution',
              style: TextStyle(fontSize: 18),
            ),
            Expanded(
              child: charts.BarChart(
                [
                  charts.Series<ScoreData, String>(
                    id: 'Data',
                    colorFn: (_, __) {
                      Color primaryColor = Theme.of(context).primaryColor;
                      return charts.Color(
                        r: primaryColor.red,
                        g: primaryColor.green,
                        b: primaryColor.blue,
                        a: primaryColor.alpha,
                      );
                    },
                    domainFn: (ScoreData data, _) => data.score,
                    measureFn: (ScoreData data, _) => data.value,
                    labelAccessorFn: (ScoreData data, _) =>
                        data.value.toString(),
                    data: [
                      ScoreData('1', 0),
                      ScoreData('2', 0),
                      ScoreData('3', 0),
                      ScoreData('4', 0),
                      ScoreData('5', 17),
                      ScoreData('6', 40),
                      ScoreData('7', 48),
                      ScoreData('8', 52),
                      ScoreData('9', 41),
                      ScoreData('10', 30),
                    ],
                  )
                ],
                animate: true,
                defaultRenderer: charts.BarRendererConfig(
                  cornerStrategy: const charts.ConstCornerStrategy(30),
                ),
                primaryMeasureAxis: const charts.NumericAxisSpec(
                    renderSpec: charts.NoneRenderSpec()),
                barRendererDecorator: charts.BarLabelDecorator<String>(),
                domainAxis: const charts.OrdinalAxisSpec(
                  showAxisLine: true,
                  renderSpec: charts.NoneRenderSpec(),
                ),
                layoutConfig: charts.LayoutConfig(
                  leftMarginSpec: charts.MarginSpec.fixedPixel(0),
                  topMarginSpec: charts.MarginSpec.fixedPixel(0),
                  rightMarginSpec: charts.MarginSpec.fixedPixel(0),
                  bottomMarginSpec: charts.MarginSpec.fixedPixel(0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScoreData {
  final String score;
  final int value;

  ScoreData(this.score, this.value);
}
