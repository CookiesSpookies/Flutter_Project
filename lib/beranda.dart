import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_it_flutter/constant/Theme.dart';
import 'package:tes_it_flutter/constant/controllers.dart';
import 'package:tes_it_flutter/controllers/list_toko_controller.dart';
import 'package:tes_it_flutter/filter_bar.dart';
import 'package:tes_it_flutter/list_toko.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(()=>ListTokoController());
    void onInit() {
    listTokoController.getAllTokoData();
  }

    return Scaffold(
      backgroundColor: ColorTemplate.mainColor,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Kunjungan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Informasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Pengaturan',
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              floating: true,
              pinned: true,
              snap: false,
              centerTitle: false,
              backgroundColor: Colors.white,
              foregroundColor: ColorTemplate.mainColor,
              title: const FilterBar()),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const ListToko()
              ],
            ),
          )
        ],
      ),
    );
  }
}
