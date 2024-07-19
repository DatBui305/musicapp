import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotifycleanarchitecture/presentation/home/bloc/news_song_state.dart';
import 'package:spotifycleanarchitecture/service_locator.dart';

import '../../../domain/usecases/song/get_news_song.dart';

class NewsSongsCubit extends Cubit<NewsSongsState> {
  NewsSongsCubit() : super(NewsSongsLoading());

  Future<void> getNewsSongs() async {
    var returnedSongs = await s1<GetNewsSongsUseCase>().call();
    returnedSongs.fold((l) {
      emit(NewsSongsLoadFailure());
    }, (data) {
      emit(NewsSongsLoaded(songs: data));
    });
  }
}
