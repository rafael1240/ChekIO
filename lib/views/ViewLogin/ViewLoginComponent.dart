import 'package:flutter/material.dart';
import '../ViewPrincipal/ViewPrincipal.dart';
import 'package:url_launcher/url_launcher.dart';

class ViewLoginComponent extends StatefulWidget {
  ViewLoginComponent({super.key});

  @override
  State<ViewLoginComponent> createState() => _ViewLoginComponentState();
}

class _ViewLoginComponentState extends State<ViewLoginComponent> {
  bool  _loginpass = false;
  bool _obscurePassword = true;
  bool _passworError = false;
  bool _emailError = false;
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();

  _buscaLoginDb(String _email ,String _password){
    if(_email.toUpperCase() == "USER"){
      if(_password == "001"){
        setState(() {
          _emailError = false;
          _passworError = false;
        });
        return true;
      }else{
        setState(() {
          _emailError = false;
          _passworError = true;
        });
        return false;
      }
    }
    setState(() {
      _emailError = true;
      _passworError = false;
    });
    return false;
  }
  abrirUrl() async {
    const url = 'https://www.google.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  loginPassConfirmation(loginpass){
    if(loginpass == false){
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
                          fontSize: 26,
                          fontWeight: FontWeight.w500 
                        ) 
                      ), 
                    ), 
                    Padding( 
                      padding: EdgeInsets.symmetric(vertical: 5), 
                      child: Material(
                        child: TextField( 
                          controller: _controllerEmail,
                          obscureText: false, 
                          decoration: InputDecoration( 
                            fillColor: Colors.white,
                            hintText: "Email", 
                            errorText: _emailError ? "Email incorreto" : null,
                            filled: true, 
                            hoverColor: Colors.white
                          ), 
                        ), 
                      )
                    ), 
                    Padding( 
                      padding: EdgeInsets.symmetric(vertical: 5), 
                      child: TextField( 
                        controller: _controllerPassword,
                        obscureText: _obscurePassword, 
                        decoration: InputDecoration( 
                          hintText: "Password", 
                          errorText: _passworError ? "Senha incorreta" : null,
                          filled: true, 
                          fillColor: Colors.white,
                          hoverColor: Colors.white,
                          suffixIcon: IconButton(
                            autofocus: false,
                            onPressed: (){
                              setState(() {
                                if(_obscurePassword == true){
                                  _obscurePassword = false;
                                }else{
                                  _obscurePassword = true;
                                }
                              });
                            },
                            icon: Icon( 
                              _obscurePassword ? Icons.lock_outlined : Icons.lock_open_outlined, 
                              color: Colors.grey, 
                              size: 18, 
                            ),
                          )
                        ), 
                      ), 
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                      child: TextButton(
                      onPressed: (){
                        if((_controllerEmail.text != "" && _controllerEmail.text != Null)){
                          if((_controllerPassword.text != "" && _controllerPassword.text != Null)){
                            if(_buscaLoginDb(_controllerEmail.text,_controllerPassword.text) == true){
                              setState(() {
                                _loginpass = true;
                              });
                            }
                          }else{
                            setState(() {
                              _passworError = true;
                              _emailError = false;
                            });
                          }
                        }else{
                          setState(() {
                            _emailError = true;
                            _passworError = false;
                          });
                        }
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Não é cadastrado ?"),
                          TextButton(
                            onPressed: abrirUrl, 
                            child: Text("Cadastrar"),
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              elevation: 0,
                              
                              textStyle: TextStyle(
                                color: Colors.blue
                              )
                            ),
                          )
                        ],
                        
                      )
                    )
                  ],
                ),
              )
            ),
          ],
        )
      );
    }else{
      return ViewPrincipal();
    }
  }

  @override
  Widget build(BuildContext context) {
    return loginPassConfirmation(_loginpass);
  }
}