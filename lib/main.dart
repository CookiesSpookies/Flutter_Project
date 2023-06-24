import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tes_it_flutter/constant/Theme.dart';
import 'beranda.dart';

void main() => runApp(GetMaterialApp(
  theme: ThemeData(
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white,),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      shadowColor: ColorTemplate.mainColor
    )
  ),
  home: const Beranda()
  ));
