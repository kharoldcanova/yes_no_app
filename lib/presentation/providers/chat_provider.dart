import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  //Scroll Controller
  final ScrollController chatScrollController = ScrollController();


  //list message
  List<Message> messageList =[
    Message(text: 'Holi Kharold', fromWho: FromWho.me),
    Message(text: '¿Estas trabajando?', fromWho: FromWho.me),
  ];

  //send message
  Future<void> sendMessage (String text) async{
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    notifyListeners();
    moveScrollController();
  }

  //move scroll
  void moveScrollController () async {
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
    chatScrollController.position.maxScrollExtent, 
    duration: const Duration(milliseconds: 300), 
    curve: Curves.easeOut);
  }
}