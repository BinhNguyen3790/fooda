import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({ Key? key }) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/imgs/welcome/bg_welcome.png"), 
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Welcome to Fooda",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "notosansjp",
                fontWeight: FontWeight.w700,
                fontSize: 22,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Discover thousands of delicious dishes, \ndelivered to your door in just a few taps. \nA diverse menu with daily deals awaits.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "notosansjp",
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 20,
                  height: 6,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Container(
                  width: 10,
                  height: 6,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Container(
                  width: 10,
                  height: 6,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacementNamed("login");
                    }, 
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontFamily: "notosansjp",
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacementNamed("about_us");
                    }, 
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white, 
                    ),
                      child: Row(
                      mainAxisSize: MainAxisSize.min, 
                      children: const [
                        Text(
                          "Next",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "notosansjp",
                          ),
                        ),
                        SizedBox(width: 6),
                        Icon(Icons.navigate_next),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}