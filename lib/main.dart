import 'package:flutter/material.dart';
import './pages/HomeScreen.dart';
import './pages/CakeScreen.dart';
import './pages/CloudScreen.dart';
import './pages/Profile.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNav',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // ページインデックス保存用
  int _screen = 0;

  String color = '255, 40, 40, 40';

  // 表示する Widget の一覧
  static final List<Widget> _pageList = [
    HomeScreen(),
    CloudScreen(),
    CloudScreen(),
    // CommunityScreen(),
    CakeScreen(),
    Profile()
  ];

  // ページ下部に並べるナビゲーションメニューの一覧
  List<BottomNavigationBarItem> myBottomNavBarItems() {
    return [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined),
        backgroundColor: Color.fromARGB(255, 246, 246, 246),
        label: 'home',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.wc),
        backgroundColor: Colors.teal,
        label: 'Wc',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.all_inbox_sharp),
        backgroundColor: Colors.teal,
        label: 'Community',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.local_dining_outlined),
        backgroundColor: Colors.teal,
        label: 'Cake',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.apps_outlined),
        backgroundColor: Colors.teal,
        label: 'Profile',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar

      // ページビュー
      body: _pageList[_screen],
      // ページ下部のナビゲーションメニュー
      bottomNavigationBar: BottomNavigationBar(
        // 現在のページインデックス
        currentIndex: _screen,
        // onTapでナビゲーションメニューがタップされた時の処理を定義
        onTap: (index) {
          setState(() {
            // ページインデックスを更新
            _screen = index;
          });
        },
        // 定義済のナビゲーションメニューのアイテムリスト
        items: myBottomNavBarItems(),
      ),
    );
  }
}