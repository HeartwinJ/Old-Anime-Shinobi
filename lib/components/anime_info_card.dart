import 'package:anime_shinobi/components/indicator_badge.dart';
import 'package:anime_shinobi/components/progress_bar.dart';
import 'package:flutter/material.dart';

class AnimeInfoCard extends StatelessWidget {
  final String animeData;
  const AnimeInfoCard({Key? key, this.animeData = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.red[300],
              width: 78.75,
              height: 112,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'The Name of the Anime',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Text(
                              'Apr 2020 - Sep 2021',
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Icon(Icons.more_vert),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Expanded(child: Text('16/23/15')),
                        IndicatorBadge(
                          timeRemaining: '2d',
                        ),
                        IndicatorBadge(
                          score: 8,
                        ),
                      ],
                    ),
                    const AnimeProgressIndicator(
                      progressValue: 0.5,
                      loadedValue: 0.75,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        onTap: () {
          print('Anime Card Clicked!');
          Navigator.pushNamed(context, '/anime');
        },
      ),
    );
  }
}
