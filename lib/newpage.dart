import 'package:flutter/material.dart';

class OtherEvents extends StatefulWidget {
  const OtherEvents({Key? key}) : super(key: key);

  @override
  State<OtherEvents> createState() => _OtherEventsState();
}

class _OtherEventsState extends State<OtherEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Events'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              DemoWidget(text: 'Marriage'),
              SizedBox(
                height: 10,
              ),
              DemoWidget(text: 'Anniversary'),
              SizedBox(
                height: 10,
              ),
              DemoWidget(text: 'Birthday'),
            ],
          ),
        ),
      ),
    );
  }
}

class DemoWidget extends StatelessWidget {
  // const DemoWidget({required this.text});
  const DemoWidget({
    super.key,
    required this.text,
  });

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 8,
            ),
            child: Column(
              children: [
                Image.asset('image/firstpage.jpg'),
                Text(
                  text!,
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
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 8,
            ),
            child: Column(
              children: [
                Image.asset('image/firstpage.jpg'),
                Text(
                  text!,
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
      ],
    );
  }
}
