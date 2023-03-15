import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realcaiapp/message/MessageListModel.dart';
import 'package:realcaiapp/utils/SizeUtil.dart';

import 'message_logic.dart';

class MessagePage extends StatelessWidget {
  final logic = Get.put(MessageLogic());
  final state = Get.find<MessageLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('消息'),
      ),
      body: ListView.builder(
          itemCount: state.messageList.length,
          itemBuilder: (context, index) {
            var item = state.messageList[index];
            return _buildItem(item, context);
          }),
    );
  }

  Widget _buildItem(MessageListModel model, BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 10.dp, top: 10.dp, right: 10.dp, bottom: 10.dp),
      child: Row(
        children: [
          Image.network(
            model?.photoUrl ?? "",
            width: 50.dp,
            height: 50.dp,
          ),
          SizedBox(
            width: 10.dp,
          ),
          Column(
            children: [
              Text(model?.name ?? ""),
              SizedBox(
                height: 10.dp,
              ),
              Row(
                children: [
                  Text(model?.lastmessage ?? ""),
                  SizedBox(
                    width: 5.dp,
                  ),
                  Text(model?.timeStr ?? ""),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
