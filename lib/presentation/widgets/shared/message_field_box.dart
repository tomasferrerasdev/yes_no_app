import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputDecoration = InputDecoration(
        filled: true,
        focusedBorder: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send),
          onPressed: () {
            print('Text box value');
          },
        ));

    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Submit value $value');
      },
      onChanged: (value) {
        print('change $value');
      },
    );
  }
}
