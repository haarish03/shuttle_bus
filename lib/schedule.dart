import 'package:flutter/material.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  List timings = ["09:00AM", "10:00AM", "11:00AM", "12:00AM"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text(
          "Schedule",
          style: TextStyle(
            fontSize: 37,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
            itemCount: timings.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(children: [
                      Icon(
                        Icons.directions_bus_filled_rounded,
                        size: 40,
                      ),
                      SizedBox(width: 15,),
                      Text(timings[index], style: TextStyle(fontSize: 30),),
                    ]),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
