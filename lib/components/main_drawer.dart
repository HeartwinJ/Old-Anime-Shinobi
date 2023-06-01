import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color:
                  Theme.of(context).scaffoldBackgroundColor.withOpacity(0.75),
            ),
            child: const Center(
              child: Icon(
                Icons.stream,
                size: 64,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.favorite_border),
            title: const Text('Favorites'),
            onTap: () {
              print('Click Favorites!');
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.shuffle),
            title: const Text('Random from PTW'),
            onTap: () {
              print('Click Random from PTW!');
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('About'),
            onTap: () {
              print('Click About!');
              Navigator.pop(context);
            },
          ),
          const Spacer(),
          ListTile(
            trailing: const Icon(Icons.settings),
            tileColor:
                Theme.of(context).scaffoldBackgroundColor.withOpacity(0.75),
            title: Container(
              alignment: Alignment.centerRight,
              child: const Text('Settings'),
            ),
            onTap: () {
              print('Click Settings!');
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
