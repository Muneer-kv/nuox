import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/schedulescreen.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Align(alignment: Alignment.topCenter, child: Text('Hi..')),
            Align(
              alignment: Alignment.bottomCenter,
              child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => schedulescreen()));
                  },
                  child: Text('Add or Edit')),
            )
          ],
        ),
      ),
    );
  }
}
