// To parse this JSON data, do
//
//     final productsModel = productsModelFromJson(jsonString);

import 'dart:convert';

List<ProductsModel> productsModelFromJson(String str) => List<ProductsModel>.from(json.decode(str).map((x) => ProductsModel.fromJson(x)));

String productsModelToJson(List<ProductsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductsModel {
  ProductsModel({
    this.id,
    this.name,
    this.slug,
    this.permalink,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.type,
    this.status,
    this.featured,
    this.catalogVisibility,
    this.description,
    this.shortDescription,
    this.sku,
    this.price,
    this.regularPrice,
    this.salePrice,
    this.dateOnSaleFrom,
    this.dateOnSaleFromGmt,
    this.dateOnSaleTo,
    this.dateOnSaleToGmt,
    this.onSale,
    this.purchasable,
    this.totalSales,
    this.virtual,
    this.downloadable,
    this.downloads,
    this.downloadLimit,
    this.downloadExpiry,
    this.externalUrl,
    this.buttonText,
    this.taxStatus,
    this.taxClass,
    this.manageStock,
    this.stockQuantity,
    this.backorders,
    this.backordersAllowed,
    this.backordered,
    this.lowStockAmount,
    this.soldIndividually,
    this.weight,
    this.dimensions,
    this.shippingRequired,
    this.shippingTaxable,
    this.shippingClass,
    this.shippingClassId,
    this.reviewsAllowed,
    this.averageRating,
    this.ratingCount,
    this.upsellIds,
    this.crossSellIds,
    this.parentId,
    this.purchaseNote,
    this.categories,
    this.tags,
    this.images,
    this.attributes,
    this.defaultAttributes,
    this.variations,
    this.groupedProducts,
    this.menuOrder,
    this.priceHtml,
    this.relatedIds,
    this.metaData,
    this.stockStatus,
    this.hasOptions,
    this.links,
  });

  int? id;
  String? name;
  String? slug;
  String? permalink;
  DateTime? dateCreated;
  DateTime? dateCreatedGmt;
  DateTime? dateModified;
  DateTime? dateModifiedGmt;
  Type? type;
  Status? status;
  bool? featured;
  CatalogVisibility? catalogVisibility;
  String? description;
  String? shortDescription;
  String? sku;
  String? price;
  String? regularPrice;
  String? salePrice;
  dynamic dateOnSaleFrom;
  dynamic dateOnSaleFromGmt;
  dynamic dateOnSaleTo;
  dynamic dateOnSaleToGmt;
  bool? onSale;
  bool? purchasable;
  String? totalSales;
  bool? virtual;
  bool? downloadable;
  List<dynamic>? downloads;
  int? downloadLimit;
  int? downloadExpiry;
  String? externalUrl;
  String? buttonText;
  TaxStatus? taxStatus;
  String? taxClass;
  bool? manageStock;
  int? stockQuantity;
  Backorders? backorders;
  bool? backordersAllowed;
  bool? backordered;
  dynamic lowStockAmount;
  bool? soldIndividually;
  String? weight;
  Dimensions? dimensions;
  bool? shippingRequired;
  bool? shippingTaxable;
  String? shippingClass;
  int? shippingClassId;
  bool? reviewsAllowed;
  String? averageRating;
  int? ratingCount;
  List<dynamic>? upsellIds;
  List<dynamic>? crossSellIds;
  int? parentId;
  String? purchaseNote;
  List<Category>? categories;
  List<dynamic>? tags;
  List<Image>? images;
  List<Attribute>? attributes;
  List<DefaultAttribute>? defaultAttributes;
  List<int>? variations;
  List<dynamic>? groupedProducts;
  int? menuOrder;
  String? priceHtml;
  List<int>? relatedIds;
  List<MetaDatum>? metaData;
  StockStatus? stockStatus;
  bool? hasOptions;
  Links? links;

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    permalink: json["permalink"],
    dateCreated: json["date_created"] == null ? null : DateTime.parse(json["date_created"]),
    dateCreatedGmt: json["date_created_gmt"] == null ? null : DateTime.parse(json["date_created_gmt"]),
    dateModified: json["date_modified"] == null ? null : DateTime.parse(json["date_modified"]),
    dateModifiedGmt: json["date_modified_gmt"] == null ? null : DateTime.parse(json["date_modified_gmt"]),
    type: json["type"] == null ? null : typeValues.map![json["type"]],
    status: json["status"] == null ? null : statusValues.map![json["status"]],
    featured: json["featured"],
    catalogVisibility: json["catalog_visibility"] == null ? null : catalogVisibilityValues.map![json["catalog_visibility"]],
    description: json["description"],
    shortDescription: json["short_description"],
    sku: json["sku"],
    price: json["price"],
    regularPrice: json["regular_price"],
    salePrice: json["sale_price"],
    dateOnSaleFrom: json["date_on_sale_from"],
    dateOnSaleFromGmt: json["date_on_sale_from_gmt"],
    dateOnSaleTo: json["date_on_sale_to"],
    dateOnSaleToGmt: json["date_on_sale_to_gmt"],
    onSale: json["on_sale"],
    purchasable: json["purchasable"],
    totalSales: json["total_sales"].toString(),
    virtual: json["virtual"],
    downloadable: json["downloadable"],
    downloads: json["downloads"] == null ? null : List<dynamic>.from(json["downloads"].map((x) => x)),
    downloadLimit: json["download_limit"],
    downloadExpiry: json["download_expiry"],
    externalUrl: json["external_url"],
    buttonText: json["button_text"],
    taxStatus: json["tax_status"] == null ? null : taxStatusValues.map![json["tax_status"]],
    taxClass: json["tax_class"],
    manageStock: json["manage_stock"],
    stockQuantity: json["stock_quantity"],
    backorders: json["backorders"] == null ? null : backordersValues.map![json["backorders"]],
    backordersAllowed: json["backorders_allowed"],
    backordered: json["backordered"],
    lowStockAmount: json["low_stock_amount"],
    soldIndividually: json["sold_individually"],
    weight: json["weight"],
    dimensions: json["dimensions"] == null ? null : Dimensions.fromJson(json["dimensions"]),
    shippingRequired: json["shipping_required"],
    shippingTaxable: json["shipping_taxable"],
    shippingClass: json["shipping_class"],
    shippingClassId: json["shipping_class_id"],
    reviewsAllowed: json["reviews_allowed"],
    averageRating: json["average_rating"],
    ratingCount: json["rating_count"],
    upsellIds: json["upsell_ids"] == null ? null : List<dynamic>.from(json["upsell_ids"].map((x) => x)),
    crossSellIds: json["cross_sell_ids"] == null ? null : List<dynamic>.from(json["cross_sell_ids"].map((x) => x)),
    parentId: json["parent_id"],
    purchaseNote: json["purchase_note"],
    categories: json["categories"] == null ? null : List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
    tags: json["tags"] == null ? null : List<dynamic>.from(json["tags"].map((x) => x)),
    images: json["images"] == null ? null : List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    attributes: json["attributes"] == null ? null : List<Attribute>.from(json["attributes"].map((x) => Attribute.fromJson(x))),
    defaultAttributes: json["default_attributes"] == null ? null : List<DefaultAttribute>.from(json["default_attributes"].map((x) => DefaultAttribute.fromJson(x))),
    variations: json["variations"] == null ? null : List<int>.from(json["variations"].map((x) => x)),
    groupedProducts: json["grouped_products"] == null ? null : List<dynamic>.from(json["grouped_products"].map((x) => x)),
    menuOrder: json["menu_order"],
    priceHtml: json["price_html"],
    relatedIds: json["related_ids"] == null ? null : List<int>.from(json["related_ids"].map((x) => x)),
    metaData: json["meta_data"] == null ? null : List<MetaDatum>.from(json["meta_data"].map((x) => MetaDatum.fromJson(x))),
    stockStatus: json["stock_status"] == null ? null : stockStatusValues.map![json["stock_status"]],
    hasOptions: json["has_options"],
    links: json["_links"] == null ? null : Links.fromJson(json["_links"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "slug": slug,
    "permalink": permalink,
    "date_created": dateCreated == null ? null : dateCreated!.toIso8601String(),
    "date_created_gmt": dateCreatedGmt == null ? null : dateCreatedGmt!.toIso8601String(),
    "date_modified": dateModified == null ? null : dateModified!.toIso8601String(),
    "date_modified_gmt": dateModifiedGmt == null ? null : dateModifiedGmt!.toIso8601String(),
    "type": type == null ? null : typeValues.reverse![type],
    "status": status == null ? null : statusValues.reverse![status],
    "featured": featured,
    "catalog_visibility": catalogVisibility == null ? null : catalogVisibilityValues.reverse![catalogVisibility],
    "description": description,
    "short_description": shortDescription,
    "sku": sku,
    "price": price,
    "regular_price": regularPrice,
    "sale_price": salePrice,
    "date_on_sale_from": dateOnSaleFrom,
    "date_on_sale_from_gmt": dateOnSaleFromGmt,
    "date_on_sale_to": dateOnSaleTo,
    "date_on_sale_to_gmt": dateOnSaleToGmt,
    "on_sale": onSale,
    "purchasable": purchasable,
    "total_sales": totalSales,
    "virtual": virtual,
    "downloadable": downloadable,
    "downloads": downloads == null ? null : List<dynamic>.from(downloads!.map((x) => x)),
    "download_limit": downloadLimit,
    "download_expiry": downloadExpiry,
    "external_url": externalUrl,
    "button_text": buttonText,
    "tax_status": taxStatus == null ? null : taxStatusValues.reverse![taxStatus],
    "tax_class": taxClass,
    "manage_stock": manageStock,
    "stock_quantity": stockQuantity,
    "backorders": backorders == null ? null : backordersValues.reverse![backorders],
    "backorders_allowed": backordersAllowed,
    "backordered": backordered,
    "low_stock_amount": lowStockAmount,
    "sold_individually": soldIndividually,
    "weight": weight,
    "dimensions": dimensions == null ? null : dimensions!.toJson(),
    "shipping_required": shippingRequired,
    "shipping_taxable": shippingTaxable,
    "shipping_class": shippingClass,
    "shipping_class_id": shippingClassId,
    "reviews_allowed": reviewsAllowed,
    "average_rating": averageRating,
    "rating_count": ratingCount,
    "upsell_ids": upsellIds == null ? null : List<dynamic>.from(upsellIds!.map((x) => x)),
    "cross_sell_ids": crossSellIds == null ? null : List<dynamic>.from(crossSellIds!.map((x) => x)),
    "parent_id": parentId,
    "purchase_note": purchaseNote,
    "categories": categories == null ? null : List<dynamic>.from(categories!.map((x) => x.toJson())),
    "tags": tags == null ? null : List<dynamic>.from(tags!.map((x) => x)),
    "images": images == null ? null : List<dynamic>.from(images!.map((x) => x.toJson())),
    "attributes": attributes == null ? null : List<dynamic>.from(attributes!.map((x) => x.toJson())),
    "default_attributes": defaultAttributes == null ? null : List<dynamic>.from(defaultAttributes!.map((x) => x.toJson())),
    "variations": variations == null ? null : List<dynamic>.from(variations!.map((x) => x)),
    "grouped_products": groupedProducts == null ? null : List<dynamic>.from(groupedProducts!.map((x) => x)),
    "menu_order": menuOrder,
    "price_html": priceHtml,
    "related_ids": relatedIds == null ? null : List<dynamic>.from(relatedIds!.map((x) => x)),
    "meta_data": metaData == null ? null : List<dynamic>.from(metaData!.map((x) => x.toJson())),
    "stock_status": stockStatus == null ? null : stockStatusValues.reverse![stockStatus],
    "has_options": hasOptions,
    "_links": links == null ? null : links!.toJson(),
  };
}

class Attribute {
  Attribute({
    this.id,
    this.name,
    this.position,
    this.visible,
    this.variation,
    this.options,
  });

  int? id;
  String? name;
  int? position;
  bool? visible;
  bool? variation;
  List<String>? options;

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
    id: json["id"],
    name: json["name"],
    position: json["position"],
    visible: json["visible"],
    variation: json["variation"],
    options: json["options"] == null ? null : List<String>.from(json["options"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "position": position,
    "visible": visible,
    "variation": variation,
    "options": options == null ? null : List<dynamic>.from(options!.map((x) => x)),
  };
}

enum Backorders { NO }

final backordersValues = EnumValues({
  "no": Backorders.NO
});

enum CatalogVisibility { VISIBLE }

final catalogVisibilityValues = EnumValues({
  "visible": CatalogVisibility.VISIBLE
});

class Category {
  Category({
    this.id,
    this.name,
    this.slug,
  });

  int? id;
  String? name;
  String? slug;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    name: json["name"] == null ? null : json["name"],
    slug: json["slug"] == null ? null : json["slug"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name == null ? null : nameValues.reverse![name],
    "slug": slug == null ? null : slugValues.reverse![slug],
  };
}

enum Name { POTS_AND_PLANTERS, NEW_ARRIVALS }

final nameValues = EnumValues({
  "New Arrivals": Name.NEW_ARRIVALS,
  "Pots and Planters": Name.POTS_AND_PLANTERS
});

enum Slug { POTS_AND_PLANTERS, NEWARRIVALS }

final slugValues = EnumValues({
  "newarrivals": Slug.NEWARRIVALS,
  "pots-and-planters": Slug.POTS_AND_PLANTERS
});

class DefaultAttribute {
  DefaultAttribute({
    this.id,
    this.name,
    this.option,
  });

  int? id;
  String? name;
  String? option;

  factory DefaultAttribute.fromJson(Map<String, dynamic> json) => DefaultAttribute(
    id: json["id"],
    name: json["name"],
    option: json["option"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "option": option,
  };
}

class Dimensions {
  Dimensions({
    this.length,
    this.width,
    this.height,
  });

  String? length;
  String? width;
  String? height;

  factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
    length: json["length"],
    width: json["width"],
    height: json["height"],
  );

  Map<String, dynamic> toJson() => {
    "length": length,
    "width": width,
    "height": height,
  };
}

class Image {
  Image({
    this.id,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.src,
    this.name,
    this.alt,
  });

  int? id;
  DateTime? dateCreated;
  DateTime? dateCreatedGmt;
  DateTime? dateModified;
  DateTime? dateModifiedGmt;
  String? src;
  String? name;
  String? alt;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    id: json["id"],
    dateCreated: json["date_created"] == null ? null : DateTime.parse(json["date_created"]),
    dateCreatedGmt: json["date_created_gmt"] == null ? null : DateTime.parse(json["date_created_gmt"]),
    dateModified: json["date_modified"] == null ? null : DateTime.parse(json["date_modified"]),
    dateModifiedGmt: json["date_modified_gmt"] == null ? null : DateTime.parse(json["date_modified_gmt"]),
    src: json["src"],
    name: json["name"],
    alt: json["alt"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "date_created": dateCreated == null ? null : dateCreated!.toIso8601String(),
    "date_created_gmt": dateCreatedGmt == null ? null : dateCreatedGmt!.toIso8601String(),
    "date_modified": dateModified == null ? null : dateModified!.toIso8601String(),
    "date_modified_gmt": dateModifiedGmt == null ? null : dateModifiedGmt!.toIso8601String(),
    "src": src,
    "name": name,
    "alt": alt,
  };
}

class Links {
  Links({
    this.self,
    this.collection,
  });

  List<Collection>? self;
  List<Collection>? collection;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    self: json["self"] == null ? null : List<Collection>.from(json["self"].map((x) => Collection.fromJson(x))),
    collection: json["collection"] == null ? null : List<Collection>.from(json["collection"].map((x) => Collection.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "self": self == null ? null : List<dynamic>.from(self!.map((x) => x.toJson())),
    "collection": collection == null ? null : List<dynamic>.from(collection!.map((x) => x.toJson())),
  };
}

class Collection {
  Collection({
    this.href,
  });

  String? href;

  factory Collection.fromJson(Map<String, dynamic> json) => Collection(
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "href": href,
  };
}

class MetaDatum {
  MetaDatum({
    this.id,
    this.key,
    this.value,
  });

  int? id;
  String? key;
  dynamic value;

  factory MetaDatum.fromJson(Map<String, dynamic> json) => MetaDatum(
    id: json["id"],
    key: json["key"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "key": key,
    "value": value,
  };
}

class ValueClass {
  ValueClass({
    this.ae,
    this.css,
    this.js,
    this.currentBlockList,
    this.uagFlag,
    this.uagVersion,
    this.gfonts,
    this.uagFaqLayout,
  });

  String? ae;
  String? css;
  String? js;
  List<dynamic>? currentBlockList;
  bool? uagFlag;
  String? uagVersion;
  List<dynamic>? gfonts;
  bool? uagFaqLayout;

  factory ValueClass.fromJson(Map<String, dynamic> json) => ValueClass(
    ae: json["AE"],
    css: json["css"],
    js: json["js"],
    currentBlockList: json["current_block_list"] == null ? null : List<dynamic>.from(json["current_block_list"].map((x) => x)),
    uagFlag: json["uag_flag"],
    uagVersion: json["uag_version"],
    gfonts: json["gfonts"] == null ? null : List<dynamic>.from(json["gfonts"].map((x) => x)),
    uagFaqLayout: json["uag_faq_layout"],
  );

  Map<String, dynamic> toJson() => {
    "AE": ae,
    "css": css,
    "js": js,
    "current_block_list": currentBlockList == null ? null : List<dynamic>.from(currentBlockList!.map((x) => x)),
    "uag_flag": uagFlag,
    "uag_version": uagVersion,
    "gfonts": gfonts == null ? null : List<dynamic>.from(gfonts!.map((x) => x)),
    "uag_faq_layout": uagFaqLayout,
  };
}

enum Status { PUBLISH }

final statusValues = EnumValues({
  "publish": Status.PUBLISH
});

enum StockStatus { INSTOCK, OUTOFSTOCK }

final stockStatusValues = EnumValues({
  "instock": StockStatus.INSTOCK,
  "outofstock": StockStatus.OUTOFSTOCK
});

enum TaxStatus { TAXABLE }

final taxStatusValues = EnumValues({
  "taxable": TaxStatus.TAXABLE
});

enum Type { VARIABLE, SIMPLE }

final typeValues = EnumValues({
  "simple": Type.SIMPLE,
  "variable": Type.VARIABLE
});

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map!.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
