import 'package:ehda/pages/donators.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/drop_down.dart';
import '../widgets/app_bar.dart';

class FindDonators extends StatelessWidget {
  static String findDonatorsName = 'find_donators';

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: myAppBar(title: 'Donation Progress'),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromRGBO(252, 50, 152, 1),
              const Color.fromRGBO(237, 31, 106, 1),
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: deviceSize.height / 12),
            Text(
              'گروه خونی خودرا انتخاب کنید:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: deviceSize.height / 15),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: deviceSize.height * 0.02,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  groupBlood(txt: 'AB+', deviceSize: deviceSize.height),
                  groupBlood(txt: 'A+', deviceSize: deviceSize.height),
                  groupBlood(txt: 'B+', deviceSize: deviceSize.height),
                  groupBlood(txt: 'O+', deviceSize: deviceSize.height),
                ],
              ),
            ),
            SizedBox(height: deviceSize.height / 20),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: deviceSize.height * 0.02,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  groupBlood(txt: 'AB-', deviceSize: deviceSize.height),
                  groupBlood(txt: 'A-', deviceSize: deviceSize.height),
                  groupBlood(txt: 'B-', deviceSize: deviceSize.height),
                  groupBlood(txt: 'O-', deviceSize: deviceSize.height),
                ],
              ),
            ),
            SizedBox(height: deviceSize.height / 20),
            DropDown(),
            SizedBox(height: deviceSize.height / 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              child: RaisedButton(
                padding: EdgeInsets.all(5),
                color: const Color.fromRGBO(237, 31, 106, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: Text(
                  'پیدا کردن',
                  textScaleFactor: 1.4,
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Donators.DonatorsName);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector groupBlood({String txt, dynamic deviceSize}) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: deviceSize * 0.1,
        width: deviceSize * 0.1,
        padding: EdgeInsets.all(10),
        child: Center(
          child: Text(
            txt,
            textScaleFactor: 1.3,
            style: TextStyle(color: Colors.white),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white, width: 2),
        ),
      ),
    );
  }
}
