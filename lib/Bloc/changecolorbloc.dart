import 'package:bloc/bloc.dart';
import 'package:bloctesting/Bloc/changcolorevent.dart';

class ChangeColourBloc extends Bloc<ChangeColourEvent, bool> {
  ChangeColourBloc() : super(true) {
    on<ToggleColourtopurple>((event, emit) => emit(false));
    on<ToggleColourtored>((event, emit) => emit(true));
  }
}
