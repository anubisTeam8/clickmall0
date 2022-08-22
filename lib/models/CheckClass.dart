class CheckClass {
  CheckClass({
      required this.status,
      required this.errNum,
      required this.msg,
      required this.num,});

  CheckClass.fromJson(dynamic json) {
    status = json['status'];
    errNum = json['errNum'];
    msg = json['msg'];
    num = json['num'];
  }
  bool? status;
  String? errNum;
  String? msg;
  int? num;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['errNum'] = errNum;
    map['msg'] = msg;
    map['num'] = num;
    return map;
  }

}