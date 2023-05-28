import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/My_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://media.licdn.com/dms/image/D4D03AQH9mpoW3bNa6A/profile-displayphoto-shrink_100_100/0/1680187773234?e=1691020800&v=beta&t=4891Zv_ZGWoqjQJd3v686_7-zHB2UdGR4LErCjMmEfA'),
          ),
        ),
        title: const Text('La puni ❤️'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return (index % 2 == 0)
                          ? const MyMessageBubble()
                          : const HerMessageBubble();
                    })),
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
