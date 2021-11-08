import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GridViewClass extends StatelessWidget {
  const GridViewClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 1.5,
      height: size.height,
      child: GridView.count(
        crossAxisCount: 3,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: [
          Card(
            color: Colors.green,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: () => Navigator.of(context).pushNamed('/shop_detail'),
              splashColor: Colors.transparent,
              hoverColor: Colors.white.withOpacity(0.7),
              child: Stack(
                children: [
                  Column(
                    children: [
                      // ignore: prefer_const_constructors
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            'Весь Асортимент',
                            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),//all
          Card(
            color: Colors.green,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: () {},
              splashColor: Colors.transparent,
              hoverColor: Colors.white.withOpacity(0.7),
              child: Stack(
                children: [
                  Column(
                    children: [
                      // ignore: prefer_const_constructors
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            'Футболки',
                            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage('assets/images/tm4.jpg'),
                                fit: BoxFit.contain,
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),//t-stirt
          Card(
            color: Colors.green,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: () {},
              splashColor: Colors.transparent,
              hoverColor: Colors.white.withOpacity(0.7),
              child: Stack(
                children: [
                  Column(
                    children: [
                      // ignore: prefer_const_constructors
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            'Шорти',
                            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage('assets/images/sm2.jpg'),
                                fit: BoxFit.contain,
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),//horti
          Card(
            color: Colors.green,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: () {},
              splashColor: Colors.transparent,
              hoverColor: Colors.white.withOpacity(0.7),
              child: Stack(
                children: [
                  Column(
                    children: [
                      // ignore: prefer_const_constructors
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            'Гетри',
                            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage('assets/images/hm5.jpg'),
                                fit: BoxFit.contain,
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),//hentru
          Card(
            color: Colors.green,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: () {},
              splashColor: Colors.transparent,
              hoverColor: Colors.white.withOpacity(0.7),
              child: Stack(
                children: [
                  Column(
                    children: [
                      // ignore: prefer_const_constructors
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            'Кофти',
                            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage('assets/images/xm1.jpg'),
                                fit: BoxFit.contain,
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),//Koftu
          Card(
            color: Colors.green,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: () {},
              splashColor: Colors.transparent,
              hoverColor: Colors.white.withOpacity(0.7),
              child: Stack(
                children: [
                  Column(
                    children: [
                      // ignore: prefer_const_constructors
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            'Бутси',
                            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage('assets/images/km3.jpg'),
                                fit: BoxFit.contain,
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),//bytsu
          Card(
            color: Colors.green,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: () {},
              splashColor: Colors.transparent,
              hoverColor: Colors.white.withOpacity(0.7),
              child: Stack(
                children: [
                  Column(
                    children: [
                      // ignore: prefer_const_constructors
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            '''Мя'ч''',
                            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage('assets/images/mm2.jpg'),
                                fit: BoxFit.contain,
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),//miach
          Card(
            color: Colors.green,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: () {},
              splashColor: Colors.transparent,
              hoverColor: Colors.white.withOpacity(0.7),
              child: Stack(
                children: [
                  Column(
                    children: [
                      // ignore: prefer_const_constructors
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            'Набор футболіста',
                            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage('assets/images/nm5.jpg'),
                                fit: BoxFit.contain,
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),//nabor

        ],
      ),
    );
  }
}
