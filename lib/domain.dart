// To parse this JSON data, do
//
//     final domain = domainFromJson(jsonString);

import 'dart:convert';

Domain domainFromJson(String str) => Domain.fromJson(json.decode(str));

String domainToJson(Domain data) => json.encode(data.toJson());

class Domain {
    Domain({
        this.domainInfo,
    });

    DomainInfo? domainInfo;

    factory Domain.fromJson(Map<String, dynamic> json) => Domain(
        domainInfo: DomainInfo.fromJson(json["DomainInfo"]),
    );

    Map<String, dynamic> toJson() => {
        "DomainInfo": domainInfo?.toJson(),
    };
}

class DomainInfo {
    DomainInfo({
        this.domainAvailability,
        this.domainName,
    });

    String? domainAvailability;
    String? domainName;

    factory DomainInfo.fromJson(Map<String, dynamic> json) => DomainInfo(
        domainAvailability: json["domainAvailability"],
        domainName: json["domainName"],
    );

    Map<String, dynamic> toJson() => {
        "domainAvailability": domainAvailability,
        "domainName": domainName,
    };
}
