import 'package:flutter/material.dart';
import 'package:prollege/Choose%20Position/position_screen.dart';
import 'package:prollege/Welcome%20Screen/welcome_screen.dart';
import 'package:prollege/widgets/constants.dart';
import 'package:get/get.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
      Column(
          //Size size = MediaQuery.of(context).size;
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [

                // Container(
                //   alignment: Alignment.topRight,
                //   height: 180.0,
                //   width: 220.0,
                //   color: Colors.black,
                //   child: Align(
                //     alignment: Alignment.topRight,
                //     child: Image.asset("images/cornerIcon.png"),
                //   ),
                // ),

          // Center(
          //   child: Container(
          //     height: 320.0,
          //     width: 520.0,
          //     //color: Colors.blue[50],
          //     child: const Align(
          //       alignment: Alignment.topRight,
          //       child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Positioned.fill(
                      right: 90,
                        child: Image.asset("images/cornerImage.png"),
                      // width: 10,
                    ),
                  ],
                ),

          Text(
            "Sign Up",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                letterSpacing: 3,
                //height: -90,
                fontSize: 70,
                color: Colors.white),
          ),

          SizedBox(height: 40, ),
          SizedBox(
            width: 400,
            height: 80,
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.start,
              decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
                counterStyle: TextStyle(decorationColor: Colors.white),
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                ),
                labelText: 'Name',
                contentPadding:
                EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              ),
              validator: (String? value) {
                return (value != null) ? 'Please enter a name.' : null;
              },
            ),
          ),
          SizedBox(
            width: 400,
            height: 80,
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.start,
              decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
                counterStyle: TextStyle(decorationColor: Colors.white),
                icon: Icon(
                  Icons.email,
                  color: Colors.white,
                  size: 30,
                ),
                labelText: 'Email',
                contentPadding:
                EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              ),
              validator: (String? value) {
                return (value != null) ? 'Please enter a name.' : null;
              },
            ),
          ),
          SizedBox(
            width: 400,
            height: 80,
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.start,
              decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
                counterStyle: TextStyle(decorationColor: Colors.white),
                icon: Icon(
                  Icons.lock,
                  color: Colors.white,
                  size: 30,
                ),
                labelText: 'Password',
                contentPadding:
                EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              ),
              validator: (String? value) {
                return (value != null) ? 'Please enter a name.' : null;
              },
            ),
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(WelcomeScreen());
                },
                child: Positioned(
                    top: 180,
                    left: 10,
                    child: new Image.asset('images/backarrow.png',
                        width: 50, height: 50, fit: BoxFit.fill)),
              ),

              GestureDetector(
                onTap: () {
                  Get.to(PositionScreen());
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: pinkColor,
                      borderRadius: BorderRadius.circular(8)),
                  width: 250,
                  height: 50,
                  alignment: Alignment.center,
                  padding:
                  EdgeInsets.symmetric(vertical: 6, horizontal: 5),
                  child: Text(
                    "CONTINUE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),

            ],
          ),
// child,
        ],
      );
  }
}
