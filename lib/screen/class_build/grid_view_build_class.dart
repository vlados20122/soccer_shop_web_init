import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soccer_shop_web/model_material_shop/cart.dart';
import 'package:soccer_shop_web/model_material_shop/model_material_shop_provider.dart';

class GridViewBuildClass extends StatefulWidget {
  const GridViewBuildClass({Key? key}) : super(key: key);

  @override
  _GridViewBuildClassState createState() => _GridViewBuildClassState();
}

class _GridViewBuildClassState extends State<GridViewBuildClass> {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<ModelMaterialShopProvider>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width ,
      height: size.height,
      padding: EdgeInsets.all(20),
      child: Consumer<ModelMaterialShopProvider>(
          builder: (context, _provider, child) {
        return StreamBuilder<ModelMaterialShopProvider>(
          stream: null,
          builder: (context, snapshot) {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 350,
                  mainAxisExtent: 350,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: _provider.items.length,
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      '/product_detail',
                      arguments: _provider.items[i].id,
                    );
                  },
                  child: Stack(
                    children: [
                      Card(
                          elevation: 5,
                          shape: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 80, color: Colors.white.withOpacity(0.7)),
                              borderRadius: BorderRadius.circular(15)),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage(_provider.items[i].imageUrl),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          color: Colors.transparent),
                      Container(
                        height: size.height,
                        padding: EdgeInsets.all(5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              icon: Icon(Icons.shopping_cart),
                              onPressed: () => cart.addItem(_provider.items[i].id, _provider.items[i].price, _provider.items[i].title,_provider.items[i].imageUrl),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text('${_provider.items[i].title}',style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text('${_provider.items[i].price} \$'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        );
      }),
    );
  }
}
