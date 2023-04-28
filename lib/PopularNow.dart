import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:ems/reusbale_widgets_constants.dart';

class PopularNow extends StatefulWidget {
  const PopularNow({super.key});

  @override
  State<PopularNow> createState() => _PopularNowState();
}

class _PopularNowState extends State<PopularNow> {
  TextEditingController eventType = TextEditingController(text: "Marriage");
  TextEditingController city = TextEditingController(text: "Sarajevo");

  void handleSearch() {
    insertrecords();
    // getRecord();
  }

  List<dynamic> response = [];

  // Future<void> viewHotelData(String id) async {
  //   try {
  //     String url = "http://127.0.0.1:5000";
  //     var response = await http.post(Uri.parse(url));
  //
  //
  //       if (response.statusCode == 200) {
  //         var data = response.body;
  //         debugPrint(data);
  //         debugPrint(id);
  //       } else {
  //         debugPrint("Request failed: ${response.statusCode}");
  //       }
  //
  //   } catch (e) {
  //     debugPrint("Error Viewing Data");
  //   }
  // }

  // Future<void> getRecord() async {
  //   String uri = "http://127.0.0.1:5000";
  //   try {
  //     var response = await http.get(Uri.parse(uri));
  //     setState(() {
  //       List data = jsonDecode(response.body);
  //       print(response.body);
  //     });
  //   } catch (e) {
  //     print(e);
  //   }
  // }
  Future<void> insertrecords() async {
    if (eventType.text != "" || city.text != "") {
      try {
        String uri = "http://127.0.0.1:5000";
        Map<String, dynamic> data = {
          'EventType': eventType.text,
          'City': city.text,
        };
        String jsonData = jsonEncode(data);
        var res = await http.post(
          Uri.parse(uri),
          body: jsonData,
          headers: {"Content-Type": "application/json"},
        );

        var dataJson = jsonDecode(res.body)['data'];
        if (dataJson is String) {
          // Convert the string to a list of dictionaries
          response = List<Map<String, dynamic>>.from(
            jsonDecode(dataJson).map((x) => Map<String, dynamic>.from(x)),
          );
        } else if (dataJson is List) {
          // Use the list directly
          response = dataJson;
        }

        print(response);

        // Check if the response was successful (status code 200)
        if (res.statusCode == 200) {
          print('Success');
        } else {
          print('Request failed with status code ${res.statusCode}');
        }
      } catch (e) {
        print('Error: $e');
      }
    } else {
      debugPrint("please fill the data");
    }
  }

  @override
  void initState() {
    super.initState();
    // insertrecords();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Call the onPressed callback of the ButtonText widget
      handleSearch();
      // getRecord();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kThemeColor,
        title: Text("Popular Now"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              // Expanded(
              //   child: Column(
              //     children: [
              //       PopularNowField(
              //         controller: eventType,
              //         hText: "Enter the Event Name",
              //       ),
              //       kNFieldSizedBox,
              //       PopularNowField(
              //         controller: city,
              //         hText: "Enter the City",
              //       ),
              //       kNFieldSizedBox,
              //       ButtonText(
              //         label: 'Search',
              //         onPress: handleSearch,
              //         textColor: Colors.black,
              //       ),
              //     ],
              //   ),
              // ),

              // TextButton(
              //   onPressed: () {
              //     insertrecords();
              //   },
              //   child: Text("helo"),
              // ),

              // Expanded(
              //   child: ListView.builder(
              //     itemCount: 3,
              //     itemBuilder: (context, index) {
              //       return Card(
              //         child: ListTile(
              //           leading: Icon(Icons.skateboarding),
              //           // title: response[Hid],
              //         ),
              //       );
              //     },
              //   ),
              // ),
              Expanded(
                child: ListView.builder(
                  itemCount: response.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        iconColor: Colors.red,
                        leading: Image.asset(
                          'image/hotel.jpeg',
                        ),
                        title: Text(response[index]['Hname']),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//
//

//
// Expanded(
// flex: 2,
// // color: Colors.red,
// child: ListView.builder(
// itemCount: response.length,
// itemBuilder: (context, index) {
// return Card(
// child: ListTile(
// onTap: () {
// // Navigator.push(
// //   context,
// //   MaterialPageRoute(
// //     builder: (context) => insertrecords(
// //         eventType: response[index]["Event"],
// //         city : response[index]["password"]),
// //   ),
// // );
// },
// leading: Icon(
// CupertinoIcons.heart,
// color: Colors.red,
// ),
// title: Text(response[index]['Hname']),
// subtitle: Text(response[index]['Hid']),
// ),
// );
// },
// ),
// )
