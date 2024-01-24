// ignore_for_file: file_names

import 'dart:convert' show jsonDecode;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import '../model/Model.dart';

class ApiDataProvider extends ChangeNotifier {

  
  FeedApi? _apiData;

  FeedApi? get apiData => _apiData;

  Future<void> fetchData() async {
    try {
      String jsonData = await rootBundle.loadString('assets/Json.json');
      final result = jsonDecode(jsonData) ;

      final FeedApi apiData = FeedApi.fromJson(result);
      _apiData = apiData;
      notifyListeners();
      
    } catch (error) {
      // print("Error fetching API data: $error");
    }
  }
}
