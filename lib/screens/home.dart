import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.white,
        elevation: 0,
        shape: Border(
          bottom: BorderSide(
            color: Colors.redAccent,
            width: 2,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ), 
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ), 
            onPressed: () {
              
            },
          ),
        ],
      ),
      body: Container(
        child: ElevatedButton(
          onPressed: (){
            Navigator.of(context).popAndPushNamed('login');
          }, 
          child: Text("logout")
        ),
      ),
    );
  }
}