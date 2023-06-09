import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Mi Chat 🥣'),
          centerTitle: true,
          leading: const Padding(
            padding: EdgeInsets.all(4),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzvtBN9ll1dRXFgW-qovdNaE4HGUiBw6AUhMjB64n1gR-4Evm03-7B-V9MilvnEFHDAf4&usqp=CAU',
                  scale: 3),
            ),
          )),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                return (index % 2 == 0)
                ? const HerMessageBubble() :
                const MyMessageBubble();
              },),
            ),
            const Text('Mundo')
          ],
        ),
      ),
    );
  }
}

