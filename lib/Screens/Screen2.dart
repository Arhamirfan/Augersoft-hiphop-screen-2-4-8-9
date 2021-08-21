import 'package:augersoft_screens/Components/BottomSheet.dart';
import 'package:augersoft_screens/Components/PlacetypeClass.dart';
import 'package:augersoft_screens/Components/TitleBarButtons.dart';
import 'package:augersoft_screens/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screen4.dart';

class Screen2 extends StatefulWidget {
  static const String id = 'screen2';

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  bool isSelectedCard = false, isSelecteditem = false;
  List<placetype> _list = placetype.generate_places();

  @override
  void initState() {
    setState(() {
      isSelecteditem = false;
    });
    super.initState();
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
      extendBody: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: ktopdecorationShahryar_screen2,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 10),
              //todo: implement cross and help button functionality
              child: TitleBar(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30.0, top: 80, bottom: 30, right: 50),
              child: Text(
                'What kind of place will you host?',
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
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        height: MediaQuery.of(context).size.height * .1,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: ListTile(
                              onTap: () {
                                setState(() {
                                  //todo: to get card selected details or to change color to selected color
                                  //isSelectedCard = true;
                                  isSelecteditem = true;
                                });
                              },
                              //leading:
                              title: Text(
                                _list[index].title,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              // subtitle: Text('flutterflutterflutter'),
                              trailing: Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(_list[index].imageURL),
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0))),
                              ),
                              //Image.asset(_list[index].imageURL),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: _list.length,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomSheetWidget(
        context: context,
        nextpage: () => Navigator.pushNamed(context, Screen4.id),
        isSelected: isSelecteditem,
      ),
    );
  }
}

//other bottom screen:
// Container(
// height: MediaQuery.of(context).size.height * 0.1,
// width: MediaQuery.of(context).size.width,
// decoration: BoxDecoration(
// border: Border(
// top: BorderSide(width: 1),
// )),
// child: Padding(
// padding: const EdgeInsets.symmetric(horizontal: 16),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// InkWell(
// onTap: () {
// Navigator.pop(context);
// },
// child: Text(
// 'Back',
// style: TextStyle(
// fontSize: 18,
// fontWeight: FontWeight.w500,
// decoration: TextDecoration.underline,
// ),
// ),
// ),
// ElevatedButton(
// style: ElevatedButton.styleFrom(
// primary: Colors.grey[400] ?? Color(0xffe51e4e),
// elevation: 0,
// textStyle: TextStyle(
// fontSize: 15,
// )),
// onPressed: () {},
// child: Padding(
// padding: const EdgeInsets.all(6.0),
// child: Text('Next'),
// ),
// ),
// ],
// ),
// ),
// )
