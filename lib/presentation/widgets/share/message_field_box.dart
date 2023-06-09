import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key, required this.onValue});
    //onvalue
    final ValueChanged<String> onValue;

  @override
  Widget build(BuildContext context) {

    //focus node
    final focusNode = FocusNode();

    //controller
    final textController = TextEditingController();

    //inputborder
    final outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent
      ),
      borderRadius: BorderRadius.circular(40)
    );

    //input decoration
    final inputDecoration = InputDecoration(
      hintText: 'End your message with a "?"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(onPressed: (){
          final textValue = textController.value.text;
          textController.clear();
          onValue(textValue);
        }, 
        icon: const Icon(Icons.send))
      );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration:  inputDecoration,
      onFieldSubmitted: (value) {
        textController.clear();
        focusNode.requestFocus();
        onValue(value);
      },
    );
  }
}