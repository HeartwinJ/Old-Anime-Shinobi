import 'package:flutter/material.dart';

class AnimePageDrawer extends StatelessWidget {
  const AnimePageDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text('Delete Anime'),
              onTap: () {
                print('Click Delete Anime!');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.copy),
              title: const Text('Copy Anime Title'),
              onTap: () {
                print('Click Anime Title!');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Share Anime'),
              onTap: () {
                print('Click Share Anime!');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
