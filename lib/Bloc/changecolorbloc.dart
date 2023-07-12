import 'package:bloc/bloc.dart';
import 'package:bloctesting/Bloc/changcolorevent.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class ChangeColourBloc extends Bloc<ChangeColourEvent, bool> {
  ChangeColourBloc() : super(true) {
    on<ToggleColourtopurple>((event, emit) => emit(false));
    on<ToggleColourtored>((event, emit) => emit(true));
  }
}

class StatusPageBloc extends Bloc<MessageEvents, List<String>> {
  StatusPageBloc() : super([]) {
    on<MessageReceived>((
      event,
      emit,
    ) {
      final List<String> currentlist = List.from(state);
      currentlist.add('message recieved');
      emit(currentlist);
    });
  }
}
