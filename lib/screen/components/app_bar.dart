import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:soccer_shop_web/model_material_shop/cart.dart';
import 'menu_item.dart';

class CustomAppBar extends StatefulWidget {
  CustomAppBar({required this.witgets,Key? key}) : super(key: key);
  final Widget witgets;

  // setState(context){
  //   final global = Navigator.pushNamed(context, '/');
  // }

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final cart = Provider.of<Cart>(context);

    // _launchURL() async {
    //   const url = 'https://www.facebook.com/profile.php?id=100015291971348';
    //   if (await canLaunch(url)) {
    //     await launch(url);
    //   } else {
    //     throw 'Could not launch $url';
    //   }
    // }
    return Container(
      margin: EdgeInsets.all(20),
      width: size.width,
      height: 100,
      decoration: BoxDecoration(
        color: const Color(0x681C4B06),
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.9),
          ),
        ],
      ),
      child: ListView(
addAutomaticKeepAlives: false,
        padding: EdgeInsets.all(20),
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              Container(child: widget.witgets,),
              InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/shop');
                  },
                  child: SvgPicture.asset(
                    'assets/svg/logofinal.svg',
                    width: size.width/8,
                  )),
              SizedBox(width: size.width/3),
              MenuItem(
                  title: 'Головне меню',
                  press: () {
                    Navigator.popAndPushNamed(context, '/');
                  }),
              MenuItem(
                  title: 'Мазагин',
                  press: () {
                    Navigator.pushNamed(context, '/shop');
                  }),
                  Row(
                    children: [
                      MenuItem(
                          title: "Козрина",
                          press: () =>
                            Navigator.of(context).pushNamed('/cart_screen')),
                      CircleAvatar(backgroundColor: Colors.red,minRadius: 5,maxRadius: 10,child: Text('${cart.itemCount.toString()}',style: TextStyle(color: Colors.white),)),
                      ],
                  ),

              MenuItem(title: 'Контакти', press: () {
                Navigator.pushNamed(context, '/contact');
              }),
              MenuItem(title: 'Залогінитися', press: () {
                Navigator.of(context).pushNamed('/login_screen');
              }),
              InkWell(
                onTap: () {
                },
                child: const Text(
                  'Зареєструватися',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/*/*Container(
      padding:  EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0x681C4B06),
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.9),
          ),
        ],
      ),
      child:  Row(
        children: [
          // Image.asset(
          //   "assets/images/logo.png",
          //   height: 25,
          //   alignment: Alignment.topCenter,
          // ),
          const SizedBox(width: 25),
          InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/shop');
              },
              splashColor: Colors.black,
              child: SvgPicture.asset(
                'assets/svg/logosoccer.svg',
                color: kTextcolor,
                height: 30,
              )),
          const SizedBox(width: 5),
          // Text(
          //   'Shop for you'.toUpperCase(),
          //   style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          // ),
          const Spacer(),
          // InkWell(
          //   onTap: () {
          //     setState(() {
          //       Navigator.pushReplacementNamed(context, '/global');
          //     });
          //   },
          //   child: Text(
          //     'Головна сторінка'.toUpperCase(),
          //     style: TextStyle(),
          //   ),
          // ),
          MenuItem(
              title: 'Головне меню',
              press: () {
                Navigator.popAndPushNamed(context, '/global');
              }),
          MenuItem(
              title: 'Мазагин',
              press: () {
                Navigator.pushNamed(context, '/shop');
              }),
          MenuItem(title: "Знижки", press: () {}),
          MenuItem(
              title: "Контакти",
              press: () {
                Navigator.pushNamed(context, '/contact');
              }),
          MenuItem(title: "Залогінитися", press: () {}),
          InkWell(
            onTap: () {},
            child: const Text(
              'Зареєструватися',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );*/*/
