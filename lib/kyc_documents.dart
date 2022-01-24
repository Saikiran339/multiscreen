import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multiscreen/kyc_documents_submit.dart';
import 'constants.dart';
import 'kyc_documents_submit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';



class kycdocuments extends StatefulWidget {

  @override
  _kycdocumentsState createState() => _kycdocumentsState();
}

class _kycdocumentsState extends State<kycdocuments> {

  Widget buildUploadFileButton() {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 100)
      padding: EdgeInsets.only(top: 50),
      width: double.infinity,

      child: RaisedButton.icon(
          elevation: 5,
          onPressed: () {
            Get.toNamed('/kycDocumentsSubmit');
            // Get.to(() => kycDocumentsSubmit());
            // Navigator.push(context, MaterialPageRoute(builder: (context) => kycDocumentsSubmit(),),);
          },
          padding: EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6)
            ),
            color: Color(0xff161853),
          icon: Icon(Icons.attach_file, color: Colors.white,),
          label: Text(
            'Upload File',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
          )
      ),
    );
  }

  Widget buildSubmitButton() {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 100)
      padding: EdgeInsets.only(top: 350),
      width: double.infinity,
      child: RaisedButton(
          elevation: 5,
          onPressed: () {},
          padding: EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6)
          ),
          color: Color(0xff9D9D9D),
          child: Text(
            'Submit',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
      ),
    );
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
              Navigator.of(context).pop()
      ),
      title: Text(
        'Kyc Documents',
        style: kLabelTextStyle,
      ),
    ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Text(
                  'Enter Your Aadhar Number',
                  textAlign: TextAlign.justify,
                  style: kLabelTextStyle
              ),
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
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
              Text('Upload Aadhar Card'),
              buildUploadFileButton(),
              SizedBox(height: 20.0),
              buildSubmitButton(),
            ],
          ),
        ),
      ),
    );
  }
}
