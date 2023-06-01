import 'dart:ui';

import 'package:anime_shinobi/components/anime_icon_button.dart';
import 'package:anime_shinobi/components/anime_page_drawer.dart';
import 'package:flutter/material.dart';

class AnimePage extends StatelessWidget {
  const AnimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: const AnimePageDrawer(),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              ),
            )
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ClipRRect(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Image.network(
                        'https://images.unsplash.com/photo-1519638399535-1b036603ac77?w=1920'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: SizedBox(
                          width: 100,
                          child: Image.network(
                              'https://images.unsplash.com/photo-1616836202011-db10fa3b9204?&w=1920'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Anime Name',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  AnimeIconButton(
                    icon: Icons.movie,
                    subText: 'Watching',
                  ),
                  AnimeIconButton(
                    icon: Icons.remove_red_eye,
                    subText: '16/25',
                  ),
                  AnimeIconButton(
                    icon: Icons.thumb_up,
                    subText: '0',
                  ),
                ],
              ),
            ),
            Row(
              children: [
                ElevatedButton(
                  child: const Text('UPDATE'),
                  onPressed: () {},
                ),
                ElevatedButton(
                  child: const Text('+1'),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
