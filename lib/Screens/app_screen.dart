import 'package:flutter/material.dart';

class AppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            
            Positioned(
              bottom: size.height*0.1,
              child:
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 40, horizontal: 50),
                  color: Colors.blue[200],
                  onPressed: () {},
                  child: Text(""),
                ),
              ),
              ),
          ],
        ),
      ),
    );
  }
}
