import 'package:shared_preferences/shared_preferences.dart';

void insertData(String email,String pass)
async{
  SharedPreferences shr1 =await SharedPreferences.getInstance();
  
  shr1.setString("email",email );
  shr1.setString("pass",pass );
}


Future<List<String>> readData()
async{
  SharedPreferences shr1 =await SharedPreferences.getInstance();

  String email = shr1.get("email").toString();
  String pass= shr1.get("pass").toString();

  return [email,pass];
}