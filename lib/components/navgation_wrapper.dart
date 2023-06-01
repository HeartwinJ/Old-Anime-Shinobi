import 'package:anime_shinobi/components/main_drawer.dart';
import 'package:anime_shinobi/pages/calendar_page.dart';
import 'package:anime_shinobi/pages/home_page.dart';
import 'package:anime_shinobi/pages/stats_page.dart';
import 'package:flutter/material.dart';

class NavigationWrapper extends StatefulWidget {
  const NavigationWrapper({Key? key}) : super(key: key);

  @override
  State<NavigationWrapper> createState() => _NavigationWrapperState();
}

class _NavigationWrapperState extends State<NavigationWrapper> {
  int _currentindex = 0;
  final List<NavDetail> _children = <NavDetail>[
    NavDetail(
      title: 'Home',
      page: const HomePage(),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.filter_list),
          onPressed: () {},
        ),
      ],
      tabs: [
        const Tab(text: 'WATCHING'),
        const Tab(text: 'PLAN TO WATCH'),
        const Tab(text: 'ON HOLD'),
        const Tab(text: 'DROPPED'),
        const Tab(text: 'COMPLETED'),
      ],
    ),
    NavDetail(
      title: 'Calendar',
      page: const CalendarPage(),
      tabs: [
        const Tab(text: 'ALL'),
        const Tab(text: 'MONDAY'),
        const Tab(text: 'TUESDAY'),
        const Tab(text: 'WEDNESDAY'),
        const Tab(text: 'THURSDAY'),
        const Tab(text: 'FRIDAY'),
        const Tab(text: 'SATURDAY'),
        const Tab(text: 'SUNDAY'),
      ],
    ),
    NavDetail(
      title: 'Stats',
      page: const StatsPage(),
    ),
  ];

  _onNavTabTapped(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _children.elementAt(_currentindex).tabs.length,
      child: Scaffold(
        drawer: const MainDrawer(),
        appBar: AppBar(
            title: Text(_children.elementAt(_currentindex).title),
            actions: _children.elementAt(_currentindex).actions,
            bottom: TabBar(
              isScrollable: true,
              tabs: _children.elementAt(_currentindex).tabs,
            )),
        body: _children.elementAt(_currentindex).page,
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onNavTabTapped,
          currentIndex: _currentindex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Calendar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.stacked_bar_chart),
              label: 'Stats',
            ),
          ],
        ),
      ),
    );
  }
}

class NavDetail {
  final String title;
  final Widget page;
  final List<Widget> actions;
  final List<Widget> tabs;

  NavDetail({
    required this.title,
    required this.page,
    this.actions = const [],
    this.tabs = const [],
  });
}
