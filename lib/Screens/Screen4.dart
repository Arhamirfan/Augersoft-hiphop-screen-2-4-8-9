import 'package:augersoft_screens/Components/BottomSheet.dart';
import 'package:augersoft_screens/Components/PlacetypeClass.dart';
import 'package:augersoft_screens/Components/TitleBarButtons.dart';
import 'package:augersoft_screens/Screens/Screen8.dart';
import 'package:flutter/material.dart';

import '../Constants.dart';

class Screen4 extends StatefulWidget {
  static const String id = 'screen4';

  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  bool isSelecteditem = false;
  List<placedescription> _list = placedescription.generate_description();

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
                'Which of these best describes your place?',
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
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            height: 100,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, left: 15.0, right: 15.0),
                              child: ListTile(
                                onTap: () {
                                  setState(() {
                                    isSelecteditem = true;
                                  });
                                },
                                //leading:
                                title: Text(
                                  _list[index].title,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(_list[index].description),
                                ),

                                //Image.asset(_list[index].imageURL),
                              ),
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
          //todo: change flow of screen 4 going to other screen by giving id.
          nextpage: () => Navigator.pushNamed(context, Screen8.id),
          isSelected: isSelecteditem),
    );
  }
}
