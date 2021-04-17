class Product{
    int id;
    int categoryId;
    String productName;
    double unitPrice;
    int unitAge;
    String unitImage;

    Product(this.id, this.categoryId, this.productName, this.unitPrice, this.unitAge, this.unitImage);

    Product.fromJson(Map json){
      id = json["id"];
      categoryId = json["categoryId"];
      unitPrice = double.tryParse(json["unitPrice"].toString());
      unitAge = json["unitAge"];
      unitImage = json["unitImage"];
    }

    Map toJson(){
    return {
      "id": id,
      "categoryId": categoryId,
      "unitPrice": unitPrice,
      "unitAge": unitAge,
      "unitImage": unitImage
    };
  }
}