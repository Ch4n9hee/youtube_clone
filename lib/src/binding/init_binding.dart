import 'package:get/get.dart';
import 'package:sideproject_youtube_clone/src/controller/app_controller.dart';
import 'package:sideproject_youtube_clone/src/repository/youtube_repository.dart';

class InitBinding implements Bindings{
  @override
  void dependencies(){
    Get.put(YoutubeRepository(), permanent: true); // permanent를 true로 할 경우 영구적으로 사용가능
    Get.put(AppController());
  }
}

