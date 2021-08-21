import 'package:augersoft_screens/Components/BottomSheet.dart';
import 'package:augersoft_screens/Components/PlacetypeClass.dart';
import 'package:augersoft_screens/Components/TitleBarButtons.dart';
import 'package:flutter/material.dart';

import '../Constants.dart';
import 'Screen9.dart';

class Screen8 extends StatefulWidget {
  static const String id = 'screen8';

  @override
  _Screen8State createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {
  bool isSelecteditem = false;
  List<Amenity> amenities = Amenity.generate_amenityType();

  @override
  void initState() {
    super.initState();
    setState(() {
      isSelecteditem = false;
      kprocessbarValue += 0.2;
    });
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
                'Let the guest know what your place has to offer',
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
                      //todo: if grid view padding in 15 then do this left and right 15.
                      const EdgeInsets.only(top: 50.0, left: 30.0, right: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Do you have any standout amenities?',
                        style: kblackcolourLarge,
                      ),
                      Expanded(
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2),
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isSelecteditem = true;
                                    });
                                  },
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          amenities[index].icon,
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 15.0),
                                            child: Text(amenities[index].title),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                              itemCount: amenities.length,
                            )),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomSheetWidget(
          context: context,
          //todo: change flow of screen 8 going to other screen by giving id.
          nextpage: () => Navigator.pushNamed(context, Screen9.id),
          isSelected: isSelecteditem),
    );
  }
}

//use gridview:
