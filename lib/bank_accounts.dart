import 'package:flutter/material.dart';
import 'constants.dart';
import 'bank_details2.dart';
import 'profile_details.dart';
import 'package:get/get.dart';


class BankAccounts extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Get.offAll(profileDetails());
              // Navigator.push(context, MaterialPageRoute(builder: (context) => profileDetails(),),);
              // Navigator.of(context).pop();
            }
        ),
        title: Text('Bank Details', style: kLabelTextStyle),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 60.0, right: 30.0, bottom: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'My Bank Accounts',
                  textAlign: TextAlign.justify,
                  style: kLabelTextStyle,
                ),
                SizedBox(height: 40.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.radio_button_checked,color: Color(0xFF101A43),),
                    SizedBox(width: 20.0,),
                    Text('Sanjay',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.delete),
                      iconSize: 25.0,
                      color: Color(0xFFD8D6D6),
                      onPressed: () {},
                    ),
                    // Icon(Icons.delete,color: Color(0xFFD8D6D6),)
                  ],
                ),
                SizedBox(height: 5.0,),
                Container(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Text('Canara Bank',
                    style: TextStyle(
                        color: Color(0xFFC3C3C3)
                    ),
                  ),
                ),
                SizedBox(height: 15.0,),
                Container(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Text('xxxx xxxx 1234',
                    style: TextStyle(
                        color: Color(0xFFC3C3C3)
                    ),
                  ),
                ),
                Divider(color: Color(0xFFA8A8A8),),
                SizedBox(height: 30.0,),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => BankDetails(),),);
                        },
                        icon: Icon(Icons.add_circle,color: Color(0xFF43B05C),)),
                    SizedBox(width: 20.0,),
                    Text('Add new',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}







// class BankAccounts extends StatelessWidget {
//
//   final VoidCallback onDelete;
//
//   const BankAccounts({Key? key, required this.onDelete}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey[100],
//         leading: IconButton(
//             icon: Icon(Icons.arrow_back),
//             color: Colors.black,
//             onPressed: () {
//               Navigator.push(context, MaterialPageRoute(builder: (context) => profileDetails(),),);
//               // Navigator.of(context).pop();
//             }
//         ),
//         title: Text('Bank Details', style: kLabelTextStyle),
//       ),
//       body: Container(
//         child: Padding(
//           padding: const EdgeInsets.only(left: 20.0, top: 60.0, right: 30.0, bottom: 20.0),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   'My Bank Accounts',
//                   textAlign: TextAlign.justify,
//                   style: kLabelTextStyle,
//                 ),
//                 SizedBox(height: 40.0,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Icon(Icons.radio_button_checked,color: Color(0xFF101A43),),
//                     SizedBox(width: 20.0,),
//                     Text('Sanjay',
//                       style: TextStyle(
//                         fontSize: 16.0,
//                       ),
//                     ),
//                     Spacer(),
//                     IconButton(
//                       icon: Icon(Icons.delete),
//                       iconSize: 24.0,
//                       color: Color(0xFFD8D6D6),
//                       onPressed: this.onDelete,
//                     ),
//                     // Icon(Icons.delete,color: Color(0xFFD8D6D6),)
//                   ],
//                 ),
//                 SizedBox(height: 5.0,),
//                 Container(
//                   padding: EdgeInsets.only(left: 40.0),
//                   child: Text('Canara Bank',
//                     style: TextStyle(
//                         color: Color(0xFFC3C3C3)
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 15.0,),
//                 Container(
//                   padding: EdgeInsets.only(left: 40.0),
//                   child: Text('xxxx xxxx 1234',
//                     style: TextStyle(
//                         color: Color(0xFFC3C3C3)
//                     ),
//                   ),
//                 ),
//                 Divider(color: Color(0xFFA8A8A8),),
//                 SizedBox(height: 30.0,),
//                 Row(
//                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     IconButton(
//                         onPressed: () {
//                           Navigator.push(context, MaterialPageRoute(builder: (context) => BankDetails(),),);
//                         },
//                         icon: Icon(Icons.add_circle,color: Color(0xFF43B05C),)),
//                     SizedBox(width: 20.0,),
//                     Text('Add new',
//                       style: TextStyle(
//                         fontSize: 16.0,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }



