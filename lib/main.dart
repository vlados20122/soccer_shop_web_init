import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:soccer_shop_web/model_material_shop/model_material_shop_provider.dart';
import 'package:soccer_shop_web/screen/home_screen.dart';

import 'model_material_shop/cart.dart';
import 'model_material_shop/orders.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) {
    runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider<ModelMaterialShopProvider>(
            create: (_) => ModelMaterialShopProvider()),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Orders(),
        ),
      ],
      child: MyApp(),
    ));
  });
}
