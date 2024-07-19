import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../domain/entities/song/song.dart';

class SongModel {
  String? title;
  String? artist;
  num? duration;
  Timestamp? releaseDay;

  SongModel({
    required this.title,
    required this.artist,
    required this.duration,
    required this.releaseDay,
  });
  SongModel.fromJson(Map<String, dynamic> data) {
    title = data['title'];
    artist = data['artist'];
    duration = data['duration'];
    releaseDay = data['releaseDate'];
  }
}

extension SongModelX on SongModel {
  SongEntity toEntity() {
    return SongEntity(
      title: title!,
      artist: artist!,
      duration: duration!,
      releaseDay: releaseDay!,
    );
  }
}
