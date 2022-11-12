import 'package:flutter/material.dart';
import '../../components/itensListComponent/itemsListComponent.dart';

class ViewOnePage extends StatefulWidget {
  int space;
  List events;
  ViewOnePage({Key? key,required this.space,required this.events}) : super(key: key);

  @override
  State<ViewOnePage> createState() => _ViewOnePageState();
}

class _ViewOnePageState extends State<ViewOnePage> {
  createEvents(event){
    List<Widget> children = [];
    event.forEach((element) {
      children.add(
        ItemComponent(people: "${element["qnt"]}/${element["qntTotal"]}",)
      );
    });
    return children;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey.shade300,
          padding: const EdgeInsets.all(40),
          child: Column(
            children: createEvents(widget.events)
          ),
        ),
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