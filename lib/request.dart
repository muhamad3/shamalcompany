class Request {
  String? productname;
  String? username;
  String? notes;
  String? quantity;
  String? phonenumber;

  Request({this.notes, this.username, this.productname,this.quantity,this.phonenumber});

      static Request fromJson(Map<String,dynamic>json) => Request(
        username:json['username'],
        productname:json['productname'],
        notes:json['notes'],
        quantity:json['quantity'],
        phonenumber:json['phonenumber'],
      );
}