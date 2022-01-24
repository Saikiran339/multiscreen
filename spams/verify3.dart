// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:multiscreen/constants.dart';
// import 'package:otp_text_field/otp_field.dart';
// import 'package:otp_text_field/otp_field_style.dart';
// import 'package:otp_text_field/style.dart';
// import 'profile.dart';
//
// class verifyOTP3 extends StatefulWidget {
//   @override
//   _verifyOTP3State createState() => _verifyOTP3State();
// }
//
// class _verifyOTP3State extends State<verifyOTP3> {
//
//   Widget buildOTPForm () {
//     return SingleChildScrollView(
//       child: OTPTextField(
//         length: 4,
//         width: MediaQuery.of(context).size.width,
//         fieldWidth: 58,
//         otpFieldStyle: OtpFieldStyle(
//           backgroundColor: Color(0xffF5F5F5),
//           borderColor: Colors.white,
//         ),
//         style: TextStyle(
//             fontSize: 17
//         ),
//         textFieldAlignment: MainAxisAlignment.spaceAround,
//       ),
//     );
//   }
//
//   Widget buildGetOtpButton () {
//     return Container(
//       // padding: EdgeInsets.symmetric(vertical: 100)
//       padding: EdgeInsets.only(top: 100),
//       width: double.infinity,
//       child: RaisedButton(
//         elevation: 5,
//         onPressed: () {
//           Navigator.push(context, MaterialPageRoute(builder: (context) => profileRegistration(),),);
//         },
//         padding: EdgeInsets.all(15),
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(6)
//         ),
//         color: Color(0xff161853),
//         child: Text(
//           'Verify',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey[100],
//         leading: IconButton(
//             icon: Icon(Icons.arrow_back),
//             color: Colors.black,
//             onPressed: () =>
//                 Navigator.of(context).pop()
//         ),
//         title: Text(
//           'Verify It\'s You',
//           style: kLabelTextStyle,
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: SizedBox(
//           width: double.infinity ,
//           child: Padding(
//             padding: EdgeInsets.all(30.0),
//             child: Column(
//               children: <Widget> [
//                 Text(
//                   'Enter The OTP Sent To Your Number',
//                   style: TextStyle(
//                     color: Colors.grey,
//                   ),
//                 ),
//                 SizedBox(height: 10.0,),
//                 Text(
//                   '+91 9876543210',
//                   style: TextStyle(
//                     shadows: [
//                       Shadow(
//                           color: Colors.grey,
//                           offset: Offset(0, -4))
//                     ],
//                     color: Colors.transparent,
//                     decoration:
//                     TextDecoration.underline,
//                     decorationColor: Colors.yellow[500],
//                   ),
//                 ),
//                 SizedBox(height: 100.0),
//                 buildOTPForm(),
//                 SizedBox(height: 70.0),
//                 RichText(
//                   text: TextSpan(
//                       children: [
//                         TextSpan(text: "Don't get code ",style: TextStyle(fontSize: 15.0,color: Colors.grey)),
//                         TextSpan(text: "Resend",style: TextStyle(fontSize: 15.0,color: Colors.blue))
//                       ]
//                   ),
//                 ),
//                 // buildTimer(),
//                 SizedBox(height: 50.0,),
//                 buildGetOtpButton(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//
//
//
//
// // Row buildTimer() {
// //   return Row(
// //     mainAxisAlignment: MainAxisAlignment.center,
// //     children: <Widget> [
// //       TweenAnimationBuilder(
// //         tween: IntTween(begin: 30, end: 0),
// //         duration: Duration(seconds: 60),
// //         builder: (context, int value, child)
// //         => Text("00:${value.toInt()}",
// //           style: Theme.of(context).textTheme.subtitle2!.copyWith(
// //             fontWeight: FontWeight.normal,
// //             fontSize: 25.0,
// //             color: Colors.black,
// //           ),
// //         ),
// //         onEnd: () {},
// //       ),
// //     ],
// //   );
// // }
// }