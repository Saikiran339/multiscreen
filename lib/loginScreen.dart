import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multiscreen/constants.dart';
import 'verify.dart';
import 'package:get/get.dart';


class loginScreen extends StatelessWidget {

  Widget buildGetOtpButton () {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 100)
      padding: EdgeInsets.only(top: 100),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () {
          Get.toNamed('/verifyOTP');
          // Get.to(() => verifyOTP());
          // Navigator.push(context, MaterialPageRoute(builder: (context) => verifyOTP(),),);
        },
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6)
        ),
        color: Color(0xff161853),
        child: Text(
          'Get OTP',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        // leading: IconButton(
        //     icon: Icon(Icons.arrow_back),
        //     color: Colors.black,
        //     onPressed: () =>
        //         Navigator.of(context).pop()
        // ),
        title: Text(
          'Login/Signup',
          style: kLabelTextStyle,
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 200.0, right: 30.0, bottom: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Text(
                    'Mobile Number',
                    textAlign: TextAlign.justify,
                    style: kLabelTextStyle
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    // border: InputBorder.none,
                    // contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(
                      Icons.phone_android,
                      color: Colors.black,
                    ),
                    hintText: 'Enter Your Phone Number',
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                    labelStyle: kLabelTextStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(width: 2, color: Colors.black,)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(width: 2, color: Colors.grey)
                    ),
                  ),
                ),
                SizedBox(height: 30.0,),
                buildGetOtpButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



//
// class loginScreen extends StatefulWidget {
//
//   @override
//   _loginScreenState createState() => _loginScreenState();
// }
//
// class _loginScreenState extends State<loginScreen> {

  // Widget buildGetOtpButton () {
  //   return Container(
  //     // padding: EdgeInsets.symmetric(vertical: 100)
  //     padding: EdgeInsets.only(top: 100),
  //     width: double.infinity,
  //     child: RaisedButton(
  //       elevation: 5,
  //       onPressed: () {
  //         Navigator.push(context, MaterialPageRoute(builder: (context) => verifyOTP(),),);
  //       },
  //       padding: EdgeInsets.all(15),
  //       shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(6)
  //       ),
  //       color: Color(0xff161853),
  //       child: Text(
  //         'Get OTP',
  //         style: TextStyle(
  //           color: Colors.white,
  //           fontSize: 18,
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //     ),
  //   );
  // }


  // @override
  // Widget build(BuildContext context) {
  //   // return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Colors.grey[100],
    //     // leading: IconButton(
    //     //     icon: Icon(Icons.arrow_back),
    //     //     color: Colors.black,
    //     //     onPressed: () =>
    //     //         Navigator.of(context).pop()
    //     // ),
    //     title: Text(
    //       'Login/Signup',
    //       style: kLabelTextStyle,
    //     ),
    //   ),
    //   body: Container(
    //         child: Padding(
    //             padding: const EdgeInsets.only(left: 20.0, top: 200.0, right: 30.0, bottom: 20.0),
    //             child: SingleChildScrollView(
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: <Widget> [
    //                   Text(
    //                     'Mobile Number',
    //                       textAlign: TextAlign.justify,
    //                       style: kLabelTextStyle
    //                   ),
    //                   SizedBox(height: 20.0),
    //                   TextField(
    //                     decoration: InputDecoration(
    //                       // border: InputBorder.none,
    //                       // contentPadding: EdgeInsets.only(top: 14),
    //                       prefixIcon: Icon(
    //                         Icons.phone_android,
    //                         color: Colors.black,
    //                       ),
    //                       hintText: 'Enter Your Phone Number',
    //                       contentPadding:
    //                       EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
    //                       labelStyle: kLabelTextStyle,
    //                       border: OutlineInputBorder(
    //                           borderRadius: BorderRadius.circular(5),
    //                           borderSide: BorderSide(width: 2, color: Colors.black,)),
    //                       focusedBorder: OutlineInputBorder(
    //                           borderRadius: BorderRadius.circular(4),
    //                           borderSide: BorderSide(width: 2, color: Colors.grey)
    //                         ),
    //                       ),
    //                     ),
    //                   SizedBox(height: 30.0,),
    //                   buildGetOtpButton(),
    //                   ],
    //                 ),
    //             ),
    //         ),
    //   ),
//     // );
//   }
// }
