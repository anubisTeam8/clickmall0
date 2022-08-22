class ErrorModel {
  ErrorModel({
      required this.status,
      required this.errNum,
      required this.msg,});

  ErrorModel.fromJson(dynamic json) {
    status = json['status'];
    errNum = json['errNum'];
    msg = json['msg'];
  }

  bool status = false;
  String errNum = '';
  String msg = '';

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['errNum'] = errNum;
    map['msg'] = msg;
    return map;
  }

}