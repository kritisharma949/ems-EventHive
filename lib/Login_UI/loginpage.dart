import 'package:ems/first_page.dart';
import 'package:flutter/material.dart';
import 'package:ems/landing_page_afterlogin.dart';
import 'forget_password.dart';
import 'package:ems/reusbale_widgets_constants.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              hText: 'Email',
              prefixIcon: Icon(Icons.person),
            ),
            SizedBox(
              height: 20,
            ),
            EntryField(
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
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
