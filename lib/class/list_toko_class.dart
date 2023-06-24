// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ListTokoClass {
  String CustId;
  String Name;
  String PhoneNo;
  String Address;
  String Received;
  String FailedReason;
  ListTokoClass({
    required this.CustId,
    required this.Name,
    required this.PhoneNo,
    required this.Address,
    required this.Received,
    required this.FailedReason,
  });

  ListTokoClass copyWith({
    String? CustId,
    String? Name,
    String? PhoneNo,
    String? Address,
    String? Received,
    String? FailedReason,
  }) {
    return ListTokoClass(
      CustId: CustId ?? this.CustId,
      Name: Name ?? this.Name,
      PhoneNo: PhoneNo ?? this.PhoneNo,
      Address: Address ?? this.Address,
      Received: Received ?? this.Received,
      FailedReason: FailedReason ?? this.FailedReason,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'CustId': CustId,
      'Name': Name,
      'PhoneNo': PhoneNo,
      'Address': Address,
      'Received': Received,
      'FailedReason': FailedReason,
    };
  }

  factory ListTokoClass.fromMap(Map<String, dynamic> map) {
    return ListTokoClass(
      CustId: map['CustId'] as String,
      Name: map['Name'] as String,
      PhoneNo: map['PhoneNo'] as String,
      Address: map['Address'] as String,
      Received: map['Received'] as String,
      FailedReason: map['FailedReason'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ListTokoClass.fromJson(String source) => ListTokoClass.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ListTokoClass(CustId: $CustId, Name: $Name, PhoneNo: $PhoneNo, Address: $Address, Received: $Received, FailedReason: $FailedReason)';
  }

  @override
  bool operator ==(covariant ListTokoClass other) {
    if (identical(this, other)) return true;
  
    return 
      other.CustId == CustId &&
      other.Name == Name &&
      other.PhoneNo == PhoneNo &&
      other.Address == Address &&
      other.Received == Received &&
      other.FailedReason == FailedReason;
  }

  @override
  int get hashCode {
    return CustId.hashCode ^
      Name.hashCode ^
      PhoneNo.hashCode ^
      Address.hashCode ^
      Received.hashCode ^
      FailedReason.hashCode;
  }
}
