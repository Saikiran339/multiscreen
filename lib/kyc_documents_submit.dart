import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'aadhar_submitted.dart';
import 'package:get/get.dart';




class kycDocumentsSubmit extends StatefulWidget {

  @override
  _kycDocumentsSubmitState createState() => _kycDocumentsSubmitState();
}

class _kycDocumentsSubmitState extends State<kycDocumentsSubmit> {


  Widget buildSubmitButton() {
    return Container(
      // padding: EdgeInsets.symmetric(vertical: 100)
      padding: EdgeInsets.only(top: 250),
      width: double.infinity,
      child: RaisedButton(
          elevation: 5,
          onPressed: () {
            Get.toNamed('/AadharSubmitted');
            // Get.to(() => AadharSubmitted());
            // Navigator.push(context, MaterialPageRoute(builder: (context) => AadharSubmitted(),),);
          },
          padding: EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6)
          ),
          color: Color(0xff161853),
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
              SizedBox(height: 20.0,),
              SizedBox(
                height: 200.0,
                width: 1500.0,
                child: Stack(
                  fit: StackFit.expand,
                  // overflow: Overflow.visible,
                children: [
                  Image.asset('assets/images/aadhar.png'),
                  Positioned(
                    right: 1,
                    bottom: 140,
                    child: SizedBox(
                      height: 46,
                      width: 46,
                      child: FlatButton(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                            // side: BorderSide(color: Colors.black12)
                        ),
                        // color: Color(0xcc504653),
                        onPressed: () {},
                        child: Icon(Icons.cancel,
                          color: Colors.red,
                        ),
                        // child: SvgPicture.asset("assets/icons/canvas.svg",),
                      ),
                    ),
                  )
                ]
              ),
              ),
              // buildUploadFileButton(),
              SizedBox(height: 20.0),
              buildSubmitButton(),
            ],
          ),
        ),
      ),
    );
  }
}

