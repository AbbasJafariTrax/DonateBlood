import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropdownValue = 'انتخاب ولایت:';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: DropdownButton<String>(
        iconSize: 24,
        value: dropdownValue,
        dropdownColor: Color.fromRGBO(253, 51, 153, 1),
        elevation: 10,
        itemHeight: 50,
        icon: Icon(Icons.arrow_drop_down, color: Colors.transparent),
        style: TextStyle(
          color: Colors.white.withOpacity(0.9),
          fontSize: 25,
        ),
        underline: Container(
          height: 1,
          color: Colors.white.withOpacity(0.9),
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>[
          'انتخاب ولایت:',
          'کابل',
          'هرات',
          'هلمند',
          'ننگرهار',
          'بلخ',
          'غزنی',
          'قندهار',
          'فاریاب',
          'تخار',
          'بدخشان',
          'پکتیکا',
          'قندوز',
          'بغلان',
          'خوست',
          'غور',
          'میدان وردک',
          'بادغیس',
          'فراه',
          'پروان',
          'دایکندی',
          'سرپل',
          'جوزجان',
          'پکتیکا',
          'کنر',
          'لغمان',
          'سمنگان',
          'کاپیسا',
          'بامیان',
          'لوگر',
          'ارزگان',
          'زابل',
          'نورستان',
          'نیمروز',
          'پنجشیر',
        ].map<DropdownMenuItem<String>>(
          (String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          },
        ).toList(),
      ),
    );
  }
}
