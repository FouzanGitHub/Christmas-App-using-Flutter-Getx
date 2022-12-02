// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';



class Model {
  final String Img;
  final String Name;
  final String Title;
  final String Detail;
  final int id;
  Model({
    required this.Img,
    required this.Name,
    required this.Title,
    required this.Detail,
    required this.id,
  });

  Model copyWith({
    String? Img,
    String? Name,
    String? Title,
    String? Detail,
    int? id,
  }) {
    return Model(
      Img: Img ?? this.Img,
      Name: Name ?? this.Name,
      Title: Title ?? this.Title,
      Detail: Detail ?? this.Detail,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'Img': Img,
      'Name': Name,
      'Title': Title,
      'Detail': Detail,
      'id': id,
    };
  }

  factory Model.fromMap(Map<String, dynamic> map) {
    return Model(
      Img: map['Img'] as String,
      Name: map['Name'] as String,
      Title: map['Title'] as String,
      Detail: map['Detail'] as String,
      id: map['id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Model.fromJson(String source) => Model.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DataModel(Img: $Img, Name: $Name, Title: $Title, Detail: $Detail, id: $id)';
  }

  @override
  bool operator ==(covariant Model other) {
    if (identical(this, other)) return true;
  
    return 
      other.Img == Img &&
      other.Name == Name &&
      other.Title == Title &&
      other.Detail == Detail &&
      other.id == id;
  }

  @override
  int get hashCode {
    return Img.hashCode ^
      Name.hashCode ^
      Title.hashCode ^
      Detail.hashCode ^
      id.hashCode;
  }
}
