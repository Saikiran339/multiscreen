import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'profile_details2.dart';
import 'package:get/get.dart';


class AadharSubmitted extends StatefulWidget {

  @override
  _AadharSubmittedState createState() => _AadharSubmittedState();
}

class _AadharSubmittedState extends State<AadharSubmitted> {

  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
            () => Get.toNamed('/profileDetails2')
                // Get.to(()=> profileDetails2())
                // Navigator.push(context, MaterialPageRoute(builder: (context) => profileDetails2()),
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
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 500.0,vertical: 150.0)),
            Icon(
              Icons.verified,
              color: Color(0xFF27AD62),
              size: 70.0,
            ),
            SizedBox(height: 40.0,),
            Text('Your Aadhar Submitted Succesfully')
          ],
        ),

      ),
    );
  }
}


