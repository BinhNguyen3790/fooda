import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/imgs/login/bg_login.png"),
            fit: BoxFit.cover,
          )
        ),
        child:  Column(
          children: [
            SizedBox(height: 150),
            Center(
              child: Image.asset(
                "assets/imgs/icons/app_icon_logo.png",
                width: 150,
                height: 150,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 60),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 70),
                elevation: 0,
              ),
              onPressed: (){
                Navigator.of(context).pushReplacementNamed("sign_in");
              }, 
              child: Text(
                "SIGN IN"
              )
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.redAccent,
                padding: EdgeInsets.symmetric(horizontal: 70),
                elevation: 0,
                side: BorderSide(
                  color: Colors.redAccent,
                  width: 2,
                ),
              ), 
              onPressed: (){
                Navigator.of(context).pushReplacementNamed("sign_up");
              }, 
              child: Text(
                "SIGN UP"
              )
            ),
          ]
        ),
      ),
    );
  }
}