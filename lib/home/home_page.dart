import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jaykey_flutter/res/gaps.dart';
// ignore: unused_import
import 'package:jaykey_flutter/searchBlueTooth/search_bluetooth.dart';
import 'package:jaykey_flutter/until/image_utils.dart';

import '../routers/fluro_navigator.dart';
import '../searchBlueTooth/search_bluetooth_router.dart';

class HomePageController extends StatefulWidget {
  const HomePageController({Key? key}) : super(key: key);

  @override
  State<HomePageController> createState() => _HomePageControllerState();
}

class _HomePageControllerState extends State<HomePageController> {
  // 设置间隔
  static const _spacing = 15.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: HexColor("#F8F9FF"),
          title: const Text(
            "水族照明系统",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: Container(
          color: HexColor("#F8F9FF"),
          child: Column(
            children: [
              Expanded(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(
                          _spacing / 2, 0, _spacing / 2, 0),
                      child: contentWidge())),
              Container(
                color: Colors.transparent,
                height: 40,
                child: const Center(
                  child: Text('V1.0.0'),
                ),
              )
            ],
          ),
        ));
  }

  Widget contentWidge() {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.2,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0),
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (index == 4) {
                NavigatorUtils.push(
                    context, ScarchBlueToothRouter.searchBlueToothPage,
                    clearStack: false);
              } else {}
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(
                  _spacing / 2, 0, _spacing / 2.0, _spacing),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 15,
                      spreadRadius: 0,
                      offset: const Offset(0, 10),
                      color: HexColor("#3C4052").withAlpha(20))
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Image(
                      image: index == 4
                          ? ImageUtils.getAssetImage("home/add")
                          : ImageUtils.getAssetImage("home/30*30*30"),
                    ),
                  ),
                  Gaps.vGap5,
                  const Text("30*30*30"), 
                  Gaps.vGap5,
                ],
              ),
            ),
          );
        });
  }
}
