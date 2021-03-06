import 'package:get/get.dart';
import 'package:sideproject_youtube_clone/models/youtube_video_result.dart';
import 'package:sideproject_youtube_clone/src/repository/youtube_repository.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  Rx<YoutubeVideoResult> youtubeResult = YoutubeVideoResult().obs;

  @override
  void onInit() {
    _videoLoad();
    super.onInit();
  }

  void _videoLoad() async {
    YoutubeVideoResult? youtubeVideoResult =
        await YoutubeRepository.to.loadVideos();
    if(youtubeVideoResult!.items!.length > 0)
      youtubeResult(youtubeVideoResult);
  }
}
