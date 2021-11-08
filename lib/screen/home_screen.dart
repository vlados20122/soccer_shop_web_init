import 'package:flutter/material.dart';
import 'package:soccer_shop_web/model_material_shop/product_detail.dart';
import 'package:soccer_shop_web/screen/contacts_screen.dart';
import 'package:soccer_shop_web/screen/login_sceern.dart';
import 'package:soccer_shop_web/screen/cart_screen.dart';
import 'package:soccer_shop_web/screen/shop_screen.dart';
import 'package:soccer_shop_web/screen/shop_screen_detail.dart';

import 'components/app_bar.dart';
import 'components/body.dart';

class MyApp extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // ignore: prefer_const_constructors
        initialRoute: '/',
        routes: {
          // ignore: prefer_const_constructors
          '/': (context) => HomeScreen(),
          // ignore: prefer_const_constructors
          '/shop': (context) => ShopScreen(),
          // ignore: prefer_const_constructors
          '/contact': (context) => ContactsScreen(),
          '/shop_detail': (context) => ShopScreenDetail(),
          '/product_detail': (context) => InfoDetailProducts(),
          '/login_screen': (context) => LoginScreen(),
          '/cart_screen': (context) => CartScreen(),
        });
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(

          image: DecorationImage(
            image: AssetImage('assets/images/miach.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(witgets: SizedBox(),),
            Spacer(),
            // It will cover 1/3 of free spaces
            Body(),
            Spacer(
              flex: 2,
            ),
            // it will cover 2/3 of free spaces
          ],
        ),
      ),
    );
  }
}
