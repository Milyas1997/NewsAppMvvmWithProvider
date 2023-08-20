import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  static toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        toastLength: Toast.LENGTH_SHORT);
  }

  static void flushBar(BuildContext context, String message) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        forwardAnimationCurve: Curves.decelerate,
        reverseAnimationCurve: Curves.easeOut,
        flushbarPosition: FlushbarPosition.TOP,
        positionOffset: 20,
        borderRadius: BorderRadius.circular(8),
        icon: const Icon(Icons.error),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        padding: const EdgeInsets.all(10),
        message: message,
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.red,
      )..show(context),
    );
  }

  static snackBar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
    ));
  }

  static filedFocus(
      BuildContext context, FocusNode currentNode, FocusNode targetedNode) {
    currentNode.unfocus();
    FocusScope.of(context).requestFocus(targetedNode);
  }
}
