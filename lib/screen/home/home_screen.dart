import 'package:flutter/material.dart';
import 'package:porto_flutter_01/utils/colors.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TestWidget> {
  PageController pageController = PageController(viewportFraction: 0.9);
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
      Container(
          height: 320,
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }))
    ]);
  }
}

Widget _buildPageItem(int index) {
  return Stack(
    children: [
      Container(
        height: 220,
        margin: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://awsimages.detik.net.id/community/media/visual/2023/10/06/presiden-jokowi-foto-biro-pers-sekretariat-presiden-4_169.jpeg'))),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 120,
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white
          ),
          child: Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text('Masakan cina', style: TextStyle(fontSize: 20, height: 0.5)),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Wrap(children: List.generate(5, (index) => Icon(Icons.star, color: AppColors.mainColor, size: 15))),
                    SizedBox(width: 10),
                    Text('4.5'),
                    SizedBox(width: 10),
                    Text('1287'),
                    SizedBox(width: 10),
                    Text('Komentar')
                  ],
                )
              ],
            ),
          ),)
      )
    ],
  );
}
