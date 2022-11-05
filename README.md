# ChekIO

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 520,
            width: 1000,
            margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Padding(
              padding: EdgeInsets.all(60),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text("Login",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20
                      )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: "Email",
                        filled: true,
                        prefixIcon: Icon(
                          Icons.person, 
                          color: Colors.blue,
                          size: 18,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.blue)
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        filled: true,
                        prefixIcon: Icon(
                          Icons.lock, 
                          color: Colors.blue,
                          size: 18,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.blue)
                        )
                      ),
                    ), 
                  ),  
                
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: TextButton(
                    onPressed: (){

                    }, 
                    child: Text("Entrar"),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        primary: Colors.white,
                        fixedSize: Size(450, 45),
                        padding: EdgeInsets.symmetric(vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide.none
                        ),
                      ),
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: TextButton(
                    onPressed: (){
                    }, 
                    child: Text("Cadastrar"),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        primary: Colors.blue,
                        fixedSize: Size(450, 45),
                        padding: EdgeInsets.symmetric(vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.blue)
                        )
                      ),
                    )
                  )
                  
                ],
              ),
            )
          ),
        ],
      )
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.black26,
      //   elevation: 0,
      //   selectedItemColor: Colors.red,
      //   unselectedItemColor: Colors.white,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "home"
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.people),
      //       label: "painel"
      //     )
      //   ],
      // ),
    );
  }
}
