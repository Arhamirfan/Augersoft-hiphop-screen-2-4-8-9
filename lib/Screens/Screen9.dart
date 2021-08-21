import 'package:augersoft_screens/Components/BottomSheet.dart';
import 'package:augersoft_screens/Components/TitleBarButtons.dart';
import 'package:augersoft_screens/Screens/Screen2.dart';
import 'package:flutter/material.dart';

import '../Constants.dart';

class Screen9 extends StatefulWidget {
  static const String id = 'screen9';

  @override
  _Screen9State createState() => _Screen9State();
}

class _Screen9State extends State<Screen9> {
  bool isSelecteditem = false;
  int guestscounter = 4,
      bedscounter = 1,
      bedroomscounter = 1,
      bathroomscounter = 1;
  var roomstype;

  @override
  void initState() {
    super.initState();
    setState(() {
      isSelecteditem = false;
      kprocessbarValue += 0.2;
    });
  }

  @override
  void dispose() {
    setState(() {
      isSelecteditem = false;
    });
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: ktopdecorationShahryar_screen489,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 10),
              child: TitleBar(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30.0, top: 30, bottom: 30, right: 50),
              child: Text(
                'How many guest would you like to welcome?',
                style: kwhitecolourLarge,
              ),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 30.0, left: 30.0, right: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: roomDetails(
                              title: 'Guests', counter: guestscounter),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child:
                              roomDetails(title: 'Beds', counter: bedscounter),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: roomDetails(
                              title: 'Bedrooms', counter: bedroomscounter),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: roomDetails(
                              title: 'Bathrooms', counter: bathroomscounter),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Text('Are any of these bedrooms private?',
                              style: kblackbold),
                        ),
                        //todo: add a radio button
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: ListTile(
                            onTap: () {
                              setState(() {});
                            },
                            //leading:
                            title: Text('Yes'),
                            trailing: Radio(
                              value: 1,
                              groupValue: roomstype,
                              fillColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.black),
                              onChanged: (value) {
                                setState(() {
                                  roomstype = value;
                                });
                              },
                            ),
                          ),
                        ),
                        ListTile(
                          onTap: () {
                            setState(() {});
                          },
                          //leading:
                          title: Text('No, they\'re all shared'),
                          trailing: Radio(
                            value: 0,
                            groupValue: roomstype,
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Colors.black),
                            onChanged: (value) {
                              setState(() {
                                roomstype = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomSheetWidget(
          context: context,
          nextpage: () =>
              //todo: change flow of screen 9 going to other screen by giving id.
              Navigator.popUntil(context, ModalRoute.withName(Screen2.id)),
          isSelected: true),
    );
  }
}

class roomDetails extends StatefulWidget {
  roomDetails({required this.title, required this.counter});
  String title;
  int counter;

  @override
  _roomDetailsState createState() => _roomDetailsState();
}

class _roomDetailsState extends State<roomDetails> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('${widget.title}'),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: OutlinedButton(
                  onPressed: () {
                    //todo: on click button setstate of text decrement to 1
                    setState(() {
                      if (widget.title == 'Beds' && widget.counter == 1) {
                        print('cannot be less than 1');
                      } else if (widget.title == 'Guests' &&
                          widget.counter == 0) {
                        print('cannot be less than 0');
                        widget.counter = 0;
                      } else if (widget.title == 'Bedrooms' &&
                          widget.counter == 0) {
                        print('cannot be less than 0');
                        widget.counter = 0;
                      } else if (widget.title == 'Bathrooms' &&
                          widget.counter == 0) {
                        print('cannot be less than 0');
                        widget.counter = 0;
                      } else {
                        widget.counter--;
                      }
                    });
                  },
                  child: (widget.title == 'Beds' && widget.counter == 1) ||
                          (widget.counter == 0)
                      ? Icon(Icons.remove, color: Colors.grey.shade200)
                      : Icon(Icons.remove, color: Colors.black),
                  style: OutlinedButton.styleFrom(
                    shape: CircleBorder(),
                  ),
                ),
              ),
              Text(
                '${widget.counter}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: OutlinedButton(
                  onPressed: () {
                    //todo: on click button setstate of text increment to 1
                    setState(() {
                      if (widget.counter == 20) {
                        print('limit reached');
                      } else {
                        widget.counter++;
                      }
                    });
                  },
                  child: widget.counter == 20
                      ? Icon(Icons.add, color: Colors.grey)
                      : Icon(Icons.add, color: Colors.black),
                  style: OutlinedButton.styleFrom(
                    shape: CircleBorder(),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
