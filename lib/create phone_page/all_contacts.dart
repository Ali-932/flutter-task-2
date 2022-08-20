import 'package:flutter/cupertino.dart';

class all_contacts{
  String contact_name;
  String contact_phone_number;
  IconData contact_icon;

  all_contacts({required this.contact_name, required this.contact_phone_number,required this.contact_icon});
  static List<all_contacts> contact_list=[];

}