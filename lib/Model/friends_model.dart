class Friend {
  final String name;
  final String email;
  final String phone;
  Friend({required this.name,required this.email, required this.phone});
  Map<String,dynamic> toJson(){
    return {
      'name': name,
      'email': email,
      'phone': phone,
    };
  }
}