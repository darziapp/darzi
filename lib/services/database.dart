import 'package:cloud_firestore/cloud_firestore.dart';


class DatabaseService{

    //TAILOR MODULE

  final String uid;
  DatabaseService({this.uid});

  //collection reference
  final CollectionReference tailorscollection = Firestore.instance.collection('narmada');
  
  Future updatetailorsdata(String firstname,String lastname,String email,String mobileno,String password) async {
    return await tailorscollection.document(uid).setData({
      'First Name':firstname,
      'Last Name':lastname,
      'Email':email,
      'Mobile Number':mobileno,
      'Password':password
    });
  }
  Future tailordata(shopname,contactno,specilization,dropdownvalue,_shopaddress,_city,currentItemSelected,_country,_pincode)async{
    return await tailorscollection.document(uid).updateData({
      'Shop Name':shopname,
      'Contact No':contactno,
      'Specilization':specilization,
      'Stitching done for':dropdownvalue,
      'Shopaddress':_shopaddress,
      'City':_city,
      'State':currentItemSelected,
      'Country':_country,
      'Pincode':_pincode,
    });
  }

  Future tailordataextra(_ubsprice,_lbsprice,_fbsprice,_ubsprice1,_lbsprice1,_fbsprice1)async{
    return await tailorscollection.document(uid).updateData({
      'Gents Upper Body Stitching Price':_ubsprice,
      'Gents Lower Body Stitching Price':_lbsprice,
      'Gents Full Body Stitching Price':_fbsprice,
      'Ladies Upper Body Stitching Price':_ubsprice1,
      'Ladies Lower Body Stitching Price':_lbsprice1,
      'Ladies Full Body Stitching Price':_fbsprice1
    });
  }


 // tailors list from snapshot
  // List<Tailor> _tailorslistfromsnapshot(QuerySnapshot snapshot){
  //   return snapshot.documents.map((doc){
  //     return Tailors(
  //       firstname:doc.data['name'] ?? '',
  //       lastname: doc.data['lastname'] ?? '',
  //       email: doc.data['email'] ?? '',
  //       mobileno: doc.data['mobileno'] ?? 0
  //     );
  //   }).toList();
  // }

  // //get tailors data
  // Stream<List<Tailor>> get tailorsdata{
  //   return tailorscollection.snapshots().map(_tailorslistfromsnapshot);
  // }

  //CUSTOMER MODULE

  //collection reference

  final CollectionReference customerscollection = Firestore.instance.collection('customers');

  Future updatecustomersdata(String firstname,String lastname,String email,String mobileno) async {
    return await customerscollection.document(uid).setData({
      'First Name':firstname,
      'Last Name':lastname,
      'Email':email,
      'Mobile Number':mobileno,
    });
  }

}