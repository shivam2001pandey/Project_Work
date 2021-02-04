import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseMethods{
//fetch  

getUserByUsername(String username) async
{
  print("inside getuser 2");
return await Firestore.instance.collection("users").where("name",isEqualTo: username).getDocuments();


}



//Upload user Info to cloud firestore storage
uploadUserInfo(userMap)
{
  Firestore.instance.collection("users").add(userMap);
}

}