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
      padding: const EdgeInsets.all(30),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            color: Color.fromARGB(31, 15, 15, 15),
            spreadRadius: 1
          )
        ],
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(Icons.circle,color: Colors.blue,) 
              ),
              Text("nome",style: TextStyle(color: Colors.grey.shade500),)
            ],
          ),
          Row(
            children: [
              Icon(Icons.person,color: Colors.grey.shade500),
              Text(widget.people,style: TextStyle(color: Colors.grey.shade500),)
            ],
          )
        ],
      ),
    );
  }
}