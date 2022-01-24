import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiscreen/aadhar_verification.dart';
import 'package:multiscreen/kyc_documents.dart';
import 'package:multiscreen/loginScreen.dart';
import 'package:multiscreen/profile_details.dart';
import 'package:multiscreen/register_sucessful.dart';
import 'package:multiscreen/verify.dart';
import 'kyc_documents.dart';
import 'bank_details2.dart';
import 'loginScreen.dart';
import 'aadhar_verification.dart';
import 'profile_details.dart';
import 'profile.dart';
import 'bank_details.dart';
import 'submitted_bankdetails.dart';
import 'bank_accounts.dart';
import 'kyc_documents_submit.dart';
import 'aadhar_submitted.dart';
import 'profile_details2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Navigation',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      getPages: [
        GetPage(name: '/', page: ()=> loginScreen()),
        GetPage(name: '/verifyOTP', page: ()=> verifyOTP()),
        GetPage(name: '/profileRegistration', page: ()=> profileRegistration()),
        GetPage(name: '/registerSucessful', page: ()=> registerSucessful()),
        GetPage(name: '/profileDetails', page: ()=> profileDetails()),
        GetPage(name: '/AddBankAccount', page: ()=> AddBankAccount()),
        GetPage(name: '/BankDetails', page: ()=> BankDetails()),
        GetPage(name: '/SubmittedSucessful', page: ()=> SubmittedSucessful()),
        GetPage(name: '/BankAccounts', page: ()=> BankAccounts()),
        GetPage(name: '/AadharVerification', page: ()=> AadharVerification()),
        GetPage(name: '/kycdocuments', page: ()=> kycdocuments()),
        GetPage(name: '/kycDocumentsSubmit', page: ()=> kycDocumentsSubmit()),
        GetPage(name: '/AadharSubmitted', page: ()=> AadharSubmitted()),
        GetPage(name: '/profileDetails2', page: ()=> profileDetails2()),
      ],
      home: loginScreen(),
    );
  }
}



