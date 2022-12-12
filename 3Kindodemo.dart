import 'package:flutter/material.dart';
import 'package:flutter_application_15102/widgetlibrary.dart';
import 'package:postgres/postgres.dart';
class KindoDemoScreen extends StatefulWidget {
  const KindoDemoScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<KindoDemoScreen> createState() => KindoDemo();
}

class KindoDemo extends State<KindoDemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: const Padding(
        padding: EdgeInsets.all(0),
        child: KindaCodeDemo(),
      ),
      bottomSheet: SizedBox(
        width: 450,
        height: 0,
        child: Column(
          children: const [],
        ),
      ),
    );
  }
}
