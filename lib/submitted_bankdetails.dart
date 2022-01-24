import 'package:flutter/material.dart';
import 'package:multiscreen/bank_accounts.dart';
import 'package:multiscreen/profile_details.dart';
import 'package:get/get.dart';


class SubmittedSucessful extends StatefulWidget {

  @override
  _SubmittedSucessfulState createState() => _SubmittedSucessfulState();
}

class _SubmittedSucessfulState extends State<SubmittedSucessful> {

  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
            () => Get.toNamed('/BankAccounts')
                // Navigator.push(context, MaterialPageRoute(builder: (context) => BankAccounts()),
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
                padding: EdgeInsets.symmetric(horizontal: 500.0,vertical: 160.0)),
            Icon(
              Icons.verified,
              color: Colors.green,
              size: 70.0,
            ),
            SizedBox(height: 40.0,),
            Text('Your Bank Details Submitted Succesfully')
          ],
        ),

      ),
    );
  }
}


