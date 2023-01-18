import 'package:flutter/material.dart';
import 'package:flutter_application_1/TugasClone/Material/PageKedua.dart';
import 'package:flutter_application_1/TugasClone/Material/PageKesatu.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debug
      debugShowCheckedModeBanner: false,
      title: "My first Jago",
      darkTheme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        // body: PageKesatu(),
        // body: PageKedua(),
        body: IndexedStack(
          index: _selectedIndex,
          children: const [
            PageKesatu(),
            PageKedua(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            fixedColor: Colors.black,
            // selectedLabelStyle: TextStyle(color: Colors.black),
            items: [
              BottomNavigationBarItem(
                label: "Home",
                // icon: Icon(Icons.home),
                // icon: SvgPicture.asset(
                //     'asset/images/icons/bottom_bar/home_active.svg'),
                icon: _selectedIndex == 0
                    ? SvgPicture.asset(
                        'asset/images/icons/bottom_bar/home_active.svg')
                    : SvgPicture.asset(
                        'asset/images/icons/bottom_bar/home_inactive.svg'),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                // icon: Icon(Icons.more_horiz),
                // icon: SvgPicture.asset(
                //     'asset/images/icons/bottom_bar/more_active.svg'),
                icon: _selectedIndex == 1
                    ? SvgPicture.asset(
                        'asset/images/icons/bottom_bar/more_active.svg')
                    : SvgPicture.asset(
                        'asset/images/icons/bottom_bar/more_inactive.svg'),
              ),
            ],
            onTap: (int indexOfItem) {
              _onItemTapped(indexOfItem);
            }),
      ),
    );
  }
}
