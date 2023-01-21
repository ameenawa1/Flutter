class Verify{
  String? email;
  int? verifycode;
  Verify({this.email,this.verifycode,});
  Map<String,dynamic> toJson()=>{
    "email":email,
    "verification_code":verifycode,
  };
  factory Verify.fromJson (Map<String,dynamic> json)=>
      Verify(
        email: json["email"],
      );


}