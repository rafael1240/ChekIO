import 'package:flutter/material.dart';

class ItemComponent extends StatefulWidget {
  String people;
  ItemComponent({Key? key, required this.people}) : super(key: key);

  @override
  State<ItemComponent> createState() => _ItemComponentState();
}

class _ItemComponentState extends State<ItemComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Color.fromARGB(255, 230, 230, 230),
            spreadRadius: 2.0,
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.circle,color: Colors.blue,),
          Row(
            children: [
              Icon(Icons.person),
              Text(widget.people)
            ],
          )
        ],
      ),
    );
  }
}