import 'package:ems/details.dart';
import 'package:flutter/material.dart';

// import 'package:ems/newpage.dart';
import 'package:ems/reusbale_widgets_constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
                  // image: Image(),
                  ),
              child: Text('  '),
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
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Text(
              //   'Categories',
              //   style: TextStyle(
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              Expanded(
                child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    height: 1,
                    width: width * 0.85,
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            children: const [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text('Trending Right Now'),
                              ),
                              kNFieldSizedBox,
                              Most(),
                              kNFieldSizedBox,
                            ],
                          ),
                        ),
                        // ButtonText(
                        //   label: 'View All',
                        //   onPress: () {
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => OtherEvents(),
                        //       ),
                        //     );
                        //   },
                        //   textColor: Colors.black,
                        // ),
                      ],
                    ),
                  ),
                ),
              ),

              Text('Book Your Event'),
              // Row(
              //   children: [
              //     CategoriesButton(
              //       color: Colors.white,
              //       image: Image.asset('image/firstpage.jpg'),
              //       label: 'Marriage',
              //       onPress: () {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => DetailsPage(),
              //           ),
              //         );
              //       },
              //     ),
              //     CategoriesButton(
              //       color: Colors.white,
              //       image: Image.asset('image/firstpage.jpg'),
              //       label: 'Anniversary',
              //       onPress: () {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => DetailsPage(),
              //           ),
              //         );
              //       },
              //     ),
              //     CategoriesButton(
              //       color: Colors.white,
              //       image: Image.asset('image/firstpage.jpg'),
              //       label: 'Seminar',
              //       onPress: () {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => DetailsPage(),
              //           ),
              //         );
              //       },
              //     ),
              //   ],
              // ),
              //kNFieldSizedBox,
              // Row(
              //   children: [
              //     CategoriesButton(
              //       color: Colors.white,
              //       image: Image.asset('image/firstpage.jpg'),
              //       label: 'Festive',
              //       onPress: () {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => DetailsPage(),
              //           ),
              //         );
              //       },
              //     ),
              //     //  kWFieldSizedBox,
              //
              //     CategoriesButton(
              //       color: Colors.white,
              //       image: Image.asset('image/firstpage.jpg'),
              //       label: 'Birthday',
              //       onPress: () {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => DetailsPage(),
              //           ),
              //         );
              //       },
              //       // ),
              //     ),
              //     CategoriesButton(
              //       color: Colors.white,
              //       image: Image.asset('image/firstpage.jpg'),
              //       label: 'Others',
              //       onPress: () {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => OtherEvents(),
              //           ),
              //         );
              //       },
              //     ),
              //   ],
              // ),
              // ButtonText(
              //   label: 'View All',
              //   onPress: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => OtherEvents(),
              //       ),
              //     );
              //   },
              //   textColor: Colors.black,
              // ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Container(
                            // height: 1,
                            width: width * 0.79,
                            margin: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: const [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text('Event Sites'),
                                      ),
                                      kNFieldSizedBox,
                                      Most(),
                                      kNFieldSizedBox,
                                      Most(),
                                      kNFieldSizedBox,
                                      Most(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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

class Most extends StatelessWidget {
  const Most({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: () {},
          child: Container(
            decoration: BoxDecoration(
              // image: DecorationImage(image: AssetImage("Images/firstpage.jpg")),
              color: kThemeColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
                child: Text(
              'Hi',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ),
      ),
    );
  }
}
