import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_it_flutter/card_list_toko.dart';
import 'package:tes_it_flutter/constant/Theme.dart';
import 'package:tes_it_flutter/constant/controllers.dart';

class ListToko extends StatelessWidget {
  const ListToko({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: ColorTemplate.mainColor),
      child: Obx(
        () =>  listTokoController.allToko.isNotEmpty 
        ?  
        const CardListToko()
        :
        Container(
          padding: const EdgeInsets.all(40),
          child: Center(child: Column(
            children: [
              const Text('No Data Found',style: TextStyle(fontSize: 30),),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: ()=> listTokoController.getAllTokoData(), child: const Text('Get Data From Database'))
            ],
          )),
        )
      ),
    );
  }
}
