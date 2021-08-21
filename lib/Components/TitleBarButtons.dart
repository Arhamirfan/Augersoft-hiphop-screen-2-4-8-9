import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TitleBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MaterialButton(
          onPressed: () {},
          color: Colors.white.withOpacity(0.5),
          child: FaIcon(FontAwesomeIcons.times, color: Colors.white, size: 15),
          shape: CircleBorder(),
        ),
        FlatButton(
          color: Colors.white.withOpacity(0.3),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          child: Text(
            'Help',
            style: TextStyle(color: Colors.white),
            softWrap: true,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
