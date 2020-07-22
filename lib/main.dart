import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lots_land/screen/eartScreen.dart';
import 'package:lots_land/screen/UserInfoScreen.dart';
import 'package:lots_land/screen/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guide StoryOfSeasson FOMT',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TabPage(),
    );
  }
}

class TabPage extends StatefulWidget {
  TabPage({Key key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;
  final  List<Widget> _pages= <Widget>[
    HomeScreen(bgColor:Colors.purple),
    BrowserScreen(bgColor:Colors.pink),
    InfoScreen(bgColor: Colors.amber,)

  ];

  PageController _pageController = PageController();
  List<GButton> tabs = new List();
//  List<Color> colors = [
//    Colors.purple,
//    Colors.pink,
//    Colors.amber[600],
//    Colors.teal
//  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    var padding = EdgeInsets.symmetric(horizontal: 18, vertical: 5);
    double gap = 10;

    tabs.add(GButton(
      gap: gap,
      iconActiveColor: Colors.purple,
      iconColor: Colors.black,
      textColor: Colors.purple,
      backgroundColor: Colors.purple.withOpacity(.2),
      iconSize: 24,
      padding: padding,
      icon: LineIcons.home,
      // textStyle: t.textStyle,
      text: 'Home',
    ));

    tabs.add(GButton(
      gap: gap,
      iconActiveColor: Colors.pink,
      iconColor: Colors.black,
      textColor: Colors.pink,
      backgroundColor: Colors.pink.withOpacity(.2),
      iconSize: 24,
      padding: padding,
      icon: LineIcons.street_view,
      // textStyle: t.textStyle,
      text: 'Kavlin',
    ));

    tabs.add(GButton(
      gap: gap,
      iconActiveColor: Colors.amber[600],
      iconColor: Colors.black,
      textColor: Colors.amber[600],
      backgroundColor: Colors.amber[600].withOpacity(.2),
      iconSize: 24,
      padding: padding,
      icon: LineIcons.user,
      // textStyle: t.textStyle,
      text: 'User',
    ));
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBody: true,
      body: PageView.builder(
          onPageChanged: (page){
            setState(() {
              _selectedIndex = page;
            });
          },
          controller: _pageController,
          itemCount: _pages.length,
          itemBuilder: (context,position){
          return _pages[position];
      }),

      bottomNavigationBar: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                  spreadRadius: -10,
                blurRadius: 60,
                color: Colors.black.withOpacity(.20),
                offset: Offset(0,15)
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
            child: GNav(
              tabs: tabs,
              selectedIndex: _selectedIndex,
              onTabChange: (index){
                setState(() {
                  _selectedIndex = index;
                });
                _pageController.jumpToPage(index);
              },
            ),
          ),
        ),
      ),
    );

  }
}
