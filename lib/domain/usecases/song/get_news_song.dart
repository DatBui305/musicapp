import 'package:dartz/dartz.dart';
import 'package:spotifycleanarchitecture/core/usecase/usecase.dart';
import 'package:spotifycleanarchitecture/data/models/auth/create_user_req.dart';
import 'package:spotifycleanarchitecture/data/repository/song/song_repository_impl.dart';
import 'package:spotifycleanarchitecture/domain/repository/auth/auth.dart';

import '../../../service_locator.dart';
import '../../repository/song/song.dart';

class GetNewsSongsUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await s1<SongsRepository>().getNewsSongs();
  }
}
