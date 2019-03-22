import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:netease_music/Classes/Mine/Controller/NEMineController.dart';
import 'package:netease_music/Classes/Discover/Controller/NEDiscoverController.dart';

void main() {
  runApp(NETabBarController());
}

/*tabbarcontroller*/
class NETabBarController extends StatefulWidget {
  @override
  _NETabBarControllerState createState() => _NETabBarControllerState();
}

class _NETabBarControllerState extends State<NETabBarController> {
  /// 创建底部的tabbar子控制器
  List<BottomNavigationBarItem> _items() {
    List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(
        title: Text('发现'),
        icon: Icon(Icons.search),
      ),
      BottomNavigationBarItem(
        title: Text('视频'), 
        icon: Icon(Icons.video_call)
      ),
      BottomNavigationBarItem(
        title: Text('我的'), 
        icon: Icon(Icons.perm_contact_calendar)
      ),
      BottomNavigationBarItem(
        title: Text('朋友'), 
        icon: Icon(Icons.people)
      ),
      BottomNavigationBarItem(
        title: Text('账号'), 
        icon: Icon(Icons.account_circle)
      ),
    ];
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red
        ),
        home: SafeArea(
            left: true,
            child: CupertinoTabScaffold(
              tabBar: CupertinoTabBar(
                items: _items(),
              ),
              tabBuilder: (BuildContext context, int index) {
                switch (index) {
                  case 0:
                    return NEDiscoverController();
                    break;
                  case 1:
                    return NEDiscoverController();
                    break;
                  case 2:
                    return NEMineController();
                    break;
                  case 3:
                    return NEDiscoverController();
                    break;
                  case 4:
                    return NEDiscoverController();
                    break;
                  default:
                    return NEMineController();
                }
              },
            )
        )
    );
  }
}
