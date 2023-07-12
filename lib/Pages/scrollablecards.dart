import 'dart:js';

import 'package:bloctesting/Bloc/changcolorevent.dart';
import 'package:bloctesting/Bloc/changecolorbloc.dart';
import 'package:bloctesting/firstblocexample.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/io.dart';

class StatusCardPage extends StatelessWidget {
  final WebSocketService webSocketService = WebSocketService("url");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Test for bloc listView")),
        body: BlocProvider(create: , child: ,)
        );
  }
}

class WebSocketService {
  final WebSocketChannel channel;

  WebSocketService(String url)
      : channel = IOWebSocketChannel.connect(Uri.parse(url));

  void listenForData(void Function(dynamic) onData) {
    channel.stream.listen(onData);
  }

  void close() {
    channel.sink.close();
  }
}
