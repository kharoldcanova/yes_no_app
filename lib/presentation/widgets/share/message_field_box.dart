import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
 
    final outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent
      ),
      borderRadius: BorderRadius.circular(40)
    );

    final inputDecoration = InputDecoration(
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(onPressed: (){}, 
        icon: const Icon(Icons.send))
      );

    return TextFormField(
      decoration:  inputDecoration,
      onFieldSubmitted: (value) {
        print('SDubmit value $value');
      },
      onChanged: (value) {
        print('changed $value');
      },
    );
  }
}