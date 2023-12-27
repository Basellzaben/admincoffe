class allcoffemodel {



  String? id;
  String? name;
  String? phone;
  String? startDate;
  String? price;
  String? expierdate;
  String? active;



  allcoffemodel(
      {this.name,
        this.phone,
        this.id,
        this.startDate,
        this.expierdate,
        this.active,
        this.price});

  allcoffemodel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    startDate = json['startDate'];
    price = json['price'];
    expierdate = json['expierdate'];
    active = json['active'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id.toString();
    data['name'] = this.name.toString();
    data['phone'] = this.phone.toString();
    data['startDate'] = this.startDate.toString();
    data['price'] = this.price.toString();
    data['expierdate'] = this.expierdate.toString();
    data['active'] = this.active.toString();

    return data;
  }
}