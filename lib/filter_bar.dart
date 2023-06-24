import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tes_it_flutter/constant/Theme.dart';
import 'package:tes_it_flutter/constant/controllers.dart';
import 'package:tes_it_flutter/modal_card.dart';

class FilterBar extends StatelessWidget {
  const FilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        // height: 40,
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: ButtonTheme(
                alignedDropdown: true,
                child: DropdownButtonFormField<String>(
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 0),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: ColorTemplate.mainColor, width: 1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: ColorTemplate.mainColor, width: 1),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    // prefixIcon: Icon(Icons.redeem_rounded,size: 20, color: Colors.grey),
                  ),
                  items: listTokoController.getListToko(),
                  value: listTokoController.selectedToko(),
                  iconEnabledColor: ColorTemplate.darkMainColor,
                  dropdownColor: Colors.white,
                  onChanged: (val) {
                    listTokoController.setSelectedToko(val);
                  },
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Center(
                child: Material(
                  type: MaterialType.transparency,
                  child: Ink(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 89, 0),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                padding: EdgeInsets.all(20),
                                height: 200,
                                color: Colors.white,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const Icon(Icons.redeem, color: Colors.amber,),
                                          const Text('Total Hadiah',style: TextStyle(fontSize: 24 ),),
                                          IconButton(
                                            icon:const Icon(Icons.cancel),
                                            color: ColorTemplate.mainColor,
                                            onPressed: () =>
                                                Navigator.pop(context),
                                          ),
                                        ],
                                      ),
                                      const Divider(
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(6, 13, 6, 13),
                        child: Row(
                          children: [
                            Icon(
                              Icons.redeem,
                              size: 20.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Total Hadiah',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
