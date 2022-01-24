import 'package:flutter/material.dart';
import 'package:multiscreen/aadhar_verification.dart';
import 'package:multiscreen/kyc_documents.dart';
import 'constants.dart';
import 'bank_details.dart';
import 'profile_details2.dart';
import 'package:get/get.dart';
import 'home_screen.dart';


class profileDetails extends StatefulWidget {


  @override
  _profileDetailsState createState() => _profileDetailsState();
}

class _profileDetailsState extends State<profileDetails> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () =>
                Get.offAll(homeScreen()),
                // Navigator.of(context).pop()
        ),
        title: Text('Profile', style: kLabelTextStyle),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5
                        )
                      ]
                    ),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("assets/images/dean.jpg"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.65,
                    padding: EdgeInsets.only(left: 20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Shashi'),
                            // SizedBox(width: 30.0,),
                            Container(
                              child: IconButton(
                                icon: Icon(
                                Icons.open_in_new,color: Colors.red,), onPressed: () {  },
                  ),
                            ),
                            // Text('(655) 766-4825')
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 135.0),
                          child: Text('(655) 766-4825',
                          style: TextStyle(
                            color: Color(0xFF7E7E7E)
                          ),),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(color: Color(0xFFA8A8A8),),
            SizedBox(height: 5.0,),
            ProfileMenuItem(),
            Divider(color: Color(0xFFA8A8A8),),
            ProfileMenuItem2(),
            Divider(color: Color(0xFFA8A8A8),),
            ProfileMenuItem3(),
            Divider(color: Color(0xFFA8A8A8),),
            ProfileMenuItem4(),
            Divider(color: Color(0xFFA8A8A8),),
            ProfileMenuItem5(),
            Divider(color: Color(0xFFA8A8A8),),
          ],
        ),
      )
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Get.toNamed('/AddBankAccount');
          // Get.to(() => AddBankAccount());
          // Navigator.push(context, MaterialPageRoute(builder: (context) => AddBankAccount(),),);
        },
        child: Padding(
            padding: EdgeInsets.only(top: 20.0,left: 40.0,right: 25.0,bottom: 20.0),
        child: Row(
          children: [
            Icon(Icons.account_balance,color: Color(0xFF848484),),
            SizedBox(width: 30.0,),
            Text('Bank details',
            style: TextStyle(
              fontSize: 20.0
            ),
            ),
            Spacer(),
            Icon(Icons.chevron_right,color: Color(0xFFA8A8A8),)
          ],
        )
        ),
      ),
    );
  }
}

class ProfileMenuItem2 extends StatelessWidget {
  const ProfileMenuItem2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {},
        child: Padding(
            padding: EdgeInsets.only(top: 20.0,left: 40.0,right: 25.0,bottom: 20.0),
            child: Row(
              children: [
                Icon(Icons.notifications,color: Color(0xFF848484),),
                SizedBox(width: 30.0,),
                Text('Notifications',
                  style: TextStyle(
                      fontSize: 20.0,
                  ),
                ),
                Spacer(),
                Icon(Icons.chevron_right,color: Color(0xFFA8A8A8),)
              ],
            ),
        ),
      ),
    );
  }
}

class ProfileMenuItem3 extends StatelessWidget {
  const ProfileMenuItem3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Get.toNamed('/AadharVerification');
          // Get.to(() => AadharVerification());
          // Navigator.push(context, MaterialPageRoute(builder: (context) => kycdocuments(),),);
        },
        child: Padding(
            padding: EdgeInsets.only(top: 20.0,left: 40.0,right: 25.0,bottom: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.branding_watermark,color: Color(0xFF848484),),
                    SizedBox(width: 30.0,),
                    Text('KYC',
                      style: TextStyle(
                          fontSize: 20.0
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.chevron_right,color: Color(0xFFA8A8A8),)
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(right: 40.0),
                  child: Text('Submitted (Under Verification)',
                    style: TextStyle(
                        color: Color(0xFFFF0000)
                    ),
                  ),
                )
              ],
            ),
        ),
      ),
    );
  }
}

class ProfileMenuItem4 extends StatelessWidget {
  const ProfileMenuItem4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {},
        child: Padding(
            padding: EdgeInsets.only(top: 20.0,left: 40.0,right: 25.0,bottom: 20.0),
            child: Row(
              children: [
                Icon(Icons.confirmation_number,color: Color(0xFF848484),),
                SizedBox(width: 30.0,),
                Text('Requests',
                  style: TextStyle(
                      fontSize: 20.0
                  ),
                ),
                Spacer(),
                Icon(Icons.chevron_right,color: Color(0xFFA8A8A8),)
              ],
            )
        ),
      ),
    );
  }
}

class ProfileMenuItem5 extends StatelessWidget {
  const ProfileMenuItem5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {},
        child: Padding(
            padding: EdgeInsets.only(top: 20.0,left: 40.0,right: 25.0,bottom: 20.0),
            child: Row(
              children: [
                Icon(Icons.support_agent,color: Color(0xFF848484),),
                SizedBox(width: 30.0,),
                Text('Help',
                  style: TextStyle(
                      fontSize: 20.0
                  ),
                ),
                Spacer(),
                Icon(Icons.chevron_right,color: Color(0xFFA8A8A8),)
              ],
            )
        ),
      ),
    );
  }
}