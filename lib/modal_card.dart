import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ModalCard extends StatelessWidget {
  const ModalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: 200,
        color: Colors.amber,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text('Modal BottomSheet'),
              ElevatedButton(
                child: const Text('Close BottomSheet'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
