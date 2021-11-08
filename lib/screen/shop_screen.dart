import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:soccer_shop_web/constant.dart';
import 'package:soccer_shop_web/screen/components/bottom_panel.dart';
import 'package:soccer_shop_web/screen/components/side_bar.dart';
import 'components/app_bar.dart';
import 'class_build/grid_view_class.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/logosoccerbig.png'),
              fit: BoxFit.cover,
            ),
          ),
        child: SingleChildScrollView(
          physics: ScrollPhysics(parent: PageScrollPhysics()),
          child: Column(
            children: [
              CustomAppBar(witgets: SizedBox(),),
              Container(
                height: size.height / 1.3,
                child: ListView(
                  children: [
                    Container(
                      height: size.height,
                      width: size.width,
                      child: GridViewClass(),
                    ),
                  ],
                ),
              ),
              BottomPanel(),
            ],
          ),
        ),
      ),
    );
  }
}
