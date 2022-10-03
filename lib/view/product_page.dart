import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends GetView<GetxController> {
  ProductPage({Key? key}) : super(key: key);

  PageController control = PageController();
  final List<Widget> _pages = <Widget>[
    Image(image: AssetImage('assets/1.png')),
    Image(image: AssetImage('assets/2.png')),
    Image(image: AssetImage('assets/3.png')),
  ];

  final int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 10),
        child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 75),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.8),
                                BlendMode.dstATop),
                            image: const AssetImage('assets/1.png'),
                            fit: BoxFit.fitHeight),
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, bottom: 15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Text(
                                        "Life is like a mirror, we get the best result",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Life is like a mirror, we get the best result",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      )
                                    ],
                                  ),
                                )),
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30, right: 10),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 21,
                                      width: 55,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.red),
                                      child: const Text(
                                        "\$2000",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Icon(
                                        Icons.shopping_cart,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      Text(
                                        "Buy",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      SizedBox(height: 20),
                                      Icon(
                                        Icons.share_rounded,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      Text(
                                        "Share",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      SizedBox(height: 20),
                                      Icon(
                                        Icons.chat,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                      Text(
                                        "2.86",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      SizedBox(height: 20),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            );
          },
          itemCount: _pages.length, // Can be null
        ));
  }
}
