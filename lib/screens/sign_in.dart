import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/imgs/login/bg_login.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Email address",
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.redAccent,
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.redAccent,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.redAccent,
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.redAccent,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ),
              SizedBox(height: 20),
              Text(
                "Forgot password?",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "notosansjp",
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 70),
                  elevation: 0,
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("home");
                },
                child: Text("SIGN IN"),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a user yet?",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "notosansjp",
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacementNamed("sign_up");
                    }, 
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.redAccent
                      ),
                    )
                  )
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}