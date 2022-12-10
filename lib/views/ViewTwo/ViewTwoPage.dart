import 'package:flutter/material.dart';
import '../../components/itensListComponent/itemsListComponent.dart';

class ViewTwoPage extends StatefulWidget {
  List events;
  ViewTwoPage({Key? key, required this.events}) : super(key: key);

  @override
  State<ViewTwoPage> createState() => _ViewTwoPageState();
}

class _ViewTwoPageState extends State<ViewTwoPage> {

  createEvents(event){
    List<Widget> children = [
      Container(
        color: Colors.blue,
        height: 215,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Seus eventos !",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600
                    ),
                  )
                ]
              ), 
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Color.fromARGB(24, 227, 242, 253),
                      spreadRadius: 1,
                      offset: Offset(0,-12)
                    )
                  ],
                  color: Colors.white,          
                ),
              ),
            )
          ],
        ),
      )
    ];
    event.forEach((element) {
      children.add(
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: ItemComponent(people: "${element["qnt"]}/${element["qntTotal"]}",)
        )
      );
    });
    return children;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: createEvents(widget.events),
        ),
      )
    );
  }
}