class User {
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  String? confirmPassword;

  User({this.firstName,this.lastName,this.email,
    this.password,this.confirmPassword});
//for sending to backend
  Map<String,dynamic> toJson()=>{
    "first_name":firstName,
    "last_name":lastName,
     "email": email,
    "password": password,
    "password_confirmation" : confirmPassword,
  };
  //for res inf gtbon jason wbde rg3 user
  factory User.fromJson (Map<String,dynamic> json)=>
      User(
        firstName: json["first_name"],
          lastName: json["lastName"],
        email: json["email"],

      );
}