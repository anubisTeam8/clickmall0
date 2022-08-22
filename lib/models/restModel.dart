/// status : true
/// errNum : "S000"
/// msg : "ss"
/// Res : {"id":1,"name_A":"كنتاكي","name_E":"KFC","photo":"","phones":"01033953634,01033953634","loction":"30.094617584152832, 31.20419417032834","address":"24 st mohamed abss","Sec_id":1,"user_id":3,"created_at":"2022-08-11T16:59:10.000000Z","updated_at":"2022-08-11T16:59:10.000000Z","sections_name_A":"شاورما","sections_name_E":"shawrma"}
/// menu : [{"id":1,"name_A":"لحوم","name_E":"meet","photo":"photo","Res_id":1,"created_at":"2022-08-13T22:26:44.000000Z","updated_at":"2022-08-13T22:26:44.000000Z"}]
/// product : [{"id":1,"name_A":"ساندوتش لحمه","name_E":"Meat sandwich","price":200,"desc_A":"3 قطع ","desc_E":"3 pieces","photo":"link","menu_id":1,"created_at":"2022-08-13T22:28:42.000000Z","updated_at":"2022-08-13T22:28:42.000000Z"}]

class RestModel {
  RestModel({
      this.status, 
      this.errNum, 
      this.msg, 
      this.res, 
      this.menu, 
      this.product,});

  RestModel.fromJson(dynamic json) {
    status = json['status'];
    errNum = json['errNum'];
    msg = json['msg'];
    res = json['Res'] != null ? Res.fromJson(json['Res']) : null;
    if (json['menu'] != null) {
      menu = [];
      json['menu'].forEach((v) {
        menu?.add(Menu.fromJson(v));
      });
    }
    if (json['product'] != null) {
      product = [];
      json['product'].forEach((v) {
        product?.add(Product.fromJson(v));
      });
    }
  }
  bool? status;
  String? errNum;
  String? msg;
  Res? res;
  List<Menu>? menu;
  List<Product>? product;
RestModel copyWith({  bool? status,
  String? errNum,
  String? msg,
  Res? res,
  List<Menu>? menu,
  List<Product>? product,
}) => RestModel(  status: status ?? this.status,
  errNum: errNum ?? this.errNum,
  msg: msg ?? this.msg,
  res: res ?? this.res,
  menu: menu ?? this.menu,
  product: product ?? this.product,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['errNum'] = errNum;
    map['msg'] = msg;
    if (res != null) {
      map['Res'] = res?.toJson();
    }
    if (menu != null) {
      map['menu'] = menu?.map((v) => v.toJson()).toList();
    }
    if (product != null) {
      map['product'] = product?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// name_A : "ساندوتش لحمه"
/// name_E : "Meat sandwich"
/// price : 200
/// desc_A : "3 قطع "
/// desc_E : "3 pieces"
/// photo : "link"
/// menu_id : 1
/// created_at : "2022-08-13T22:28:42.000000Z"
/// updated_at : "2022-08-13T22:28:42.000000Z"

class Product {
  Product({
      this.id, 
      this.nameA, 
      this.nameE, 
      this.price, 
      this.descA, 
      this.descE, 
      this.photo, 
      this.menuId, 
      this.createdAt, 
      this.updatedAt,});

  Product.fromJson(dynamic json) {
    id = json['id'];
    nameA = json['name_A'];
    nameE = json['name_E'];
    price = json['price'];
    descA = json['desc_A'];
    descE = json['desc_E'];
    photo = json['photo'];
    menuId = json['menu_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  num? id;
  String? nameA;
  String? nameE;
  num? price;
  String? descA;
  String? descE;
  String? photo;
  num? menuId;
  String? createdAt;
  String? updatedAt;
Product copyWith({  num? id,
  String? nameA,
  String? nameE,
  num? price,
  String? descA,
  String? descE,
  String? photo,
  num? menuId,
  String? createdAt,
  String? updatedAt,
}) => Product(  id: id ?? this.id,
  nameA: nameA ?? this.nameA,
  nameE: nameE ?? this.nameE,
  price: price ?? this.price,
  descA: descA ?? this.descA,
  descE: descE ?? this.descE,
  photo: photo ?? this.photo,
  menuId: menuId ?? this.menuId,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name_A'] = nameA;
    map['name_E'] = nameE;
    map['price'] = price;
    map['desc_A'] = descA;
    map['desc_E'] = descE;
    map['photo'] = photo;
    map['menu_id'] = menuId;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}

/// id : 1
/// name_A : "لحوم"
/// name_E : "meet"
/// photo : "photo"
/// Res_id : 1
/// created_at : "2022-08-13T22:26:44.000000Z"
/// updated_at : "2022-08-13T22:26:44.000000Z"

class Menu {
  Menu({
      this.id, 
      this.nameA, 
      this.nameE, 
      this.photo, 
      this.resId, 
      this.createdAt, 
      this.updatedAt,});

  Menu.fromJson(dynamic json) {
    id = json['id'];
    nameA = json['name_A'];
    nameE = json['name_E'];
    photo = json['photo'];
    resId = json['Res_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  num? id;
  String? nameA;
  String? nameE;
  String? photo;
  num? resId;
  String? createdAt;
  String? updatedAt;
Menu copyWith({  num? id,
  String? nameA,
  String? nameE,
  String? photo,
  num? resId,
  String? createdAt,
  String? updatedAt,
}) => Menu(  id: id ?? this.id,
  nameA: nameA ?? this.nameA,
  nameE: nameE ?? this.nameE,
  photo: photo ?? this.photo,
  resId: resId ?? this.resId,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name_A'] = nameA;
    map['name_E'] = nameE;
    map['photo'] = photo;
    map['Res_id'] = resId;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
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
/// sections_name_A : "شاورما"
/// sections_name_E : "shawrma"

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
      this.updatedAt, 
      this.sectionsNameA, 
      this.sectionsNameE,});

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
    sectionsNameA = json['sections_name_A'];
    sectionsNameE = json['sections_name_E'];
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
  String? sectionsNameA;
  String? sectionsNameE;
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
  String? sectionsNameA,
  String? sectionsNameE,
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
  sectionsNameA: sectionsNameA ?? this.sectionsNameA,
  sectionsNameE: sectionsNameE ?? this.sectionsNameE,
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
    map['sections_name_A'] = sectionsNameA;
    map['sections_name_E'] = sectionsNameE;
    return map;
  }

}