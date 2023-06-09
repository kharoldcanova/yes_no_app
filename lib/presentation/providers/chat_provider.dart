import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  //Scroll Controller
  final ScrollController chatScrollController = ScrollController();
  //answer
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

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
    if(text.endsWith('?')){
      herReply();
    }
    notifyListeners();
    moveScrollBottom();
  }

  //her responde
  Future<void> herReply()async{
    final herMessage = await getYesNoAnswer.getAnswer();
    messageList.add(herMessage);
    notifyListeners();
    moveScrollBottom();
  }

  //move scroll
  void moveScrollBottom () async {
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
    chatScrollController.position.maxScrollExtent, 
    duration: const Duration(milliseconds: 300), 
    curve: Curves.easeOut);
  }
}