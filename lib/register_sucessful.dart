import 'package:flutter/material.dart';
import 'profile_details.dart';
import 'package:get/get.dart';




class registerSucessful extends StatefulWidget {

  @override
  _registerSucessfulState createState() => _registerSucessfulState();
}

class _registerSucessfulState extends State<registerSucessful> {

  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
            () => Get.toNamed('/profileDetails')
                // Get.to(() => profileDetails())
                // Navigator.push(context, MaterialPageRoute(builder: (context) => profileDetails()),
        );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.grey[100],
      //   leading: IconButton(
      //       icon: Icon(Icons.arrow_back),
      //       color: Colors.black,
      //       onPressed: () =>
      //           Navigator.of(context).pop()
      //   ),
      // ),
      body: Center(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 500.0,vertical: 150.0)),
            Icon(
              Icons.verified,
              color: Colors.green,
              size: 70.0,
            ),
            SizedBox(height: 40.0,),
            Text('Your Registration Done Succesfully'),
            SizedBox(height: 40.0,),
            // buildSubmitButton(),
          ],
        ),

      ),
    );
  }
}


