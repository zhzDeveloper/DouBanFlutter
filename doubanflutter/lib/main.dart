import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'views/filmPage.dart';
import 'views/musicPage.dart';
import 'views/booksPage.dart';
import 'package:flutter/rendering.dart';
import 'views/aboutMe.dart';

void main() {
  debugPaintSizeEnabled=false;
  runApp(MyApp());
}
// https://github.com/rhymelph/flutter_douban

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabbarPage(),
    );
  }
}

class TabbarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
      return _TabbarPageState();
    }
}

class _TabbarPageState extends State<TabbarPage> {
  
  int _currentIndex = 0;

  var _pageList = [
    FilmPage(),
    BooksPage(),
    MusicPage(),
    AboutMePage()
  ];

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: IndexedStack(
          children: _pageList,
          index: _currentIndex,
        ),
        bottomNavigationBar: CupertinoTabBar(
          currentIndex: _currentIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(title: Text("电影"), icon: Icon(Icons.movie)),
            BottomNavigationBarItem(title: Text("图片"), icon: Icon(Icons.book)),
            BottomNavigationBarItem(title: Text("app"), icon: Icon(Icons.apps)),
            BottomNavigationBarItem(title: Text("我的"), icon: Icon(Icons.portrait)),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      );
    }
}
  