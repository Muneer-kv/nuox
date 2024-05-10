import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_application_1/landingscreen.dart';

class schedulescreen extends StatefulWidget {
  const schedulescreen({super.key});

  @override
  State<schedulescreen> createState() => _schedulescreenState();
}

var _isswitch1 = false;
var _isswitch2 = false;


var _val1 = false;
var _val2 = false;
var _val3 = false;
var _val4 = false;
var _val5 = false;
var _val6 = false;

class _schedulescreenState extends State<schedulescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homescreen()));
              },
              child: Text('Save'))
        ],
      ),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          children: [
            Text(
              'Set your weekly hour',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Switch(
                    value: _isswitch1,
                    onChanged: (bool value) {
                      setState(() {
                        _isswitch1 = value;
                      });
                    }),
                Text('MON'),
                SizedBox(
                  child: Row(
                    children: [
                      Checkbox(
                          value: _val4,
                          onChanged: (bool? newval) {
                            setState(() {
                              _val4 = newval!;
                            });
                          }),
                      Text('Morning', style: TextStyle(fontSize: 10))
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Checkbox(
                          value: _val5,
                          onChanged: (bool? newval) {
                            setState(() {
                              _val5 = newval!;
                            });
                          }),
                      Text('afternoon', style: TextStyle(fontSize: 10))
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Checkbox(
                          value: _val6,
                          onChanged: (bool? newval) {
                            setState(() {
                              _val6 = newval!;
                            });
                          }),
                      Text('evening', style: TextStyle(fontSize: 10))
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Switch(
                    value: _isswitch2,
                    onChanged: (bool value) {
                      setState(() {
                        _isswitch2 = value;
                      });
                    }),
                Text('MON'),
              
                SizedBox(
                  child: Row(
                    children: [
                      Checkbox(
                          value: _val1,
                          onChanged: (bool? newval) {
                            setState(() {
                              _val1 = newval!;
                            });
                          }),
                      Text('Morning', style: TextStyle(fontSize: 10))
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Checkbox(
                          value: _val2,
                          onChanged: (bool? newval) {
                            setState(() {
                              _val2 = newval!;
                            });
                          }),
                      Text('afternoon', style: TextStyle(fontSize: 10))
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Checkbox(
                          value: _val1,
                          onChanged: (bool? newval) {
                            setState(() {
                              _val3 = newval!;
                            });
                          }),
                      Text('evening', style: TextStyle(fontSize: 10))
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
