import 'package:ems/Login_UI/loginpage.dart';
import 'package:ems/details.dart';
import 'package:flutter/material.dart';
import 'package:ems/newpage.dart';
import 'package:ems/reusbale_widgets_constants.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ems/PopularNow.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome User'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('Images/firstpage.jpg'),
              )
                  // image: Image(),
                  ),
              child: Text(' hi '),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: kThemeColor,
              ),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: kThemeColor,
              ),
              title: Text('Profile'),
              onTap: () {
                // do something
              },
            ),
            ListTile(
              leading: Icon(
                Icons.event,
                color: kThemeColor,
              ),
              title: Text('Create an event'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.arrow_back,
                color: kThemeColor,
              ),
              title: Text('Back'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        EventHomePage(
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsPage(),
                              ),
                            );
                          },
                          labeltext: 'Birthday',
                          image: Image.asset('image/firstpage.jpg'),
                        ),
                        EventHomePage(
                            onPress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsPage(),
                                ),
                              );
                            },
                            labeltext: 'Marriage',
                            image: Image.asset('image/firstpage.jpg')),
                        EventHomePage(
                            onPress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsPage(),
                                ),
                              );
                            },
                            labeltext: 'Anniversary',
                            image: Image.asset('image/firstpage.jpg')),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailsPage(),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset('image/firstpage.jpg'),
                                  ),
                                  Text(
                                    'Birthday',
                                    style: TextStyle(
                                      fontFamily: 'SourceSansPro',
                                      fontSize: 12.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailsPage(),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset('image/firstpage.jpg'),
                                  ),
                                  Text(
                                    'Anniversary',
                                    style: TextStyle(
                                      fontFamily: 'SourceSansPro',
                                      fontSize: 12.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailsPage(),
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset('image/firstpage.jpg'),
                                  ),
                                  Text(
                                    'Marriage',
                                    style: TextStyle(
                                      fontFamily: 'SourceSansPro',
                                      fontSize: 12.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OtherEvents(),
                          ),
                        );
                      },
                      child: Text('View All'),
                    )
                  ],
                ),
              ),
              // Text("Popular Now"),
              Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    height: 1,
                    width: width * 0.85,
                    margin: EdgeInsets.all(10),
                    child: PopularNow(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      //),
    );
  }
}
