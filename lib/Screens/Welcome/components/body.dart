
import 'package:demo/Screens/camera_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    FocusNode myFocusNode = new FocusNode();

    // This size provide total height and width of our screen
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        //alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            //top decoration
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            //bottom decoration
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            //logo
            top: size.height * 0.1,
            left: size.width * 0.2,
            child: SvgPicture.asset(
              "assets/icons/chat.svg",
              width: size.width * 0.7,
            ),
          ),
          Positioned(
            //login
            top: size.height * 0.7,
            left: size.width * 0.18,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                color: Colors.blueAccent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return CameraScreen();
                      },
                    ),
                  );
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            //line
            top: size.height * 0.81,
            left: size.width * 0.2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: 200.0,
                color: Colors.blueAccent,
              ),
            ),
          ),
          Positioned(
            //Register
            top: size.height * 0.83,
            left: size.width * 0.18,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 92),
                color: Colors.lightBlue[200],
                onPressed: () {},
                child: Text(
                  "Register",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Column(
            //login detail
            children: [
              SizedBox(height: size.height * 0.3),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'username',
                    labelStyle: TextStyle(
                        color:
                            myFocusNode.hasFocus ? Colors.blue : Colors.black)
                    ),
              ),
              SizedBox(height: size.height * 0.02),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'password',
                  labelStyle: TextStyle(
                        color:
                            myFocusNode.hasFocus ? Colors.blue : Colors.black)
                  ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
