import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Inputpage extends StatefulWidget {
  const Inputpage({super.key});

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ReuseWidget(
                childCard: iconDetailsWidget(
                  icon: FontAwesomeIcons.mars,
                  label: 'MALE',
                ),
                kcolor: Color(0xFF101F33),
              )),
              Expanded(
                  child: ReuseWidget(
                childCard: iconDetailsWidget(
                  icon: FontAwesomeIcons.venus,
                  label: 'FEMALE',
                ),
                kcolor: Color(0xFF101F33),
              ))
            ],
          )),
          Expanded(
              child: ReuseWidget(
            childCard: Text('data'),
            kcolor: Color(0xFF101F33),
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ReuseWidget(
                childCard: Text('da'),
                kcolor: Color(0xFF101F33),
              )),
              Expanded(
                  child: ReuseWidget(
                childCard: Text('data'),
                kcolor: Color(0xFF101F33),
              ))
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: Color(0xFFEA1556),
            width: double.infinity,
            height: 80.0,
          )
        ],
      ),
    );
  }
}

class iconDetailsWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  iconDetailsWidget({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(color: Color(0xFF8D8F9E), fontSize: 18.0),
        )
      ],
    );
  }
}

class ReuseWidget extends StatelessWidget {
  final Color kcolor;
  final Widget childCard;
  ReuseWidget({required this.kcolor, required this.childCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0), color: kcolor),
    );
  }
}
