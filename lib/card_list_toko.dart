import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_it_flutter/constant/controllers.dart';

class CardListToko extends StatelessWidget {
  const CardListToko({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Obx(() => listTokoController.selectedToko.value != 'Semua Toko'
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int x = 0;
                  x < listTokoController.allToko.length;
                  x++) ...[
                listTokoController.allToko[x].Name == listTokoController.selectedToko.value ? 
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            listTokoController.allToko[x].Name,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              const Icon(Icons.location_pin,
                                  color: Colors.white),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                listTokoController.allToko[x].Address,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            int.parse(listTokoController.allToko[x].Received) >
                                    0
                                ? 'Sudah Diterima'
                                : (listTokoController.allToko[x].FailedReason !=
                                        ''
                                    ? 'Gagal Diterima'
                                    : (int.parse(listTokoController
                                                    .allToko[x].Received) ==
                                                0 &&
                                            listTokoController
                                                    .allToko[x].FailedReason ==
                                                ''
                                        ? 'Belum Diberikan'
                                        : 'Status Tidak Jelas')),
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              const Icon(Icons.phone, color: Colors.white),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                listTokoController.allToko[x].PhoneNo,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ) : const SizedBox(),
                listTokoController.allToko[x].Name == listTokoController.selectedToko.value ? 
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0))),
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              for (int y = 0;
                                  y < listTokoController.allTTOL.length;
                                  y++) ...[
                                listTokoController.allTTOL[y].Name ==
                                        listTokoController.allToko[x].Name
                                    ? Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          width: double.infinity,
                                          padding: const EdgeInsets.all(15),
                                          decoration: const BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.centerLeft,
                                                end: Alignment.centerRight,
                                                colors: [
                                                  Color.fromARGB(
                                                      255, 13, 189, 171),
                                                  Color.fromARGB(
                                                      255, 13, 167, 152),
                                                  Color.fromARGB(
                                                      255, 38, 166, 140),
                                                ],
                                                stops: [0.2, 0.6, 0.9],
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50))),
                                          child: Text(
                                            "🎁 ${listTokoController.allTTOL[y].TTOTTPNo}",
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        ),
                                      )
                                    : const SizedBox()
                              ],
                            ],
                          ),
                        )
                      ]),
                ): const SizedBox(),
              ],
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int x = 0;
                  x < listTokoController.allToko.length;
                  x++) ...[
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            listTokoController.allToko[x].Name,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              const Icon(Icons.location_pin,
                                  color: Colors.white),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                listTokoController.allToko[x].Address,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            int.parse(listTokoController.allToko[x].Received) >
                                    0
                                ? 'Sudah Diterima'
                                : (listTokoController.allToko[x].FailedReason !=
                                        ''
                                    ? 'Gagal Diterima'
                                    : (int.parse(listTokoController
                                                    .allToko[x].Received) ==
                                                0 &&
                                            listTokoController
                                                    .allToko[x].FailedReason ==
                                                ''
                                        ? 'Belum Diberikan'
                                        : 'Status Tidak Jelas')),
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              const Icon(Icons.phone, color: Colors.white),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                listTokoController.allToko[x].PhoneNo,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0))),
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              for (int y = 0;
                                  y < listTokoController.allTTOL.length;
                                  y++) ...[
                                listTokoController.allTTOL[y].Name ==
                                        listTokoController.allToko[x].Name
                                    ? Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          width: double.infinity,
                                          padding: const EdgeInsets.all(15),
                                          decoration: const BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.centerLeft,
                                                end: Alignment.centerRight,
                                                colors: [
                                                  Color.fromARGB(
                                                      255, 13, 189, 171),
                                                  Color.fromARGB(
                                                      255, 13, 167, 152),
                                                  Color.fromARGB(
                                                      255, 38, 166, 140),
                                                ],
                                                stops: [0.2, 0.6, 0.9],
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50))),
                                          child: Text(
                                            "🎁 ${listTokoController.allTTOL[y].TTOTTPNo}",
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        ),
                                      )
                                    : const Text('')
                              ],
                            ],
                          ),
                        )
                      ]),
                ),
              ],
            ],
          ));
  }
}
