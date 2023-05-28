import 'package:flutter/material.dart';

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
                      return Text('Index: $index');
                    })),
            const Text('hello world'),
          ],
        ),
      ),
    );
  }
}
