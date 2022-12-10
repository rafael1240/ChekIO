import 'package:flutter/material.dart';
import '../../components/itensListComponent/itemsListComponent.dart';
import '../ViewPrincipal/ViewPrincipal.dart';

class ViewOnePage extends StatefulWidget {
  List events;
  ViewOnePage({Key? key,required this.events}) : super(key: key);

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
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity,250),
        child: Container(
          height: 250,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          color: Colors.white,
          child: Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40) 
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 5.0,
                  color: Color.fromARGB(255, 206, 206, 206),
                  spreadRadius: 2.0,
                )
              ]
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text("Bem vindo,\nUser !",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: IconButton(
                        onPressed: (){
                        },
                        icon: Icon(Icons.circle),
                        iconSize: 40,
                        color: Colors.white,
                      )
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
                  child: TextField(
                    decoration: InputDecoration( 
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                      hintText: "Buscar eventos", 
                      filled: true, 
                      border: InputBorder.none,
                      prefixIcon: IconButton(
                        onPressed: (){}, 
                        icon: Icon( 
                          Icons.search, 
                          color: Colors.grey.shade500, 
                          size: 20, 
                        )
                      ), 
                      enabledBorder: UnderlineInputBorder( 
                        borderRadius: BorderRadius.circular(40), 
                        borderSide: BorderSide.none 
                      ), 
                      focusedBorder: OutlineInputBorder( 
                        borderRadius: BorderRadius.circular(40), 
                        borderSide: BorderSide.none
                      ),
                    ), 
                  ), 
                )
              ],
            )
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
        child: Column(
          children: createEvents(widget.events)
        ),
      )
    );
  }
}