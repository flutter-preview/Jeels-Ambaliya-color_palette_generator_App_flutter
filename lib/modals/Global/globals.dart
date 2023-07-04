import 'dart:math';

Random RR_Random = Random();
const String Data_Color = 'assets/json/Colors.json';
List Color_List = [];
List<colorGlobals> allColors = [];

class colorGlobals {
  String hexColor;

  colorGlobals({required this.hexColor});

  factory colorGlobals.fromList({required Map data}) {
    return colorGlobals(hexColor: data['hex']);
  }
}
