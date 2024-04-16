class Employee {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  Employee({this.id, this.email, this.firstName, this.lastName, this.avatar});

  Employee.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
  }
}



//  {
//       "id": 7,
//       "email": "michael.lawson@reqres.in",
//       "first_name": "Michael",
//       "last_name": "Lawson",
//       "avatar": "https://reqres.in/img/faces/7-image.jpg"
//     },