import 'dart:ffi';

class Card {
  String? profileImage;
  String? name;
  String? job;
  String? about;
  String? email;
  String? address;
  String? phone1;
  String? phone2;
  String? facebook;
  String? instgram;
  String? linkedin;
  String? github;
  int? id;
  int? userid;
  Card({this.name,this.job,this.about,
    this.email,this.address,this.profileImage,
    this.phone1,this.phone2,this.facebook,
    this.instgram,this.linkedin,this.github,
    this.id,this.userid});
//for sending to backend
  Map<String,dynamic> toJson()=>{
    "displayname":name,
    "job_title":job,
    "profile_image":profileImage,
    "about": about,
    "email": email,
    "address": address,
    "phone_num1" : phone1,
    "phone_num2" : phone2,
    "facebook" : facebook,
    "instagram" : instgram,
    "linkedin" : linkedin,
    "github" : github,
    "id" : id,
    "user_id" : userid,

  };
  //for res inf gtbon jason wbde rg3 user
  factory Card.fromJson (Map<String,dynamic> json)=>
      Card(
        name: json["displayname"],
        job: json["job_title"],
        about: json["about"],
        email: json["email"],
        address: json["address"],
        phone1: json["phone_num1"],
        phone2: json["phone_num2"],
        facebook: json["facebook"],
        instgram: json["instagram"],
        linkedin: json["linkedin"],
        github: json["github"],
        id: json["id"],
        userid: json["user_id"],
          profileImage :json ["profile_image"],


      );
}