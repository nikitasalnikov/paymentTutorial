import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:payment/controller/payment_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final paymentController = Get.put(PaymentController());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => paymentController.makePayment(
                amount: '5',
                currency: 'USD',
              ),
              child: const Text('Make Payment'),
            ),
          ),
        ],
      ),
    );
  }
}
