class ProductsModel {
  bool? success;
  String? message;
  List<Data>? data;

  ProductsModel({this.success, this.message, this.data});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  bool? onSale;
  int? salePercent;
  int? sold;
  bool? sliderNew;
  bool? sliderRecent;
  bool? sliderSold;
  String? date;
  String? title;
  Categories? categories;
  Subcat? subcat;
  Shop? shop;
  String? price;
  String? saleTitle;
  String? salePrice;
  String? description;
  String? color;
  String? size;
  bool? inWishlist;
  List<Images>? images;

  Data(
      {this.sId,
      this.onSale,
      this.salePercent,
      this.sold,
      this.sliderNew,
      this.sliderRecent,
      this.sliderSold,
      this.date,
      this.title,
      this.categories,
      this.subcat,
      this.shop,
      this.price,
      this.saleTitle,
      this.salePrice,
      this.description,
      this.color,
      this.size,
      this.inWishlist,
      this.images});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    onSale = json['on_sale'];
    salePercent = json['sale_percent'];
    sold = json['sold'];
    sliderNew = json['slider_new'];
    sliderRecent = json['slider_recent'];
    sliderSold = json['slider_sold'];
    date = json['date'];
    title = json['title'];
    categories = json['categories'] != null
        ? new Categories.fromJson(json['categories'])
        : null;
    subcat =
        json['subcat'] != null ? new Subcat.fromJson(json['subcat']) : null;
    shop = json['shop'] != null ? new Shop.fromJson(json['shop']) : null;
    price = json['price'];
    saleTitle = json['sale_title'];
    salePrice = json['sale_price'];
    description = json['description'];
    color = json['color'];
    size = json['size'];
    inWishlist = json['in_wishlist'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(new Images.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['on_sale'] = this.onSale;
    data['sale_percent'] = this.salePercent;
    data['sold'] = this.sold;
    data['slider_new'] = this.sliderNew;
    data['slider_recent'] = this.sliderRecent;
    data['slider_sold'] = this.sliderSold;
    data['date'] = this.date;
    data['title'] = this.title;
    if (this.categories != null) {
      data['categories'] = this.categories!.toJson();
    }
    if (this.subcat != null) {
      data['subcat'] = this.subcat!.toJson();
    }
    if (this.shop != null) {
      data['shop'] = this.shop!.toJson();
    }
    data['price'] = this.price;
    data['sale_title'] = this.saleTitle;
    data['sale_price'] = this.salePrice;
    data['description'] = this.description;
    data['color'] = this.color;
    data['size'] = this.size;
    data['in_wishlist'] = this.inWishlist;
    if (this.images != null) {
      data['images'] = this.images!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  String? sId;
  String? type;
  int? salePercent;
  String? date;
  String? name;
  String? image;

  Categories(
      {this.sId,
      this.type,
      this.salePercent,
      this.date,
      this.name,
      this.image});

  Categories.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    type = json['type'];
    salePercent = json['sale_percent'];
    date = json['date'];
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['type'] = this.type;
    data['sale_percent'] = this.salePercent;
    data['date'] = this.date;
    data['name'] = this.name;
    data['image'] = this.image;
    return data;
  }
}

class Subcat {
  String? sId;
  String? type;
  int? salePercent;
  String? date;
  String? name;

  Subcat({this.sId, this.type, this.salePercent, this.date, this.name});

  Subcat.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    type = json['type'];
    salePercent = json['sale_percent'];
    date = json['date'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['type'] = this.type;
    data['sale_percent'] = this.salePercent;
    data['date'] = this.date;
    data['name'] = this.name;
    return data;
  }
}

class Shop {
  String? sId;
  bool? isActive;
  String? createdAt;
  String? name;
  String? description;
  String? shopemail;
  String? shopaddress;
  String? shopcity;
  String? userid;
  String? image;

  Shop(
      {this.sId,
      this.isActive,
      this.createdAt,
      this.name,
      this.description,
      this.shopemail,
      this.shopaddress,
      this.shopcity,
      this.userid,
      this.image});

  Shop.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    isActive = json['is_active'];
    createdAt = json['created_At'];
    name = json['name'];
    description = json['description'];
    shopemail = json['shopemail'];
    shopaddress = json['shopaddress'];
    shopcity = json['shopcity'];
    userid = json['userid'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['is_active'] = this.isActive;
    data['created_At'] = this.createdAt;
    data['name'] = this.name;
    data['description'] = this.description;
    data['shopemail'] = this.shopemail;
    data['shopaddress'] = this.shopaddress;
    data['shopcity'] = this.shopcity;
    data['userid'] = this.userid;
    data['image'] = this.image;
    return data;
  }
}

class Images {
  String? id;
  String? url;

  Images({this.id, this.url});

  Images.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    return data;
  }
}
