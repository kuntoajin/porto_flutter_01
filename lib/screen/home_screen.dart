import 'package:flutter/material.dart';

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TestWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 45),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [Text('Jakarta'), Text('Ganti')],
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
              width: 45,
              height: 45,
              child: Icon(Icons.search, color: Colors.white),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.blue),
              )
            )
          ],
        ));
  }
}
