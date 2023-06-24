import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_it_flutter/class/list_toko_class.dart';
import 'package:tes_it_flutter/class/list_ttol_class.dart';
import 'package:tes_it_flutter/constant/connection.dart';
import 'package:http/http.dart' as http;

class ListTokoController extends GetxController {
  static ListTokoController instance = Get.find();
  static String apiUrl = '/tes_it_flutter_api/database.php';
  final _connect = GetConnect();
  List<ListTokoClass> allToko = <ListTokoClass>[].obs;
  List<ListTTOLClass> allTTOL = <ListTTOLClass>[].obs;
  List<String> listToko = <String>['Semua Toko'].obs;
  var selectedToko = 'Semua Toko'.obs;
  var fetchedData = "".obs;

  void setSelectedToko(selected) => selectedToko.value = selected;
  void addOneListItem(data) => listToko.add(data);
  void addManyListItem(List<String> items) {
    for (var item in items) {
      listToko.add(item);
    }
  }

  Future getAllTokoData() async {
    try {
      final response = await http.post(
        Uri.parse(url + apiUrl),
        headers: {
          "Accept": "application/json",
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Methods":
              "POST, GET, OPTIONS, PUT, DELETE, HEAD",
        },
        body: json.encode(
          {"action": "GET_LIST_TOKO_DATA"},
        ),
      );
      var jsonData = json.decode(response.body);
      final length = jsonData.length;
      if (length > 0) {
        List<ListTokoClass> toko = [];
        for (var u in jsonData) {
          ListTokoClass objectToko = ListTokoClass(
              CustId: u['CustId'] ?? '',
              Name: u["Name"] ?? '',
              Address: u["Address"] ?? '',
              PhoneNo: u["PhoneNo"] ?? '',
              Received: u["Received"] ?? 0,
              FailedReason: u["FailedReason"] ?? '');
          toko.add(objectToko);
          listToko.add(objectToko.Name);
        }
        allToko.addAll(toko);
        var idSet = <String>{};
        var distinctAllToko = <ListTokoClass>[];
        for (var d in allToko) {
          if (idSet.add(d.Name)) {
            distinctAllToko.add(d);
          }
        }
        var idSet2 = <String>{};
        List<String> distincListToko = [];
        for (var d in listToko) {
          if (idSet2.add(d)) {
            distincListToko.add(d);
          }
        }
        listToko.add('Semua Toko');
        listToko = List.from(distincListToko);
        allToko = List.from(distinctAllToko);
        
        await getAllToll();
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future getAllToll() async {
    try {
      final response = await http.post(
        Uri.parse(url + apiUrl),
        headers: {
          "Accept": "application/json",
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Methods":
              "POST, GET, OPTIONS, PUT, DELETE, HEAD",
        },
        body: json.encode(
          {"action": "GET_ALL_TTOL"},
        ),
      );
      var jsonData = json.decode(response.body);
      final length = jsonData.length;
      if (length > 0) {
        List<ListTTOLClass> ttol = [];
        for (var u in jsonData) {
          ListTTOLClass objectTTOL = ListTTOLClass(
            CustId: u['CustId'] ?? '',
            Name: u["Name"] ?? '',
            TTOTTPNo: u["TTOTTPNo"] ?? '',
          );
          ttol.add(objectTTOL);
        }
        allTTOL.addAll(ttol);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  // Future getAllNamaCustomer() async {
  //   try {
  //     final response = await http.post(
  //       Uri.parse(url + apiUrl),
  //       headers: {
  //         "Accept": "application/json",
  //         "Access-Control-Allow-Origin": "*",
  //         "Access-Control-Allow-Methods":
  //             "POST, GET, OPTIONS, PUT, DELETE, HEAD",
  //       },
  //       body: json.encode(
  //         {"action": "GET_ALL_NAMA_CUSTOMER"},
  //       ),
  //     );
  //     var jsonData = json.decode(response.body);
  //     final length = jsonData.length;
  //     if (length > 0) {
  //       for (var u in jsonData) {
  //         listToko.add(u['Name']);
  //       }
  //     }
  //   } catch (e) {
  //     throw Exception(e);
  //   }
  // }

  List<DropdownMenuItem<String>> getListToko() => listToko.map((val) {
        return DropdownMenuItem<String>(
          value: val,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.redeem,
                color: Colors.grey,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                val,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        );
      }).toList();
}
