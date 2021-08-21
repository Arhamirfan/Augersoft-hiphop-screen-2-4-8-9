import 'package:flutter/material.dart';

import '../Constants.dart';

class BottomSheetWidget extends StatelessWidget {
  BottomSheetWidget(
      {required this.context,
      required this.nextpage,
      required this.isSelected});
  BuildContext context;
  final Function()? nextpage;
  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          LinearProgressIndicator(
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation(Colors.black),
            minHeight: 2,
            value: kprocessbarValue,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 30, right: 30, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      kprocessbarValue -= 0.2;
                      //todo: solve error =>Failed assertion: line 4188 pos 12: '_lifecycleState != _ElementLifecycle.defunct': is not true.
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                          decorationThickness: 2),
                    ),
                  ),
                  FlatButton(
                    // height: MediaQuery.of(context).size.height * .1,
                    color: isSelected == true ? Colors.black : Colors.grey[400],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text('Next', style: TextStyle(color: Colors.white)),
                    onPressed: isSelected == true
                        ? nextpage
                        : () => print('same page'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
