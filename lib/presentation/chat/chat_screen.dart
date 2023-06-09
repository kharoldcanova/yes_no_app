import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Mi Chat 🥣'),
        centerTitle: true,
        leading: const Padding(
          padding:  EdgeInsets.all(4),
          child:  CircleAvatar(
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzvtBN9ll1dRXFgW-qovdNaE4HGUiBw6AUhMjB64n1gR-4Evm03-7B-V9MilvnEFHDAf4&usqp=CAU', 
            scale: 3),
          ),
        )
      ),
    );
  }
}