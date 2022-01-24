import 'package:flutter/material.dart';
import 'package:multiscreen/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multiscreen/loginScreen.dart';
import 'register_sucessful.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:ffi';
import 'package:get/get.dart';
// import '../spams/register.dart';


class profileRegistration extends StatefulWidget {

  // final String title:

  @override
  _profileRegistrationState createState() => _profileRegistrationState();
}

class _profileRegistrationState extends State<profileRegistration> {

  Widget buildRegisterButton () {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 100)
      padding: EdgeInsets.only(top: 20),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () {
          Get.toNamed('/registerSucessful');
          // Get.to(() => registerSucessful());
          // Navigator.push(context, MaterialPageRoute(builder: (context) => registerSucessful(),),);
        },
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6)
        ),
        color: Color(0xff797979),
        child: Text(
          'Register',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  var image;
  void _uploadImage() async {
    final _picker = ImagePicker();
    var _pickedImage = await _picker.pickImage(source:  ImageSource.gallery);
    setState(() {
      print( _pickedImage?.path);
      image = _pickedImage?.path;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () =>
                Get.offAll(loginScreen())
                // Navigator.of(context).pop()
        ),
        title: Text('Registration',style: kLabelTextStyle ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 500.0,vertical: 20.0)),
            SizedBox(
              // height: 150,
              // width: 150,
              height: 115,
              width: 115,
              child: Stack(
                fit: StackFit.expand,
                overflow: Overflow.visible,
                children: [
                  Container(

                    width: 48.0,
                    height: 48.0,
                    // decoration: new BoxDecoration(
                    //   shape: BoxShape.circle,
                    //   image: new DecorationImage(
                    //     image: image!=null? Image.file(File(image)).image : null ,
                    //     fit: BoxFit.fill,
                    //   ))
                    child: CircleAvatar(
                      radius: 100.0,
                        // shape: BoxShape.circle
                        // child: image !=null ?Image.file(File(image)): null,
                        // borderRadius: BorderRadius.circular(500.0),
                      backgroundImage: image !=null ?  Image.file(File(image)).image : AssetImage("assets/images/profile.jpg")
                    ),
                  ),
                  Positioned(
                    right: -12,
                    bottom: 0,
                    child: SizedBox(
                      height: 46,
                      width: 46,
                      child: FlatButton(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            side: BorderSide(color: Colors.black12)
                        ),
                        color: Color(0xcc504653),
                        onPressed: _uploadImage,
                        // onPressed: () {},
                        child: Icon(Icons.camera_alt,
                        color: Colors.white,
                        ),
                      // child: SvgPicture.asset("assets/icons/canvas.svg",),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Text('Upload Picture',
              style: kLabelTextStyle,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 40.0, right: 30.0, bottom: 20.0),
              // child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget> [
                    Text(
                        'Name*',
                        textAlign: TextAlign.justify,
                        style: kLabelTextStyle
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      style: TextStyle(fontSize: 15.0),
                      decoration: InputDecoration(
                        // border: InputBorder.none,
                        // contentPadding: EdgeInsets.only(top: 14),
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: Colors.blue,
                        ),
                        hintText: 'Enter Name',
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
                    SizedBox(height: 20.0,),
                    Text(
                        'Mobile Number*',
                        textAlign: TextAlign.justify,
                        style: kLabelTextStyle
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      style: TextStyle(fontSize: 15.0),
                      decoration: InputDecoration(
                        // border: InputBorder.none,
                        // contentPadding: EdgeInsets.only(top: 14),
                        prefixIcon: Icon(
                          Icons.phone_android,
                          color: Colors.blue,
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
                    SizedBox(height: 20.0,),
                    Text(
                        'Email (optional)',
                        textAlign: TextAlign.justify,
                        style: kLabelTextStyle
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      style: TextStyle(fontSize: 15.0),
                      decoration: InputDecoration(
                        // border: InputBorder.none,
                        // contentPadding: EdgeInsets.only(top: 14),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.blue,
                        ),
                        hintText: 'Enter Mail Id',
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
                    SizedBox(height: 10.0,),
                    Text('Email is Only To Send Promotional '
                        'Emails To Customers if Email is Given',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    ),
                    SizedBox(height: 10.0,),
                    buildRegisterButton(),
                    SizedBox(height: 20.0,),
                    RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: "By Signing in, You're Agreed to Our ",style: TextStyle(color: Colors.grey)),
                            TextSpan(text: "Terms of Use",style: TextStyle(color: Colors.pink)),
                            TextSpan(text: " and",style: TextStyle(color: Colors.grey)),
                            TextSpan(text: " Privacy Policy",style: TextStyle(color: Colors.pink))
                          ],
                        ),
                    ),
                  ],
                ),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
