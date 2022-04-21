import 'package:flutter/material.dart';
import 'package:payment/pages/home_page.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey =
      'pk_test_51KqvwMAJ2KvpPIpf8IKp3cRLG82HhSRXeg8HcZWan3X4xJXBHHFYktdqzRbx8n91GOoju62sY8Yug4LWmdFyF5hx00pHbz5iCw';
  runApp(GetMaterialApp(initialRoute: '/', getPages: [
    GetPage(
      name: '/',
      page: () => const HomePage(),
    ),
    // GetPage(name: '/second',
    // page: () => SecondPage(),
    // ),
  ]));
}
