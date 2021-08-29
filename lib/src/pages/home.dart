import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sideproject_youtube_clone/src/components/custom_appbar.dart';
import 'package:sideproject_youtube_clone/src/components/video_widget.dart';
import 'package:sideproject_youtube_clone/src/controller/home_controller.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Obx(
      () => Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: CustomAppBar(),
              floating: true,
              snap: true,
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (context, index) {
                return GestureDetector(
                    onTap: () {
                      Get.toNamed('/detail/2358125');
                    },
                    child: VideoWidget(
                        video: controller.youtubeResult.value.items![index]));
              },
              childCount: controller.youtubeResult.value.items!.length,
            ))
          ],
        ),
      ),
    ));
  }
}
