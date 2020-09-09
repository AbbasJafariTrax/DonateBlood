import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

class PersonInfo extends StatelessWidget {
  final String phone = 'tel:+93787072236';

  // _callPhone() async {
  //   if (await canLaunch(phone)) {
  //     await launch(phone);
  //   } else {
  //     throw 'Could not Call Phone';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    double deviceSize = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.symmetric(
        vertical: deviceSize * 0.05,
        horizontal: deviceSize * 0.02,
      ),
      child: Column(
        children: [
          Row(
            children: <Widget>[
              buildRowItem(
                deviceSize: deviceSize,
                txt: 'ناصر کریمی',
                icon: Icons.person,
              ),
              SizedBox(width: deviceSize * 0.08),
              buildRowItem(
                deviceSize: deviceSize,
                txt: '+AB',
                icon: Icons.invert_colors,
              ),
            ],
          ),
          SizedBox(height: deviceSize * 0.01),
          buildRowItem(
            deviceSize: deviceSize,
            txt: 'هرات، شهرنو، جنب فهیم مارکت',
            icon: Icons.person_pin_circle,
          ),
          SizedBox(height: deviceSize * 0.01),
          buildRowItem(
            deviceSize: deviceSize,
            txt: ' میلی 400',
            icon: Icons.colorize,
          ),
          SizedBox(height: deviceSize * 0.01),
          buildRowItem(
            deviceSize: deviceSize,
            txt: '93787072236+',
            icon: Icons.phone,
          ),
          SizedBox(height: deviceSize * 0.03),
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  padding: EdgeInsets.all(5),
                  color: const Color.fromRGBO(252, 50, 152, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  child: Text(
                    'تماس گرفتن',
                    textScaleFactor: 1.4,
                    style: TextStyle(color: Colors.white),
                  ),
                  // onPressed: _callPhone,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Row buildRowItem({double deviceSize, String txt, IconData icon}) {
    return Row(
      children: <Widget>[
        Icon(icon, color: Colors.white),
        SizedBox(width: deviceSize * 0.01),
        Text(
          txt,
          textScaleFactor: 1.2,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
