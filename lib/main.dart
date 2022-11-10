import 'package:apple_pay_module/constants/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'constants/service_constants.dart';
import 'screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = ServiceConstants.stripeAPIkey;
  Stripe.merchantIdentifier = ServiceConstants.merchantIdentifier;
  Stripe.urlScheme = ServiceConstants.urlScheme;
  runApp(const PayMaterialApp());
}

class PayMaterialApp extends StatelessWidget {
  const PayMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: StringConstant.appTitles,
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
    );
  }
}