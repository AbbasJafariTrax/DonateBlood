import 'package:ehda/widgets/app_bar.dart';
import 'package:ehda/widgets/perosn_info.dart';
import 'package:flutter/material.dart';

class Donators extends StatelessWidget {
  static String DonatorsName = 'donators';

  @override
  Widget build(BuildContext context) {
    double deviceSize = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: myAppBar(title: 'Donators'),
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              PersonInfo(),
              Divider(
                color: Colors.white,
                thickness: 1.5,
                indent: 20,
                endIndent: 20,
              ),
              PersonInfo(),
              Divider(
                color: Colors.white,
                thickness: 1.5,
                indent: 20,
                endIndent: 20,
              ),
              PersonInfo(),
              Divider(
                color: Colors.white,
                thickness: 1.5,
                indent: 20,
                endIndent: 20,
              ),
              PersonInfo(),
              Divider(
                color: Colors.white,
                thickness: 1.5,
                indent: 20,
                endIndent: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
