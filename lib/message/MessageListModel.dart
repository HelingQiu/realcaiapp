class MessageListModel {
  MessageListModel({
    this.photoUrl,
    this.name,
    this.lastmessage,
    this.timeStr,
  });

  MessageListModel.fromJson(dynamic json) {
    photoUrl = json['photoUrl'];
    name = json['name'];
    lastmessage = json['lastmessage'];
    timeStr = json['timeStr'];
  }
  String? photoUrl;
  String? name;
  String? lastmessage;
  String? timeStr;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['photoUrl'] = photoUrl;
    map['name'] = name;
    map['lastmessage'] = lastmessage;
    map['timeStr'] = timeStr;
    return map;
  }
}
