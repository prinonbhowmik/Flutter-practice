import 'package:flutter/material.dart';

class Data extends ChangeNotifier {
  int value = 0;
  Increment(){
    value++;
    notifyListeners();
  }
}