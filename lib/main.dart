import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_app/app_style.dart';
import 'package:news_app/screens/home_page.dart';
import 'package:news_app/screens/news_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          backgroundColor: kLighterWhite,
          body: const HomePage(),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? SvgPicture.asset('assets/home_selected_icon.svg')
                  : SvgPicture.asset('assets/home_unselected_icon.svg'),
              label: '',
              
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1 
                  ? SvgPicture.asset('assets/bookmark_selected_icon.svg')
                  : SvgPicture.asset('assets/bookmark_unselected_icon.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? SvgPicture.asset('assets/notification_selected_icon.svg')
                  : SvgPicture.asset('assets/notification_unselected_icon.svg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? SvgPicture.asset('assets/profile_selected_icon.svg')
                  : SvgPicture.asset('assets/profile_unselected_icon.svg'),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ), ),
        );
  }
}
