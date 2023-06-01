import 'package:anime_shinobi/components/anime_calendar_card.dart';
import 'package:anime_shinobi/components/anime_info_card.dart';
import 'package:flutter/material.dart';

enum ListType { infoList, calendarList }

class AnimeList extends StatelessWidget {
  final List animeList;
  final ListType listType;

  const AnimeList({
    Key? key,
    this.animeList = const [],
    this.listType = ListType.infoList,
  }) : super(key: key);

  const AnimeList.forCalendar({
    Key? key,
    this.animeList = const [],
    this.listType = ListType.calendarList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme cardTextTheme = const TextTheme(
      bodyText1: TextStyle(
        fontSize: 16,
      ),
      caption: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w100,
      ),
    );
    cardTextTheme = Theme.of(context).textTheme.merge(cardTextTheme);
    return Theme(
      data: Theme.of(context).copyWith(
        textTheme: cardTextTheme,
      ),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: animeList.length,
        itemBuilder: (_, int index) => listType == ListType.infoList
            ? AnimeInfoCard(animeData: animeList[index])
            : AnimeCalendarCard(animeData: animeList[index]),
      ),
    );
  }
}
