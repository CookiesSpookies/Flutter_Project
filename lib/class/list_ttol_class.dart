// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ListTTOLClass {
  String CustId;
  String Name;
  String TTOTTPNo;
  ListTTOLClass({
    required this.CustId,
    required this.Name,
    required this.TTOTTPNo,
  });

  ListTTOLClass copyWith({
    String? CustId,
    String? Name,
    String? TTOTTPNo,
  }) {
    return ListTTOLClass(
      CustId: CustId ?? this.CustId,
      Name: Name ?? this.Name,
      TTOTTPNo: TTOTTPNo ?? this.TTOTTPNo,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'CustId': CustId,
      'Name': Name,
      'TTOTTPNo': TTOTTPNo,
    };
  }

  factory ListTTOLClass.fromMap(Map<String, dynamic> map) {
    return ListTTOLClass(
      CustId: map['CustId'] as String,
      Name: map['Name'] as String,
      TTOTTPNo: map['TTOTTPNo'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ListTTOLClass.fromJson(String source) =>
      ListTTOLClass.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'ListTTOLClass(CustId: $CustId, Name: $Name, TTOTTPNo: $TTOTTPNo)';

  @override
  bool operator ==(covariant ListTTOLClass other) {
    if (identical(this, other)) return true;

    return other.CustId == CustId &&
        other.Name == Name &&
        other.TTOTTPNo == TTOTTPNo;
  }

  @override
  int get hashCode => CustId.hashCode ^ Name.hashCode ^ TTOTTPNo.hashCode;
}
