<<<<<<< HEAD
=======
import 'card.dart';

>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
class User {
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  String? confirmPassword;
<<<<<<< HEAD

  User({this.firstName,this.lastName,this.email,
    this.password,this.confirmPassword});
//for sending to backend
=======
 Card? card;
 List<User>?contacts;
  User({this.firstName,this.lastName,this.email,this.card,this.contacts,
    this.password,this.confirmPassword});
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
  Map<String,dynamic> toJson()=>{
    "first_name":firstName,
    "last_name":lastName,
     "email": email,
    "password": password,
    "password_confirmation" : confirmPassword,
  };
<<<<<<< HEAD
  //for res inf gtbon jason wbde rg3 user
=======

>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21
  factory User.fromJson (Map<String,dynamic> json)=>
      User(
        firstName: json["first_name"],
          lastName: json["lastName"],
        email: json["email"],
<<<<<<< HEAD
=======
        card:  json["card"]!=null?Card.fromJson(json['card']):null,
        contacts: json['contacts']!=null?
          List<User>.of(json['contacts'].map<User>((val)=>User.fromJson(val))):
          null
>>>>>>> 227f52eb858db42c592cb0ba02adba7f59af3b21

      );
}