import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mrmsios/network/config.dart';

class ShowDialog {
  BuildContext context;
  String _titleYes;
  String _titleNo;
  @required
  String message;
  OnClickListener _onYesPressed;
  OnClickListener _onNoPressed;
  BuildContext _dialogContext;
  bool _barrierDismissible = true;

  ShowDialog({this.context, this.message});

  ShowDialog titleYes(String value) {
    _titleYes = value;
    return this;
  }

  ShowDialog dismissible(bool dismissible) {
    _barrierDismissible = dismissible;
    return this;
  }

  void show() {
    if (context == null) {
      return;
    }

    if (message == null && message.isEmpty) {
      return;
    }

    List<Widget> _button(BuildContext dialogContext) {
      _dialogContext = dialogContext;
      FlatButton flatNoButton, flatYesButton;
      if ((_titleNo != null && _titleNo.isNotEmpty) && _onNoPressed == null) {
        flatNoButton = new FlatButton(
          child: Text(_titleNo, style: TextStyle(color: Colors.black),),
          onPressed: () {
            _dismis();
          },
        );
      } else if (_titleNo == null && _onNoPressed != null) {
        flatNoButton = new FlatButton(
          child: Text('Cancel', style: TextStyle(color: Colors.black),),
          onPressed: () {
            _dismis();
            _onNoPressed();
          },
        );
      } else if ((_titleNo != null && _titleNo.isNotEmpty) &&
          _onNoPressed != null) {
        flatNoButton = new FlatButton(
          child: Text(_titleNo, style: TextStyle(color: Colors.black),),
          onPressed: () {
            _dismis();
            _onNoPressed();
          },
        );
      }

      if ((_titleYes != null && _titleYes.isNotEmpty) &&
          _onYesPressed == null) {
        flatYesButton = new FlatButton(
          child: Text(_titleYes, style: TextStyle(color: Colors.black),),
          onPressed: () {
            _dismis();
          },
        );
      } else if (_titleYes == null && _onYesPressed != null) {
        flatYesButton = new FlatButton(
          child: Text('Ok', style: TextStyle(color: Colors.black),),
          onPressed: () {
            _dismis();
            _onYesPressed();
          },
        );
      } else if ((_titleYes != null && _titleYes.isNotEmpty) &&
          _onYesPressed != null) {
        flatYesButton = new FlatButton(
          child: Text(_titleYes,key: Key('yesButton'), style: TextStyle(color: Colors.black),),
          onPressed: () {
            _dismis();
            _onYesPressed();
          },
        );
      } else {
        flatYesButton = new FlatButton(
          child: Text('Ok', style: TextStyle(color: Colors.black),),
          onPressed: () {
            _dismis();
          },
        );
      }

      return
        (_titleNo == null && _onNoPressed == null)
            ? [flatYesButton]
            : [flatNoButton,
          flatYesButton]
      ;
    }

    showDialog(
        context: context,
        barrierDismissible: _barrierDismissible == null ? false : _barrierDismissible,
        builder: (BuildContext context) {
          return Platform.isAndroid
              ? AlertDialog(
            backgroundColor: Colors.white,
            title: Text(Config.appName),
            content: Text(message, style: TextStyle(color: Colors.black),),
            actions: _button(context),
          )
              : CupertinoAlertDialog(
            title: Text(Config.appName),
            content: Text(message, style: TextStyle(color: Colors.black),),
            actions: _button(context),
          );
        });
  }

  ShowDialog titleNo(String value) {
    _titleNo = value;
    return this;
  }

  ShowDialog onYesPressed(OnClickListener value) {
    _onYesPressed = value;
    return this;
  }

  ShowDialog onNoPressed(OnClickListener value) {
    _onNoPressed = value;
    return this;
  }

  void _dismis() {
    Navigator.of(_dialogContext).pop();
  }
}

typedef OnClickListener = void Function();
