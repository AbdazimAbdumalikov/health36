import 'package:flutter/material.dart';
import 'package:healthy/home.dart';
import 'package:healthy/pages/food.dart';
import 'package:healthy/pages/profil.dart';

class TabItem {
  String title;
  Icon icon;
  TabItem({required this.title, required this.icon,});
}



final List<TabItem> _tabBar = [
  TabItem(title: 'Басты', icon: Icon(Icons.home_filled),),
  TabItem(title: 'Кеңестер', icon: Icon(Icons.lightbulb)),
  TabItem(title: 'Профиль', icon: Icon(Icons.person_pin)),
];

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);


  @override
  _BottomNavigationBarExampleState createState() => _BottomNavigationBarExampleState();


}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample>
    with TickerProviderStateMixin {
  TabController? _tabController;
  int _currentTabIndex = 0;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabBar.length, vsync: this);
    _tabController!.addListener(() {
      print('Listener: ${_tabController!.index}');
      setState(() {
        _currentTabIndex = _tabController!.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            child: Home(),
          ),
          Container(
            child: FoodExample(),
          ),
          Container(
            child: ProfilExample(),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        onTap: (index) {
          setState(() {
            _tabController?.index = index;
            _currentTabIndex = index;
          }
          );
        },
        currentIndex: _currentTabIndex,
        items: [
          for (final item in _tabBar)
            BottomNavigationBarItem(
              label: item.title,
              icon: item.icon,
            ),
        ],
      ),
    );
  }
}
