class UserModel {
  int? id;
  String? name;
  String? birthDate;
  int? age;
  int? gender;
  String? password;

  UserModel(
      {this.id,
        this.name,
        this.birthDate,
        this.age,
        this.gender,
        this.password});

  factory UserModel.fromJson(dynamic json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      birthDate: json['birthDate'],
      age: json['age'],
      gender: json['gender'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['birthDate'] = this.birthDate;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['password'] = this.password;
    return data;
  }
}