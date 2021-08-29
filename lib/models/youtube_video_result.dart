import 'package:sideproject_youtube_clone/models/video.dart';

class YoutubeVideoResult {
  int? totalResult;
  int? resultPerPage;
  String? nextPageToken;
  List<Video>? items;

  YoutubeVideoResult(
      {this.totalResult,
       this.resultPerPage,
       this.nextPageToken,
       this.items});

  factory YoutubeVideoResult.fromJson(Map<String, dynamic> json) =>
      YoutubeVideoResult(
          totalResult: json['pageInfo']['totalResults'],
          resultPerPage: json['pageInfo']['resultsPerPage'],
          nextPageToken: json['nextPageToken'] ?? '',
          items: List<Video>.from(
              json['items'].map((data) => Video.fromJson(data))));
}
