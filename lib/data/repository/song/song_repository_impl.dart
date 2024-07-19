import 'package:dartz/dartz.dart';
import 'package:spotifycleanarchitecture/data/sources/song/song_firebase_service.dart';
import 'package:spotifycleanarchitecture/service_locator.dart';

import '../../../domain/repository/song/song.dart';

class SongRepositoryImpl extends SongsRepository {
  @override
  Future<Either> getNewsSongs() async {
    return await s1<SongFirebaseService>().getNewsSongs();
  }

  @override
  Future<Either> getPlayList() async {
    return await s1<SongFirebaseService>().getPlayList();
  }
}
