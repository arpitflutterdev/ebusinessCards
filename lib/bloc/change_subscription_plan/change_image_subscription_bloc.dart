import 'dart:async';
import 'package:bloc/bloc.dart';

enum ImageUpdater { zero, one, two }
enum ImageUpdaterBack {zero, one, two}

class ChangeImage extends Bloc<ImageUpdater, int> {
  ChangeImage(int initialState) : super(initialState) {
    on<ImageUpdater>((event, emit) {
      switch (event) {
        case ImageUpdater.zero:
          emit(state +1);
          break;
        case ImageUpdater.one:
          emit(state +1);
          break;
        case ImageUpdater.two:
          emit(state +1);
          break;
      }
    });
  }
}
