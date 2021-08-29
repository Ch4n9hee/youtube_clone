import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class YoutubeDetail extends StatelessWidget {
  const YoutubeDetail({Key? key}) : super(key: key);


  Widget _buttonOne(String iconPath, String text){
    return Column(
      children: [
        SvgPicture.asset('assets/svg/icons/$iconPath.svg'),
        Text('$text'),
      ],
    );
  }
  Widget _buttonZone(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buttonOne('like', '1000'),_buttonOne('dislike', '0'),_buttonOne('share', '공유'),_buttonOne('share', '저장'),
      ],
    );
  }

  Widget _descriptionZone(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Text('개발자 회사생활 유튜브 영상입니다.',style: TextStyle(fontSize: 14, ),),
    );
  }

  Widget _titleZone() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '개발자 회사생활 유튜브 영상 다시보기',
            style: TextStyle(fontSize: 15),
          ),
          Row(
            children: [
              Text(
                '조회수 1000회',
                style: TextStyle(
                    fontSize: 13, color: Colors.black.withOpacity(0.5)),
              ),
              Text(' · ',
                style: TextStyle(
                    fontSize: 13, color: Colors.black.withOpacity(0.5))),
              Text(
                '2021.08.21',
                style: TextStyle(
                    fontSize: 13, color: Colors.black.withOpacity(0.5)),
              ),

            ],
          )
        ],
      ),
    );
  }
  Widget get line => Container(height:1,color: Colors.black.withOpacity(0.1),);

  Widget _ownerZone(){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey.withOpacity(0.5),
            backgroundImage: Image.network(
                'https://yt3.ggpht.com/evRsefmBasg-GVRapVezqp_jIoCK9z6QACp88zDjmTpp2vQX6yZjhw0THti4FcfrLJ3JUGhq=s176-c-k-c0x00ffffff-no-rj')
                .image,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('개발자 사회생활', style: TextStyle(fontSize: 18),),
                Text('구독자 10000', style: TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.6)),)
              ],
            ),
          ),
          GestureDetector(
            child: Text('구독',style: TextStyle(color: Colors.red, fontSize: 16),),
          )
        ],
      ),
    );
  }

  Widget _description() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _titleZone(),
          line,
          _descriptionZone(),
          _buttonZone(),
          SizedBox(height: 20),
          line,
          _ownerZone(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(height: 250, color: Colors.grey.withOpacity(0.5)),
          Expanded(child: _description()),
          // Text(Get.parameters['videoId']),
        ],
      ),
    );
  }
}
