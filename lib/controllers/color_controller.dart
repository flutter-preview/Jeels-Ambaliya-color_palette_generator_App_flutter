import 'dart:convert';

import 'package:flutter/services.dart';

import '../modals/Global/globals.dart';

int hexColors(String color) {
  String newColor = "0xff$color";
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}

loadData() async {
  var data = await rootBundle.loadString(Data_Color);
  Color_List = jsonDecode(data);
}

List<colorGlobals> convertToObject() {
  var allObjectColors =
      Color_List.map((e) => colorGlobals.fromList(data: e)).toList();
  return allObjectColors;
}
