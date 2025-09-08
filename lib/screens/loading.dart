import 'package:flutter/material.dart';
import 'package:fooda/services/todo.dart';

class Loading extends StatefulWidget {
const Loading({ Key? key }) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupTodo() async {
    Todo instance = Todo(type: "users");
    await instance.getTodo();
    Navigator.pushReplacementNamed(context, "welcome");
  }

  @override
  void initState() {
    super.initState();
    setupTodo();
  }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage( 
            image: AssetImage("assets/imgs/loading/bg_loading.png"),
            fit: BoxFit.cover,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset("assets/imgs/icons/app_icon_android.png"),
            ),
          ]
        ),
      )
    );
  }
}