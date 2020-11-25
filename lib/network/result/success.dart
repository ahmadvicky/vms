import 'dart:convert';

import 'package:mrmsios/network/api.dart';
import 'package:mrmsios/network/result.dart';

class Success extends Result{
  Map _data;

  Success(Api api, Map data) : super(api){
    this._data = data;
  }

  Map data() {
    return this._data;
  }
}