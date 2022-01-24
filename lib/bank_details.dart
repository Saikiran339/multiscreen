import 'package:flutter/material.dart';
import 'package:multiscreen/bank_details2.dart';
import 'package:get/get.dart';




class AddBankAccount extends StatelessWidget {

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
                padding: EdgeInsets.symmetric(horizontal: 500.0,vertical: 90.0)),
            Icon(
              Icons.error_outline,
              color: Color(0xFFB7BBBD),
              size: 70.0,
            ),
            SizedBox(height: 40.0,),
            Text('Can Not Found Any Bank Account'),
            SizedBox(height: 30.0,),
            Text('Please Add Bank Account'),
            SizedBox(height: 300.0,),
            IconButton(
                onPressed: () {
                  Get.toNamed('/BankDetails');
                  // Get.to(() => BankDetails());
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => BankDetails(),),);
                },
                icon: Icon(
                  Icons.add_circle,
                  color: Color(0xFF54B76B),
                  size: 40.0,
                ),
            ),
            SizedBox(height: 10.0,),
            Text('Add Account')

          ],
        ),

      ),
    );
  }
}


