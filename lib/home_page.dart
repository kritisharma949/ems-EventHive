import 'package:flutter/material.dart';
import 'package:ems/Login_UI/loginpage.dart';
// import 'package:event_calender_app/Login_UI/loginpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: Text(
                  'click here to back to login page',
                  style: TextStyle(color: Colors.red),
                ),
              )
            ],
          ),
        ),
    );
  }
}
