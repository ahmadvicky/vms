import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mrmsios/Helper/color.dart';
import 'package:mrmsios/Helper/defaultText.dart';
import 'package:mrmsios/Helper/myRouter.dart';
import 'package:shimmer/shimmer.dart';

class Ui {

  BuildContext context;

  Ui(this.context);

  static Ui of(BuildContext context) {
    return Ui(context);
  }

  static Widget shimmer({
    double height = 48,
    double width = 48,
    double borderRadius = 0,
    Color baseColor,
    Color highlightColor,
    EdgeInsets margin = const EdgeInsets.all(0),
    ShimmerDirection direction = ShimmerDirection.ltr,
  }){
    return Padding(
      padding: margin,
      child: Shimmer.fromColors(
        baseColor: baseColor ?? Colors.grey[200],
        highlightColor: highlightColor ?? Colors.grey[300],
        direction: direction,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(borderRadius))
          ),
          height: height,
          width: width,
        ),
      ),
    );
  }

  successAlert({String title = '', String message = '', int duration = 3}){
    _alert(title: title, message: message, duration: duration);
  }

  errorAlert({String title = '', String message = '', int duration = 3}){
    _alert(title: title, message: message, duration: duration, isSuccess: false);
  }

  _alert({String title = '', String message = '', int duration = 3, bool isSuccess = true}){
    Flushbar(
      title: title,
      messageText: Text(message,
        maxLines: 10,
        style: TextStyle(
            color: Colors.white
        ),
      ),
      duration: Duration(seconds: duration),
      backgroundColor: isSuccess ? Colors.orange : Color(0xFF303030),
      flushbarPosition: isSuccess ? FlushbarPosition.TOP : FlushbarPosition.BOTTOM,
    )..show(context);
  }

  alertPopUp({String message,bool isSuccess, Color color}){
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
          backgroundColor: color,
          content: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                      color: ColorsState.white,
                    ),
                    padding: EdgeInsets.all(25),
                    child: Text(message)),
                GestureDetector(
                  onTap: (){
                    myRouter.pop(context);
                    if (isSuccess) {
                      myRouter.pop(context);
                    }
                  },
                  child: DefaultText(
                    padding: EdgeInsets.all(20),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5)),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    textLabel: isSuccess ? "Ok" : "Close",
                    colorsText: Colors.white,
                    colorbackground: color,
                  ),
                )
              ],
            ),
          ),
          contentPadding: EdgeInsets.all(0),
          insetPadding: EdgeInsets.all(20),
        ));

  }

  dialogPopUp({String message,Function onOke,Function onCancel,bool isNext}){
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
          backgroundColor: Colors.white,
          content: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                      color: ColorsState.white,
                    ),
                    padding: EdgeInsets.all(25),
                    child: Text(message)),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: onOke,
                        child: DefaultText(
                          padding: EdgeInsets.all(20),
                          border: Border.all(color: !isNext ? Colors.black  : ColorsState.colorPrimaryBlue,width: 0.5) ,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5)),
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          textLabel: "Yes",
                          colorsText: isNext ? Colors.white : Colors.black,
                          colorbackground: isNext ? ColorsState.colorPrimaryBlue : Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: onCancel,
                        child: DefaultText(
                          padding: EdgeInsets.all(20),
                          border:  Border.all(color: isNext ? Colors.black : Colors.red,width: 0.5) ,
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(5)),
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          textLabel: "No",
                          colorsText: !isNext ? Colors.black : Colors.black,
                          colorbackground: !isNext ? Colors.red : Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          contentPadding: EdgeInsets.all(0),
          insetPadding: EdgeInsets.all(20),
        ));
  }



}

