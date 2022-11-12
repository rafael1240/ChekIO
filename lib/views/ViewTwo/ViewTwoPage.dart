import 'package:flutter/material.dart';

class ViewTwoPage extends StatefulWidget {
  int space;
  ViewTwoPage({Key? key,required this.space}) : super(key: key);

  @override
  State<ViewTwoPage> createState() => _ViewTwoPageState();
}

class _ViewTwoPageState extends State<ViewTwoPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("${widget.space}"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.space,
        onTap: (index){
          setState(() {
            widget.space = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:"Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label:"Events"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label:"Perfil"
          ),
        ],
      ),
    );
  }
}