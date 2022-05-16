


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utilities/constants.dart';

exitDialogue(context){
  showDialog<void>(
  context: context,
  barrierDismissible: false, // user must tap button!
  builder: (BuildContext context){
    return AlertDialog(
      title: Text(
          "Exit?",
      ),
      content: Text(
        "Are you sure you want to exit?",
      ),
      actions: [
        Container(
// width: MediaQuery.of(context).size.width * 0.8,
          margin: EdgeInsets.only(top: 10),
          height: 30,
          decoration: BoxDecoration(
              color:btnColor1,
              borderRadius: BorderRadius.circular(5)
          ),
          child:
          FlatButton(
              onPressed: () {
                SystemNavigator.pop();
// Navigator.push(context, MaterialPageRoute(builder: (context)=>Splash7()));
// Navigator.pushNamedAndRemoveUntil(context, "/",(Route<dynamic> route) => false);

              },
              child: Text("Yes",style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w400))
          ),

        ),
        Container(
// width: MediaQuery.of(context).size.width * 0.8,
          margin: EdgeInsets.only(top: 10),
          height: 30,
          decoration: BoxDecoration(
              color:Colors.red,
              borderRadius: BorderRadius.circular(5)
          ),
          child:
          FlatButton(
              onPressed: () {
                Navigator.pop(context);

                // Navigator.push(context, MaterialPageRoute(builder: (context)=>Splash7()));
// Navigator.pushNamedAndRemoveUntil(context, "/",(Route<dynamic> route) => false);

              },
              child: Text("No",style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w400))
          ),

        ),
      ],
    );

  });
}

