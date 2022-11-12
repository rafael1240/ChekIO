//components
import 'package:flutter/material.dart';

//Viewss
import './views/ViewOne/ViewOnePage.dart';
import './views/ViewThree/ViewThreePage.dart';
import './views/ViewTwo/ViewTwoPage.dart';

void main() { runApp(const MyApp()); }

class MyApp extends StatelessWidget { const MyApp({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return MaterialApp( debugShowCheckedModeBanner: false, home: const MyHomePage(), ); } }

class MyHomePage extends StatefulWidget { const MyHomePage({Key? key}) : super(key: key);

@override State createState() => _MyHomePageState(); }

class _MyHomePageState extends State {
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
  ];

  int spaces = 0;
  setPage(space){
    //login
    // if(pAge == 0 ){
    //   return Scaffold( 
    //     backgroundColor: Colors.white, 
    //     body: Column( 
    //       children: [ 
    //         Container( 
    //           height: 520, 
    //           width: 1000, 
    //           margin: EdgeInsets.fromLTRB(0, 40, 0, 0), 
    //           child: Padding( 
    //             padding: EdgeInsets.all(60), 
    //             child: Column( 
    //               children: [ 
    //                 Padding( 
    //                   padding: EdgeInsets.all(20), 
    //                   child: Text("Login", 
    //                   style: TextStyle( 
    //                       color: Colors.blue, 
    //                       fontSize: 20 
    //                     ) 
    //                   ), 
    //                 ), 
    //                 Padding( 
    //                   padding: EdgeInsets.symmetric(vertical: 5), 
    //                   child: TextField( 
    //                     obscureText: false, 
    //                     decoration: InputDecoration( 
    //                       hintText: "Email", 
    //                       filled: true, 
    //                       prefixIcon: Icon( 
    //                         Icons.person, 
    //                         color: Colors.blue, 
    //                         size: 18, 
    //                       ), 
    //                       enabledBorder: UnderlineInputBorder( 
    //                         borderRadius: BorderRadius.circular(20), 
    //                         borderSide: BorderSide.none 
    //                       ), 
    //                       focusedBorder: OutlineInputBorder( 
    //                         borderRadius: BorderRadius.circular(20), 
    //                         borderSide: BorderSide(color: Colors.blue) 
    //                       ) 
    //                     ), 
    //                   ), 
    //                 ), 
    //                 Padding( 
    //                   padding: EdgeInsets.symmetric(vertical: 5), 
    //                   child: TextField( 
    //                     obscureText: true, 
    //                     decoration: InputDecoration( 
    //                       hintText: "Password", 
    //                       filled: true, 
    //                       prefixIcon: Icon( 
    //                         Icons.lock, 
    //                         color: Colors.blue, 
    //                         size: 18, 
    //                       ), 
    //                       enabledBorder: UnderlineInputBorder( 
    //                         borderRadius: BorderRadius.circular(20), 
    //                         borderSide: BorderSide.none 
    //                       ), 
    //                       focusedBorder: OutlineInputBorder( 
    //                         borderRadius: BorderRadius.circular(20), 
    //                         borderSide: BorderSide(color: Colors.blue) 
    //                       ) 
    //                     ), 
    //                   ), 
    //                 ),
    //                 Padding(
    //                   padding: EdgeInsets.symmetric(vertical: 5),
    //                   child: TextButton(
    //                   onPressed: (){
    //                     setState(() {
    //                       page = 4;
    //                     });
    //                   }, 
    //                   child: Text("Entrar"),
    //                     style: TextButton.styleFrom(
    //                       backgroundColor: Colors.blue,
    //                       primary: Colors.white,
    //                       fixedSize: Size(450, 45),
    //                       padding: EdgeInsets.symmetric(vertical: 20),
    //                       shape: RoundedRectangleBorder(
    //                         borderRadius: BorderRadius.circular(20),
    //                         side: BorderSide.none
    //                       ),
    //                     ),
    //                   )
    //                 ),
    //                 Padding(
    //                   padding: EdgeInsets.symmetric(vertical: 5),
    //                   child: TextButton(
    //                   onPressed: (){
    //                   }, 
    //                   child: Text("Cadastrar"),
    //                     style: TextButton.styleFrom(
    //                       backgroundColor: Colors.white,
    //                       primary: Colors.blue,
    //                       fixedSize: Size(450, 45),
    //                       padding: EdgeInsets.symmetric(vertical: 20),
    //                       shape: RoundedRectangleBorder(
    //                         borderRadius: BorderRadius.circular(20),
    //                         side: BorderSide(color: Colors.blue)
    //                       )
    //                     ),
    //                   )
    //                 )
    //               ],
    //             ),
    //           )
    //         ),
    //       ],
    //     )
    //   );
    // }
    // }
    
    if(space == 0){
      print(space);
      return ViewOnePage(space: space,events: eventos,);
    }
    else if(space == 1){
      print(space);
      return ViewThreePage(space: space,);
    }
    else if(space == 2){
      print(space);
      return ViewTwoPage(space: space,);
    }
  }

  @override Widget build(BuildContext context) { 
    return setPage(spaces);
  } 
}

// import 'package:cofredesenha/src/password/selectType.dart';
// import 'package:cofredesenha/src/home/viewPassword.dart';
// import 'package:cofredesenha/src/home/profile.dart';
// import 'package:cofredesenha/utils/styles.dart';
// import 'package:convex_bottom_bar/convex_bottom_bar.dart';
// import 'package:flutter/material.dart';


// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home>{

//   int segmentedControlValue = 0;
//   int _pageIndex = 0;
//   late PageController _pageController;


//   @override
//   void initState() {
//     _pageController = PageController(initialPage: _pageIndex);
//     super.initState();
//   }

//   void navigationTapped(int page) {
//     _pageController.jumpToPage(page);
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: ConvexAppBar(
//         items: [
//           TabItem(
//               icon: Icon(Icons.home_outlined,color: _pageIndex != 0
//                   ? DefaultColors.darkColor0
//                   : DefaultColors.primaryColor),
//               title: 'Home'),
//           TabItem(
//               icon: Icon(Icons.add,color: _pageIndex != 1  ? Colors.white : Colors.white),
//           ),
//           TabItem(
//               icon: Icon(Icons.person_outline,color: _pageIndex != 2
//                   ? DefaultColors.darkColor0
//                   : DefaultColors.primaryColor),
//               title: 'Perfil'),

//         ],
//         initialActiveIndex: _pageIndex,
//         style: TabStyle.fixedCircle,
//         onTap: (page) => onPageChanged(page),
//         backgroundColor: Colors.white,
//         activeColor: DefaultColors.secondaryColor,
//         color: DefaultColors.darkColor0,
//         elevation: 10,
//       ),
//       body: PageView(
//         children: [
//         ViewPassword(),
//         SelectType(),
//         ProfileView(),
//       ],
//         controller: _pageController,
//         onPageChanged: (page) => onPageChanged(page),
//         physics: const NeverScrollableScrollPhysics(),
//       ),
//     );

//   }


//   void onPageChanged(int page) {
//     setState(() {
//       _pageIndex = page;
//       _pageController.jumpToPage(page);
//     });
//   }
// }