import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? liveTrackingRoute;
  String? viewScheduleRoute;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text(
          "Shuttle Bus",
          style: TextStyle(
            fontSize: 37,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "/schedule");
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 30, 20, 20),
          child: Column(
            children: [
              _buildButton('LIVE TRACKING'),
              SizedBox(height: 11),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 15.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, '/track');
                          },
                          child: Text(
                            'AB1 to AB3',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side: BorderSide(color: Colors.black))),
                              backgroundColor:
                              MaterialStateProperty.all(Colors.blue)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 15.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, '/track');
                          },
                          child: Text(
                            'AB3 to AB1',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side: BorderSide(color: Colors.black))),
                              backgroundColor:
                              MaterialStateProperty.all(Colors.blue)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              _buildButton('VIEW SCHEDULE'),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 15.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, '/schedule');
                          },
                          child: Text(
                            'AB1 to AB3',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side: BorderSide(color: Colors.black))),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 15.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, '/schedule');
                          },
                          child: Text(
                            'AB3 to AB1',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side: BorderSide(color: Colors.black))),
                              backgroundColor:
                              MaterialStateProperty.all(Colors.blue)),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(String title) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDropdown(String? currentValue, ValueChanged<String?> onChanged) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          value: currentValue,
          hint: Center(
            child: Text(
              "Select value",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          items: [
            DropdownMenuItem<String>(
              value: "AB1 to AB3",
              child: Center(
                child: Text(
                  "AB1 to AB3",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            DropdownMenuItem<String>(
              value: "AB3 to AB1",
              onTap: () {
                Navigator.pushReplacementNamed(context, '/schedule');
              },
              child: Center(
                child: Text(
                  "AB3 to AB1",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
          onChanged: onChanged,
        ),
      ),
    );
  }
}
