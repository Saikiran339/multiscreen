import 'package:flutter/material.dart';
import 'package:multiscreen/kyc_documents.dart';
import 'package:get/get.dart';


class AadharVerification extends StatefulWidget {

  @override
  _AadharVerificationState createState() => _AadharVerificationState();
}

class _AadharVerificationState extends State<AadharVerification> {

  Widget buildSubmitButton() {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 100)
      padding: EdgeInsets.only(top: 120),
      width: 300.0,
      child: RaisedButton(
          elevation: 5,
          onPressed: () {
            Get.toNamed('/kycdocuments');
            // Get.to(() => kycdocuments());
            // Navigator.push(context, MaterialPageRoute(builder: (context) => AadharSubmitted(),),);
          },
          // padding: EdgeInsets.all(15),
          padding:
          EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6)
          ),
          color: Color(0xff161853),
          child: Text(
            'Upload Again',
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
          'Aadhar Verification',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 18.0,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 500.0,vertical: 100.0)),
            Icon(
              Icons.sentiment_dissatisfied,
              color: Color(0xFF787476),
              size: 90.0,
            ),
            SizedBox(height: 40.0,),
            Text('We are Sorry!',
              style: TextStyle(
                  color: Color(0xFFEF4F82)
              ),
            ),
            SizedBox(height: 30.0,),
            buildSubmitButton()
          ],
        ),


      ),
    );
  }
}


