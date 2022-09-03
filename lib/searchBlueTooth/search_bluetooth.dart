import 'package:flutter/material.dart';
import 'package:jaykey_flutter/until/my_app_bar.dart';

import '../routers/fluro_navigator.dart';

class SearchBlueToothController extends StatefulWidget {
  const SearchBlueToothController({Key? key}) : super(key: key);

  @override
  State<SearchBlueToothController> createState() =>
      _SearchBlueToothControllerState();
}

class _SearchBlueToothControllerState extends State<SearchBlueToothController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        centerTitle: "搜索设备",
      ),
      body: Center(
        child: Text("搜索设备"),
      ),
    );
  }
}
