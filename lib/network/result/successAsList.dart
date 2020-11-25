import 'dart:convert';

import 'package:mrmsios/network/api.dart';
import 'package:mrmsios/network/result.dart';

class SuccessAsList extends Result{
  List<dynamic> _data;

  SuccessAsList(Api api, List<dynamic> data) : super(api){
    this._data = data;
  }

  List<dynamic> data() {
    return this._data;
  }
}