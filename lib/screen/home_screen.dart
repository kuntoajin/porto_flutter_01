import 'package:flutter/material.dart';
import 'package:porto_flutter_01/utils/colors.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TestWidget> {
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
                    child: Icon(Icons.search, color: Colors.white),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor),
                  ))
            ],
          )),
      Container(
        child: const Image(
          width: 200,
          // height: 60,
          image: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.mainColor),
      )
    ]);
  }
}
