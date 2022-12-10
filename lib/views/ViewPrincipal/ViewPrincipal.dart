import 'package:flutter/material.dart';

//Viewss
import '../ViewOne/ViewOnePage.dart';
import '../ViewThree/ViewThreePage.dart';
import '../ViewTwo/ViewTwoPage.dart';
import '../ViewLogin/ViewLoginComponent.dart';


class ViewPrincipal extends StatefulWidget {
  ViewPrincipal({super.key});

  @override
  State<ViewPrincipal> createState() => _ViewPrincipalState();
}

class _ViewPrincipalState extends State<ViewPrincipal> {

  List eventos = [
    {
      "qnt":10,
      "qntTotal":100
    },
    {
      "qnt":30,
      "qntTotal":100
    },
    {
      "qnt":50,
      "qntTotal":100
    },
    {
      "qnt":5,
      "qntTotal":20
    },
    {
      "qnt":30,
      "qntTotal":100
    },
    {
      "qnt":50,
      "qntTotal":100
    },
    {
      "qnt":5,
      "qntTotal":20
    },
    {
      "qnt":30,
      "qntTotal":100
    },
    {
      "qnt":50,
      "qntTotal":100
    },
    {
      "qnt":5,
      "qntTotal":20
    },
    {
      "qnt":30,
      "qntTotal":100
    },
  ];

  int _pageIndex = 0;
  final PageController _pageController = PageController();

  void onPageChanged(int page) {
    setState(() {
      _pageIndex = page;
      _pageController.jumpToPage(page);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedIconTheme: IconThemeData(
          size: 28
        ),
        unselectedIconTheme: IconThemeData(
          size: 28
        ),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ""
          )
        ],
        currentIndex: _pageIndex,
        onTap: (page) => onPageChanged(page),
      ),
      body: PageView(
        children: [
          ViewOnePage(events: eventos),
          ViewTwoPage(events: eventos),
          ViewThreePage()
        ],
        controller: _pageController,
        onPageChanged: (index) => onPageChanged(index),
        physics: const NeverScrollableScrollPhysics(),
      ),
    );
  }
}