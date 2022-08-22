/// status : true
/// errNum : "S000"
/// msg : "ss"
/// Res : [{"id":1,"name_A":"كنتاكي","name_E":"KFC","photo":"","phones":"01033953634,01033953634","loction":"30.094617584152832, 31.20419417032834","address":"24 st mohamed abss","Sec_id":1,"user_id":3,"created_at":"2022-08-11T16:59:10.000000Z","updated_at":"2022-08-11T16:59:10.000000Z"}]

class ViewallModel {
  ViewallModel({
      this.status, 
      this.errNum, 
      this.msg, 
      this.res,});

  ViewallModel.fromJson(dynamic json) {
    status = json['status'];
    errNum = json['errNum'];
    msg = json['msg'];
    if (json['Res'] != null) {
      res = [];
      json['Res'].forEach((v) {
        res?.add(Res.fromJson(v));
      });
    }
  }
  bool? status;
  String? errNum;
  String? msg;
  List<Res>? res;
ViewallModel copyWith({  bool? status,
  String? errNum,
  String? msg,
  List<Res>? res,
}) => ViewallModel(  status: status ?? this.status,
  errNum: errNum ?? this.errNum,
  msg: msg ?? this.msg,
  res: res ?? this.res,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['errNum'] = errNum;
    map['msg'] = msg;
    if (res != null) {
      map['Res'] = res?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// name_A : "كنتاكي"
/// name_E : "KFC"
/// photo : ""
/// phones : "01033953634,01033953634"
/// loction : "30.094617584152832, 31.20419417032834"
/// address : "24 st mohamed abss"
/// Sec_id : 1
/// user_id : 3
/// created_at : "2022-08-11T16:59:10.000000Z"
/// updated_at : "2022-08-11T16:59:10.000000Z"

class Res {
  Res({
      this.id, 
      this.nameA, 
      this.nameE, 
      this.photo, 
      this.phones, 
      this.loction, 
      this.address, 
      this.secId, 
      this.userId, 
      this.createdAt, 
      this.updatedAt,});

  Res.fromJson(dynamic json) {
    id = json['id'];
    nameA = json['name_A'];
    nameE = json['name_E'];
    photo = json['photo'];
    phones = json['phones'];
    loction = json['loction'];
    address = json['address'];
    secId = json['Sec_id'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  num? id;
  String? nameA;
  String? nameE;
  String? photo;
  String? phones;
  String? loction;
  String? address;
  num? secId;
  num? userId;
  String? createdAt;
  String? updatedAt;
Res copyWith({  num? id,
  String? nameA,
  String? nameE,
  String? photo,
  String? phones,
  String? loction,
  String? address,
  num? secId,
  num? userId,
  String? createdAt,
  String? updatedAt,
}) => Res(  id: id ?? this.id,
  nameA: nameA ?? this.nameA,
  nameE: nameE ?? this.nameE,
  photo: photo ?? this.photo,
  phones: phones ?? this.phones,
  loction: loction ?? this.loction,
  address: address ?? this.address,
  secId: secId ?? this.secId,
  userId: userId ?? this.userId,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name_A'] = nameA;
    map['name_E'] = nameE;
    map['photo'] = photo;
    map['phones'] = phones;
    map['loction'] = loction;
    map['address'] = address;
    map['Sec_id'] = secId;
    map['user_id'] = userId;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}