import 'package:anime_shinobi/components/stat_card.dart';
import 'package:anime_shinobi/components/stats_chart.dart';
import 'package:flutter/material.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Level: 132',
                        style: TextStyle(
                          fontSize: 28,
                        ),
                      ),
                      Text(
                        'Tsundere (149/150 XP)',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    child: const Icon(
                      Icons.info_outline,
                      size: 32,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 3,
              children: const [
                StatCard(
                  statName: 'Stat Name',
                  statVal: 999,
                ),
                StatCard(
                  statName: 'Stat Name',
                  statVal: 999,
                ),
                StatCard(
                  statName: 'Stat Name',
                  statVal: 999,
                ),
                StatCard(
                  statName: 'Stat Name',
                  statVal: 999,
                ),
                StatCard(
                  statName: 'Stat Name',
                  statVal: 999,
                ),
                StatCard(
                  statName: 'Stat Name',
                  statVal: 999,
                ),
                StatCard(
                  statName: 'Stat Name',
                  statVal: 999,
                ),
                StatCard(
                  statName: 'Stat Name',
                  statVal: 999,
                ),
              ],
            ),
          ),
          const Expanded(
            child: StatsChart(),
          ),
        ],
      ),
    );
  }
}
