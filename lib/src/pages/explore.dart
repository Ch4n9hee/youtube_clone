import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sideproject_youtube_clone/src/controller/app_controller.dart';

class Explore extends GetView<AppController>{
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Explore'),
      ),
    );
  }
}
