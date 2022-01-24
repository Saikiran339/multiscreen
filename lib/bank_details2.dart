import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multiscreen/constants.dart';
import 'package:multiscreen/submitted_bankdetails.dart';
import 'package:get/get.dart';


class BankDetails extends StatefulWidget {

  @override
  _BankDetailsState createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {


  Widget buildSubmitButton() {
    return Container(
        // padding: EdgeInsets.symmetric(vertical: 100)
      padding: EdgeInsets.only(top: 100),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () {
          Get.toNamed('/SubmittedSucessful');
          // Get.to(() => SubmittedSucessful());
          // Navigator.push(context, MaterialPageRoute(builder: (context) => SubmittedSucessful(),),);
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
        ),
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
          'Add Bank account',
          style: kLabelTextStyle,
        ),
      ),

      body: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 50.0, right: 30.0, bottom: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      Text(
                        'Enter Account Number',
                          textAlign: TextAlign.justify,
                        style: kLabelTextStyle
                      ),
                      SizedBox(height: 20.0),
                      TextField(
                        decoration: InputDecoration(
                          // hintText: 'Enter Your Account Number',
                          // labelText: 'Enter Your Account Number',
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



                      SizedBox(height: 25.0),
                      Text('Confirm Account Number',textAlign: TextAlign.left,
                      style: kLabelTextStyle
                      ),
                      SizedBox(height: 15.0),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                          // hintText: 'Confirm Your Account Number',
                          // labelText: 'Confirm Your Account Number',
                          labelStyle: kLabelTextStyle,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(width: 2, color: Colors.black,)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: BorderSide(width: 2, color: Colors.grey)
                            )
                        ),
                      ),



                      SizedBox(height: 25.0),
                      Text('Name Of Account Holder', textAlign: TextAlign.left,
                      style: kLabelTextStyle
                      ),
                      SizedBox(height: 15.0),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                          // hintText: 'Name of Account Holder',
                          // labelText: 'Name of Account Holder',
                          labelStyle: kLabelTextStyle,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(width: 2, color: Colors.black,)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: BorderSide(width: 2, color: Colors.grey)
                            )
                        ),
                      ),



                      SizedBox(height: 25.0),
                      Text('IFSC Code',textAlign: TextAlign.left,
                      style: kLabelTextStyle
                      ),
                      SizedBox(height: 15.0),
                      TextField(
                          decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                            // hintText: 'IFSC Code',
                            // labelText: 'IFSC Code',
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
                      SizedBox(height: 25.0),
                      Text('Branch Name', textAlign: TextAlign.left,
                        style: kLabelTextStyle
                      ),
                      SizedBox(height: 15.0),
                      TextField(
                          decoration: InputDecoration(
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                              // hintText: 'Branch Name',
                              // labelText: 'Branch Name',
                              labelStyle: kLabelTextStyle,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(width: 2, color: Colors.black,)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(width: 2, color: Colors.grey)
                              )
                          ),
                        ),
                      SizedBox(height: 20.0,),
                          buildSubmitButton(),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}