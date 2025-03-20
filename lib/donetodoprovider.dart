
import 'package:flutter/material.dart';

class DoneTodoProvider extends ChangeNotifier{
  final List<String> _doneTodoList = const ["Makan malam","Kerja tugas"];

  List<String> get doneTodoList => _doneTodoList;

  void complete(String task) {
    _doneTodoList.add(task);
    print(_doneTodoList.toString());
    notifyListeners();
  }
}