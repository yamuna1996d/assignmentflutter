class RegisterModel{
  final String empname;
  final String empcode;
  final String company;
  final String email;
  final String phone;
  final String pass;

  RegisterModel({this.empname, this.empcode, this.company, this.email,
      this.phone, this.pass});

  factory RegisterModel.fromJson(Map<String,dynamic> json)
  {

    return RegisterModel(
      empname: json['empName'],
      empcode: json['empCode'],
      company: json['empCompany'],
      email:json['empEmail'],
      phone:json['empPhone'],
      pass:json['empPass']
    );
  }
  Map toMap()
  {
    var map=new Map<String,dynamic>();

    map["empName"]=empname;
    map["empCode"]=empcode;
    map["empCompany"]=company;
    map["empEmail"]=email;
    map["empPhone"]=phone;
    map["empPass"]=pass;
    return map;
  }
}