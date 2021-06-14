import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

  void showAlert({
    required BuildContext context,
    required String titleText,
    required String bodyText,
    required String button1Title,
    Function? button1onPressed,
    String? button2Title,
    Function? button2onPressed,
  }) {

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) async {
      if (Platform.isIOS) {
        CupertinoAlertDialog cupertinoAlert = CupertinoAlertDialog(
          title: Text(titleText),
          content: Text(bodyText),
          actions: [
            CupertinoDialogAction(
                child: Text(button1Title),
                isDefaultAction: true,
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop();
                  if (button1onPressed != null) button1onPressed();
                }),
            if (button2Title != null)
              CupertinoDialogAction(
                child: Text(button2Title),
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop();
                  if (button2onPressed != null) button2onPressed();
                },
              ),
          ],
        );

        await showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return cupertinoAlert;
          },
        );
      } else {
        AlertDialog materialAlert = AlertDialog(
          title: Text(titleText),
          content: Text(bodyText),
          actions: [
            TextButton(
              child: Text(button1Title),
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop();
                if (button1onPressed != null) button1onPressed();
              },
            ),
            if (button2Title != null)
              TextButton(
                child: Text(button2Title),
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop();
                  if (button2onPressed != null) button2onPressed();
                },
              )
          ],
        );

        await showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return materialAlert;
          },
        );
      }
    });
  }
