// To parse this JSON data, do
//
//     final Post = PostFromJson(jsonString);

import 'dart:convert';

Post postFromJson(String str) => Post.fromJson(json.decode(str));

String postToJson(Post data) => json.encode(data.toJson());

class Post {
    Post({
        this.id,
        this.name,
        this.username,
        this.email,
        this.phone,
        this.website,
    });

    int? id;
    String? name;
    String? username;
    String? email;
    String? phone;
    String? website;

    factory Post.fromJson( dynamic json) => Post(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        phone: json["phone"],
        website: json["website"],
    );

        dynamic toJson() => {
        "id": id,
        "name": name,
        "username": username,
        "email": email,
        "phone": phone,
        "website": website,
    };
}
