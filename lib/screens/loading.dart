import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
const Loading({ Key? key }) : super(key: key);

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
            Expanded(
              child: Center(
                child: Image.asset("assets/imgs/icons/app_icon_android.png"),
              ),
            ),
          ]
        ),
      )
    );
  }
}