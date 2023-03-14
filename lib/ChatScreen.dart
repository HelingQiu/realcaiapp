import 'package:flutter/material.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

import 'MqttUtils.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  List<String> _messages = [];

  @override
  void initState() {
    super.initState();
    //连接
    MqttUtil.getInstance()
        ?.connect("43.154.92.142", 1883, "deviced_000", "001", "123456");
    Future.delayed(Duration(seconds: 5)).then((value) =>
        {MqttUtil.getInstance()?.subscribeMessage("testtopic/chat")});
  }

  void _sendMessage(String message) {
    MqttUtil.getInstance()?.publishMessage("testtopic/chat", message);
    _messages.add(message);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Chat'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: _messages.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(_messages[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration:
                        InputDecoration(hintText: 'Type your message...'),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    _sendMessage(_messageController.text);
                    _messageController.clear();
                  },
                  child: Text('Send'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
