import 'package:flutter/material.dart';

class AnimeCalendarCard extends StatelessWidget {
  final String animeData;
  const AnimeCalendarCard({Key? key, this.animeData = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(Icons.notifications_none),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: const Text('2d 13h 40m'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
