import 'package:anime_shinobi/components/anime_list.dart';
import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: TabBarView(
        physics: BouncingScrollPhysics(),
        children: [
          AnimeList.forCalendar(
            animeList: [
              'Anime 1',
              'Anime 2',
              'Anime 3',
            ],
          ),
          AnimeList.forCalendar(
            animeList: [
              'Anime 1',
              'Anime 2',
              'Anime 3',
              'Anime 4',
            ],
          ),
          AnimeList.forCalendar(
            animeList: [
              'Anime 1',
              'Anime 2',
            ],
          ),
          AnimeList.forCalendar(
            animeList: [
              'Anime 1',
              'Anime 2',
              'Anime 3',
            ],
          ),
          AnimeList.forCalendar(
            animeList: [
              'Anime 1',
              'Anime 2',
              'Anime 3',
              'Anime 4',
              'Anime 5',
              'Anime 6',
              'Anime 7'
            ],
          ),
          AnimeList.forCalendar(
            animeList: [
              'Anime 1',
              'Anime 2',
            ],
          ),
          AnimeList.forCalendar(
            animeList: [
              'Anime 1',
              'Anime 2',
              'Anime 3',
            ],
          ),
          AnimeList.forCalendar(
            animeList: [
              'Anime 1',
              'Anime 2',
              'Anime 3',
              'Anime 4',
              'Anime 5',
              'Anime 6',
              'Anime 7'
            ],
          ),
        ],
      ),
    );
  }
}
