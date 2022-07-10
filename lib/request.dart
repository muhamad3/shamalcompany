class Request {
  String? productname;
  String? username;
  String? notes;
  String? quantity;
  String? phonenumber;
  String? date;

  Request({this.notes,this.date, this.username, this.productname,this.quantity,this.phonenumber});

      static Request fromJson(Map<String,dynamic>json) => Request(
        username:json['username'],
        productname:json['productname'],
        notes:json['notes'],
        date:json['date'],
        quantity:json['quantity'],
        phonenumber:json['phonenumber'],
      );
}