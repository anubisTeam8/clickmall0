/// status : true
/// errNum : "S000"
/// msg : "ss"
/// ads : [{"id":1,"photo":"","stute":"true","created_at":"2022-08-19T21:03:01.000000Z","updated_at":"2022-08-19T21:03:06.000000Z"}]
/// list_data : [{"date":{"id":1,"name_A":"شاورما","name_E":"shawrma","created_at":"2022-08-11T16:48:28.000000Z","updated_at":"2022-08-11T16:48:28.000000Z"},"Rest":[{"id":1,"name_A":"كنتاكي","name_E":"KFC","photo":"","phones":"01033953634,01033953634","loction":"30.094617584152832, 31.20419417032834","address":"24 st mohamed abss","Sec_id":1,"user_id":3,"created_at":"2022-08-11T16:59:10.000000Z","updated_at":"2022-08-11T16:59:10.000000Z"}]},{"date":{"id":2,"name_A":"مقهي","name_E":"Cafe","created_at":"2022-08-13T20:22:59.000000Z","updated_at":"2022-08-13T20:22:59.000000Z"},"Rest":[]},{"date":{"id":3,"name_A":"MAC","name_E":"ماك","created_at":"2022-08-13T23:14:19.000000Z","updated_at":"2022-08-13T23:14:19.000000Z"},"Rest":[]}]

class Page1Class {
  Page1Class({
      this.status, 
      this.errNum, 
      this.msg, 
      this.ads, 
      this.listData,});

  Page1Class.fromJson(dynamic json) {
    status = json['status'];
    errNum = json['errNum'];
    msg = json['msg'];
    if (json['ads'] != null) {
      ads = [];
      json['ads'].forEach((v) {
        ads?.add(Ads.fromJson(v));
      });
    }
    if (json['list_data'] != null) {
      listData = [];
      json['list_data'].forEach((v) {
        listData?.add(ListData.fromJson(v));
      });
    }
  }
  bool? status;
  String? errNum;
  String? msg;
  List<Ads>? ads;
  List<ListData>? listData;
Page1Class copyWith({  bool? status,
  String? errNum,
  String? msg,
  List<Ads>? ads,
  List<ListData>? listData,
}) => Page1Class(  status: status ?? this.status,
  errNum: errNum ?? this.errNum,
  msg: msg ?? this.msg,
  ads: ads ?? this.ads,
  listData: listData ?? this.listData,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['errNum'] = errNum;
    map['msg'] = msg;
    if (ads != null) {
      map['ads'] = ads?.map((v) => v.toJson()).toList();
    }
    if (listData != null) {
      map['list_data'] = listData?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// date : {"id":1,"name_A":"شاورما","name_E":"shawrma","created_at":"2022-08-11T16:48:28.000000Z","updated_at":"2022-08-11T16:48:28.000000Z"}
/// Rest : [{"id":1,"name_A":"كنتاكي","name_E":"KFC","photo":"","phones":"01033953634,01033953634","loction":"30.094617584152832, 31.20419417032834","address":"24 st mohamed abss","Sec_id":1,"user_id":3,"created_at":"2022-08-11T16:59:10.000000Z","updated_at":"2022-08-11T16:59:10.000000Z"}]

class ListData {
  ListData({
      this.date, 
      this.rest,});

  ListData.fromJson(dynamic json) {
    date = json['date'] != null ? Date.fromJson(json['date']) : null;
    if (json['Rest'] != null) {
      rest = [];
      json['Rest'].forEach((v) {
        rest?.add(Rest.fromJson(v));
      });
    }
  }
  Date? date;
  List<Rest>? rest;
ListData copyWith({  Date? date,
  List<Rest>? rest,
}) => ListData(  date: date ?? this.date,
  rest: rest ?? this.rest,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (date != null) {
      map['date'] = date?.toJson();
    }
    if (rest != null) {
      map['Rest'] = rest?.map((v) => v.toJson()).toList();
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

class Rest {
  Rest({
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

  Rest.fromJson(dynamic json) {
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
Rest copyWith({  num? id,
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
}) => Rest(  id: id ?? this.id,
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

/// id : 1
/// name_A : "شاورما"
/// name_E : "shawrma"
/// created_at : "2022-08-11T16:48:28.000000Z"
/// updated_at : "2022-08-11T16:48:28.000000Z"

class Date {
  Date({
      this.id, 
      this.nameA, 
      this.nameE, 
      this.createdAt, 
      this.updatedAt,});

  Date.fromJson(dynamic json) {
    id = json['id'];
    nameA = json['name_A'];
    nameE = json['name_E'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  num? id;
  String? nameA;
  String? nameE;
  String? createdAt;
  String? updatedAt;
Date copyWith({  num? id,
  String? nameA,
  String? nameE,
  String? createdAt,
  String? updatedAt,
}) => Date(  id: id ?? this.id,
  nameA: nameA ?? this.nameA,
  nameE: nameE ?? this.nameE,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name_A'] = nameA;
    map['name_E'] = nameE;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}

/// id : 1
/// photo : ""
/// stute : "true"
/// created_at : "2022-08-19T21:03:01.000000Z"
/// updated_at : "2022-08-19T21:03:06.000000Z"

class Ads {
  Ads({
      this.id, 
      this.photo, 
      this.stute, 
      this.createdAt, 
      this.updatedAt,});

  Ads.fromJson(dynamic json) {
    id = json['id'];
    photo = json['photo'];
    stute = json['stute'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  num? id;
  String? photo;
  String? stute;
  String? createdAt;
  String? updatedAt;
Ads copyWith({  num? id,
  String? photo,
  String? stute,
  String? createdAt,
  String? updatedAt,
}) => Ads(  id: id ?? this.id,
  photo: photo ?? this.photo,
  stute: stute ?? this.stute,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['photo'] = photo;
    map['stute'] = stute;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}