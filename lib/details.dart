import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ems/reusbale_widgets_constants.dart';

enum Services {
  miniGames,
  liveMusic,
  extraDecoration,
}

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final TextEditingController edate = TextEditingController();
  final TextEditingController eName = TextEditingController();
  final TextEditingController enumber = TextEditingController();
  final TextEditingController emoreInfo = TextEditingController();
  final TextEditingController etime = TextEditingController();
  TimeOfDay? time;
  TimeOfDay? pickedTime;
  Services? selectedServices;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    time = TimeOfDay.now();
  }

  // ignore: prefer_void_to_null
  Future<Null> selectTime(BuildContext context) async {
    pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedTime != null) time = pickedTime;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create an Event'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Image(
                  //width: MediaQuery.of(context).size.width * 0.9,
                  height:MediaQuery.of(context).size.height* 1 ,
                  image: AssetImage("image/firstpage.jpg"),
                ),
              ),
              TextField(
                controller: eName,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.event_available,
                    color: kThemeColor,
                  ),
                  labelText: 'Name of The Event',
                  border: OutlineInputBorder(),
                ),
              ),
              kNFieldSizedBox,
              Text(
                'Number of guests:-',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              TextField(
                controller: enumber,
                decoration: InputDecoration(
                    icon: Icon(Icons.person_add_alt_sharp, color: kThemeColor),
                    labelText: 'Number of Guests',
                    border: OutlineInputBorder()),
              ),
              kNFieldSizedBox,
              Row(
                children: [
                  Expanded(
                    child:
                        // Text(
                        //   'Please Select a Date',
                        //   style: TextStyle(
                        //     color: Colors.grey[500],
                        //   ),
                        // ),
                        TextField(
                      controller: edate,
                      decoration: InputDecoration(
                        icon: Icon(Icons.calendar_month, color: kThemeColor),
                        labelText: 'Please select a Date',
                      ),
                      onTap: () async {
                        DateTime? pickeddate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1999),
                            lastDate: DateTime(3000));
                        if (pickeddate != null) {
                          // setState() {
                          edate.text =
                              DateFormat('yyyy-MM-dd').format(pickeddate);
                          // }
                        }
                      },
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: etime,
                      decoration: InputDecoration(
                        icon: Icon(Icons.watch, color: kThemeColor),
                        labelText: 'Please select a Time',
                      ),
                      onTap: () async {
                        selectTime(context);
                        if (pickedTime != null) {
                          // setState() {
                          etime.text =
                              '${pickedTime!.hour}:${pickedTime!.minute.toString().padLeft(2, '0')}';
                        }
                      },
                    ),
                  )
                ],
              ),
              kNFieldSizedBox,
              kNFieldSizedBox,
              kFieldSizedBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: ReusableWidget(
                  //         // colour: kThemeColor,
                  //         onPress: () {
                  //           setState(
                  //             () {
                  //               selectedServices = Services.miniGames;
                  //             },
                  //           );
                  //         },
                  //         colour: selectedServices == Services.miniGames
                  //             ? kThemeColor
                  //             : kNotSelected,
                  //         cardChild: Column(
                  //           children: const [
                  //             Icon(Icons.access_alarm),
                  //             SizedBox(
                  //               height: 40,
                  //             ),
                  //             Text('Mini Games'),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //     Expanded(
                  //       child: ReusableWidget(
                  //         // colour: kThemeColor,
                  //         onPress: () {
                  //           setState(
                  //             () {
                  //               selectedServices = Services.liveMusic;
                  //             },
                  //           );
                  //         },
                  //         colour: selectedServices == Services.liveMusic
                  //             ? kThemeColor
                  //             : kNotSelected,
                  //         cardChild: Column(
                  //           children: const [
                  //             Icon(Icons.access_alarm),
                  //             SizedBox(
                  //               height: 40,
                  //             ),
                  //             Text('Mini Games'),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //     Expanded(
                  //       child: ReusableWidget(
                  //         // colour: kThemeColor,
                  //         onPress: () {
                  //           setState(
                  //             () {
                  //               selectedServices = Services.extraDecoration;
                  //             },
                  //           );
                  //         },
                  //         colour: selectedServices == Services.extraDecoration
                  //             ? kThemeColor
                  //             : kThemeColor,
                  //
                  //         cardChild: Column(
                  //           children: const [
                  //             Icon(Icons.access_alarm),
                  //             SizedBox(
                  //               height: 40,
                  //             ),
                  //             Text('Mini Games'),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  Text(
                    'Feedback ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  kNFieldSizedBox,
                  TextField(
                    controller: emoreInfo,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Any More Information?',
                    ),
                    maxLength: 120,
                    maxLines: 5,
                    textInputAction: TextInputAction.next,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Next'),
        icon: Icon(Icons.arrow_forward),
        onPressed: () {
          // Map<String, dynamic> data = {"Field1": eName};
          // FirebaseFirestore.instance.collection("test").add(data);
          // debugPrint('Added to Database');
        },
        // child: ElevatedButton.icon(
        //   onPressed: () {},
        //   icon: Icon(Icons.add),
        //   label: Text('hi'),
        // ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
