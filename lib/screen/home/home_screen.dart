import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:porto_flutter_01/utils/colors.dart';
import 'package:porto_flutter_01/utils/dimentions.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TestWidget> {
  PageController pageController = PageController(viewportFraction: 0.9);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    super.initState();
    var controllerPage = pageController;
    controllerPage.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          margin: EdgeInsets.only(top: 45),
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('Jakarta', style: TextStyle(fontSize: 20)),
                  Row(children: [
                    Text('Ganti', style: TextStyle(height: 1.0, fontSize: 12)),
                    Icon(Icons.arrow_drop_down_rounded)
                  ])
                ],
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor),
                    child: const Icon(Icons.search, color: Colors.white),
                  ))
            ],
          )),
      Column(
        children: [
          Container(
              height: Dimensions.pageView,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: PageView.builder(
                  controller: pageController,
                  itemCount: 5,
                  itemBuilder: (context, position) {
                    return _buildPageItem(position);
                  })),
          new DotsIndicator(
            dotsCount: 5,
            position: _currPageValue,
            decorator: DotsDecorator(
              activeColor: AppColors.mainColor,
              size: const Size.square(7.0),
              activeSize: const Size(15.0, 8.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          )
        ],
      ),
      Column(
        children: [
          Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 15),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Popular',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              )),
          Container(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 90,
                      width: 140,
                      margin: EdgeInsets.only(left: 20, bottom: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2022/11/15071119/Gado-Gado-dan-Ketoprak-Mana-yang-Lebih-Rendah-Kalori.jpg'))),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ketoprak Pak Shin',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 3),
                        Text('Dengan sambal kacang',
                            style: TextStyle(fontSize: 10, color: Colors.grey)),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Text('Rp. 23.000',
                                style: TextStyle(color: Colors.blueGrey)),
                            SizedBox(width: 10),
                            Row(
                              children: [
                                Icon(Icons.location_on,
                                    color: AppColors.mainColor, size: 16),
                                Text(
                                  '4km',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 90,
                      width: 140,
                      margin: EdgeInsets.only(left: 20, bottom: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://cdn.idntimes.com/content-images/community/2021/08/cover-1d7e007c50ecd923926e64b9e704dee3-d4b12d15179c9cbeffe1033770043ca2_600x400.jpg'))),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bubur Koh Denis',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 3),
                        Text('Dengan sambal kacang',
                            style: TextStyle(fontSize: 10, color: Colors.grey)),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Text('Rp. 21.000',
                                style: TextStyle(color: Colors.blueGrey)),
                            SizedBox(width: 10),
                            Row(
                              children: [
                                Icon(Icons.location_on,
                                    color: AppColors.mainColor, size: 16),
                                Text(
                                  '2km',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 90,
                      width: 140,
                      margin: EdgeInsets.only(left: 20, bottom: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://asset-2.tstatic.net/belitung/foto/bank/images/20230613-Pecel-Lele-kesedapan-sejati-sejak-dalam-pandangan-mata.jpg'))),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pecel Lele Goreng',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 3),
                        Text('Paket pecel lele goreng sambal matah',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 10, color: Colors.grey)),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Text('Rp. 25.000',
                                style: TextStyle(color: Colors.blueGrey)),
                            SizedBox(width: 10),
                            Row(
                              children: [
                                Icon(Icons.location_on,
                                    color: AppColors.mainColor, size: 16),
                                Text(
                                  '2km',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )
    ]);
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();

    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://media.sukabumiupdate.com/media/2023/01/20/1674217900_63ca89ac0f895_Ck15X6rBGVyRcdxXu9YC.jpg'))),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: Dimensions.pageViewTextContainer,
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFFe8e8e8),
                          blurRadius: 10.0,
                          offset: Offset(0, 5)),
                      BoxShadow(color: Colors.white, offset: Offset(-5, 0))
                    ]),
                child: Container(
                  padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text('Gorengan Bu Ima',
                            style: TextStyle(fontSize: 20, height: 0.5)),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Wrap(
                              children: List.generate(
                                  5,
                                  (index) => Icon(Icons.star,
                                      color: AppColors.mainColor, size: 15))),
                          SizedBox(width: 10),
                          Text('4.5'),
                          SizedBox(width: 10),
                          Text('1287'),
                          SizedBox(width: 10),
                          Text('Komentar')
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.circle_sharp,
                                    color: Colors.orange, size: 16),
                                SizedBox(width: 5),
                                Text('Normal', style: TextStyle(fontSize: 11))
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on,
                                    color: AppColors.mainColor, size: 16),
                                SizedBox(width: 5),
                                Text('2km', style: TextStyle(fontSize: 11))
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.access_time_rounded,
                                    color: Colors.amber, size: 16),
                                SizedBox(width: 5),
                                Text('30 menit', style: TextStyle(fontSize: 11))
                              ],
                            )
                          ])
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
