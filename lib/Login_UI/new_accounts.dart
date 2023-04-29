// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
// import 'dart:io';
import 'package:http/http.dart' as http;

import 'loginpage.dart';
import 'package:ems/reusbale_widgets_constants.dart';

class NewAccount extends StatelessWidget {
  NewAccount({Key? key}) : super(key: key);

  TextEditingController fullname = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  Future<void> insertrecord() async {
    if (fullname.text != "" &&
        username.text != "" &&
        email.text != "" &&
        password.text != "" &&
        confirmpassword.text != "") {
      try {
        String uri = "http://localhost/ems_api/signup.php";

        var res = await http.post(Uri.parse(uri), body: {
          "fullname": fullname.text,
          "username": username.text,
          "email": email.text,
          "password": password.text,
          "confirmpassword": confirmpassword.text
        });

        if (res.statusCode == 200) {
          var response = jsonDecode(res.body);
          if (response["success"] == true) {
            print("Record inserted successfully");
            fullname.text = "";
            username.text = "";
            email.text = "";
            password.text = "";
            confirmpassword.text = "";
          } else {
            print("Error occurred while inserting record");
          }
        } else {
          print(
              "Error occurred while communicating with server. Status code: ${res.statusCode}");
        }
      } catch (e) {
        print(e);
      }
    } else {
      print("please fill all fields");
    }
  }

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
                  controller: fullname,
                  hText: 'Full Name',
                  prefixIcon: Icon(Icons.supervised_user_circle),
                ),
                kNFieldSizedBox,
                EntryField(
                  controller: username,
                  hText: ' UserName',
                  prefixIcon: Icon(Icons.person),
                ),
                kNFieldSizedBox,
                EntryField(
                  controller: email,
                  hText: 'Email',
                  prefixIcon: Icon(Icons.mail),
                ),
                kNFieldSizedBox,
                EntryField(
                  controller: password,
                  hText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                ),
                kNFieldSizedBox,
                EntryField(
                  controller: confirmpassword,
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
                      insertrecord();
                    },
                    textColor: kButtonTextColor,
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
                    },
                    textColor: kButtonTextColor,
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
