import 'dart:convert';

import 'package:mrmsios/network/api.dart';
import 'package:mrmsios/network/result.dart';

class SuccessAsString extends Result{
  String _data;

  SuccessAsString(Api api, String data) : super(api){
    this._data = data;
  }

  String data() {
    return this._data;
  }
}