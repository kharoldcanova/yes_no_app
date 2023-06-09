import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList =[
    Message(text: 'Holi Kharold', fromWho: FromWho.me),
    Message(text: '¿Estas trabajando?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage (String text) async{
    //TODO: implementar metodo
  }
}