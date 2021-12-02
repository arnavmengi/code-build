import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  //Using build method so that hot reload can be used
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //This was to remove the debug tag from the emulator

      home: Scaffold(
        backgroundColor: Colors.teal.shade600,
        body: SafeArea(
          //Safe area is used so that no element overlaps with the notch
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //To create a photo icon
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('Images/arnav_mengi.png'),
              ),
              Text(
                'Arnav Mengi',
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'MBA, NMIMS Bangalore, Batch of 22',
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1.0,
                ),
              ),

              //To insert space between the text and card
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin:EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal.shade500,
                    size: 30.0,
                  ),
                  title: Text('+91 12345 67890',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                      ),
                ),
              ),
              ),
              Card(
                color: Colors.white,
                margin:EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal.shade500,
                    size: 30.0,
                  ),
                  title: Text('mengiarnav@gmail.com',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    )
    );
  }
}
