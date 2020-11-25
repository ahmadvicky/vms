import 'dart:convert';

class Pagination {
  int _total;
  int _lastPage;
  int _perPage;
  int _currentPage;
  //List<T> _items;

  /*List<T> _ToListandMap(String responseBody) {
    Map data = json.decode(responseBody);
    var videos = data['pagination']; //returns a List of Maps
    final casting = videos.cast<Map<String, dynamic>>();
    return casting.map<T>((json) => T.fromJson(json)).toList();
  }*/

  Pagination.fromJson(Map<String, dynamic> json) {
    print('pagination => $json');
    _total = json['total'];
    _lastPage = json['lastPage'];
    _perPage = json['perPage'];
    _currentPage = json['currentPage'];
    /*if (json['items'] != null) {
      _items = _ToListandMap(jsonEncode(json['items']));
    }*/
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this._total;
    data['lastPage'] = this._lastPage;
    data['perPage'] = this._perPage;
    data['currentPage'] = this._currentPage;
    /*if (this._items != null) {
      data['items'] = this._items.map((v) => v.toJson()).toList();
    }*/
    return data;
  }

  int get currentPage => _currentPage;

  int get perPage => _perPage;

  int get lastPage => _lastPage;

  int get total => _total;


}