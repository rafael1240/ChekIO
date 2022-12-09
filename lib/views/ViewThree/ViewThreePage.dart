import 'package:chekio/views/ViewLogin/ViewLoginComponent.dart';
import 'package:flutter/material.dart';

class ViewThreePage extends StatefulWidget {
  ViewThreePage({Key? key}) : super(key: key);

  @override
  State<ViewThreePage> createState() => _ViewThreePageState();
}

class _ViewThreePageState extends State<ViewThreePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity,250),
        child: Container(
          height: 140,
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
                      child: Text("Perfil",
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
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: (){
                            }, 
                            child: Text("Sair",
                              style: TextStyle(
                                color: Colors.white
                              ),
                            )
                          ),
                          IconButton(
                            onPressed: (){
                            },
                            icon: Icon(Icons.circle),
                            iconSize: 40,
                            color: Colors.white,
                          )
                        ],
                      )
                    ),
                    
                  ],
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}