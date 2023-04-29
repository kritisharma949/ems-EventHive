// import 'package:ems/Login_UI/first_page.dart';
// import 'package:flutter/material.dart';
// import 'package:ems/landing_page_afterlogin.dart';
// import 'forget_password.dart';
// import 'package:ems/reusbale_widgets_constants.dart';
// import 'dart:convert';
// import 'dart:async';
// import 'dart:io';
// import 'package:http/http.dart' as http;
// class LoginPage extends StatelessWidget {
//   LoginPage({super.key});
//
//   TextEditingController email = TextEditingController();
//   TextEditingController password = TextEditingController();
//
//   Future<void> login() async {
//     if (email.text != "" && password.text != "") {
//       try {
//         String uri = "http://localhost/ems_api/login.php";
//
//         var res = await http.post(Uri.parse(uri),
//             body: {"email": email.text, "password": password.text});
//
//         if (res.statusCode == 200) {
//           var response = jsonDecode(res.body);
//           if (response["success"] == true) {
//             var context;
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => HomePage(),
//                 ));
//           } else {
//             print("Invalid username or password");
//           }
//         } else {
//           print(
//               "Error occurred while communicating with server. Status code: ${res.statusCode}");
//         }
//       } catch (e) {
//         print(e);
//       }
//     } else {
//       print("Please enter your username and password");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //  backgroundColor: Colors.teal,
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               //startText,
//               'Welcome User',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 33,
//               ),
//             ),
//             // kFieldSizedBox,
//             Text(
//               'login to continue to EMS',
//               style: TextStyle(fontSize: 20),
//             ),
//             kNFieldSizedBox,
//             EntryField(
//               controller: email,
//               hText: 'Email',
//               prefixIcon: Icon(Icons.person),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             EntryField(
//               controller: password,
//               hText: 'Password',
//               prefixIcon: Icon(Icons.lock),
//             ),
//             kNFieldSizedBox,
//             Container(
//               width: double.infinity,
//               margin: EdgeInsets.symmetric(horizontal: 10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: kThemeColor,
//               ),
//               child: ButtonText(
//                 label: 'Log In',
//                 onPress: () {
//                   // Navigator.push(
//                   //   context,
//                   //   MaterialPageRoute(
//                   //     builder: (context) => HomePage(),
//                   //   ),
//                   login(context);
//                 },
//                 textColor: kButtonTextColor,
//               ),
//             ),
//             ButtonText(
//               label: 'Forget Password?',
//               onPress: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ForgetpPage(),
//                   ),
//                 );
//               },
//               textColor: Colors.black,
//             ),
//             ButtonText(
//               label: 'Back',
//               onPress: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => MyApp(),
//                   ),
//                 );
//               },
//               textColor: Colors.black,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:ems/Login_UI/first_page.dart';
import 'package:flutter/material.dart';
import 'package:ems/landing_page_afterlogin.dart';
import 'forget_password.dart';
import 'package:ems/reusbale_widgets_constants.dart';
import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> login(BuildContext context) async {
    if (email.text != "" && password.text != "") {
      try {
        String uri = "http://localhost/ems_api/login.php";

        var res = await http.post(Uri.parse(uri),
            body: {"email": email.text, "password": password.text});

        if (res.statusCode == 200) {
          var response = jsonDecode(res.body);
          if (response["success"] == true) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
          } else {
            print("Invalid username or password");
          }
        } else {
          print(
              "Error occurred while communicating with server. Status code: ${res.statusCode}");
        }
      } catch (e) {
        print(e);
      }
    } else {
      print("Please enter your username and password");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              //startText,
              'Welcome User',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 33,
              ),
            ),
            // kFieldSizedBox,
            Text(
              'login to continue to EMS',
              style: TextStyle(fontSize: 20),
            ),
            kNFieldSizedBox,
            EntryField(
              controller: email,
              hText: 'Email',
              prefixIcon: Icon(Icons.person),
            ),
            SizedBox(
              height: 20,
            ),
            EntryField(
              controller: password,
              hText: 'Password',
              prefixIcon: Icon(Icons.lock),
            ),
            kNFieldSizedBox,
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kThemeColor,
              ),
              child: ButtonText(
                label: 'Log In',
                onPress: () {
                  login(context);
                },
                textColor: kButtonTextColor,
              ),
            ),
            ButtonText(
              label: 'Forget Password?',
              onPress: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgetpPage(),
                  ),
                );

              },
              textColor: Colors.black,
            ),
            ButtonText(
              label: 'Back',
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyApp(),
                  ),
                );
              },
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
