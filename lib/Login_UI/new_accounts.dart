// ignore_for_file: file_names

import 'package:flutter/material.dart';



import 'loginpage.dart';
import 'package:ems/reusbale_widgets_constants.dart';

class NewAccount extends StatelessWidget {
  const NewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  //startText,
                  'Create a New Account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 33,
                  ),
                ),
                kFieldSizedBox,
                kNFieldSizedBox,
                EntryField(
                  hText: 'Full Name',
                  prefixIcon: Icon(Icons.supervised_user_circle),
                ),
                kNFieldSizedBox,
                EntryField(
                  hText: ' UserName',
                  prefixIcon: Icon(Icons.person),
                ),
                kNFieldSizedBox,
                EntryField(
                  hText: 'Email',
                  prefixIcon: Icon(Icons.mail),
                ),
                kNFieldSizedBox,
                EntryField(
                  hText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                ),
                kNFieldSizedBox,
                EntryField(
                  hText: 'Enter Your password again',
                  prefixIcon: Icon(Icons.lock),
                ),
                kFieldSizedBox,
                kNFieldSizedBox,
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kThemeColor,
                  ),
                  child: ButtonText(
                    label: 'Create a new Account',
                    onPress: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => LoginPage(),
                      //   ),
                      //);
                    }, textColor: kButtonTextColor,
                  ),
                ),
                kNFieldSizedBox,
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kThemeColor,
                  ),
                  child: ButtonText(
                    label: 'Back To Sign In Page',
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    }, textColor: kButtonTextColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
