import 'package:flutter/material.dart';
import 'package:task_2/create%20phone_page/all_contacts.dart';
import 'package:task_2/widget.dart';
import 'package:task_2/Icon_generator.dart';
class save extends StatefulWidget {
  const save({Key? key}) : super(key: key);

  @override
  State<save> createState() => _saveState();
}
TextEditingController contact_controller = new TextEditingController();

class _saveState extends State<save> {
  IconData randomIcon=iicons.getRandomElement();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(left: 17, top: 13, right: 17),
        color: const Color(0xfff8fffd),
        child: Column(
          children: [ Row(
        children: [
        const Text('9:41',
            style: const TextStyle(color: Colors.black, fontSize: 18)),
        const Spacer(
          flex: 1,
        ),
        const Icon(
          Icons.wifi,
          size: 16,
          color: Colors.black,
        ),
        const Icon(
          Icons.network_cell,
          size: 16,
          color: Colors.black,
        ),
        const Icon(
          Icons.battery_6_bar_sharp,
          size: 16,
          color: Colors.black,
        ),
        ],
      ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    iconSize: 36,
                      onPressed: (){
                        randomIcon=iicons.getRandomElement();;
                        Numbers.Phone_number='';

                        contact_controller.clear();
                        setState(() {

                        });
                        Navigator.pop(context);} ,
                      icon :const Icon(Icons.playlist_remove_sharp,color: Colors.red ),
                  ),
                  const Text('Add to contact',style: const TextStyle(
                    color: Colors.black, fontSize: 20
                  ),),
                  IconButton(
                    iconSize: 36,
                    onPressed: (){
                      all_contacts.contact_list.add(all_contacts(contact_name: contact_controller.text, contact_phone_number: Numbers.Phone_number, contact_icon:randomIcon ));

                      randomIcon=iicons.getRandomElement();
                      Numbers.Phone_number='';
                      setState(() {
                      });
                      contact_controller.clear();
                      Navigator.pop(context);} ,
                    icon :const Icon(Icons.add_rounded,color: Colors.green ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
                child: Icon(randomIcon,size: 150,)),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 60,horizontal: 20),
              child: TextField(
                controller: contact_controller,
                style: const TextStyle(
                  fontSize: 20,
                ),

                decoration: const InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 2
                      )
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2
                    )
                  ),
                  hintText: 'Enter contact name',
                   labelText: 'Contact name'),
                ),
            ),
            Container(
              margin:const EdgeInsets.symmetric(horizontal: 20) ,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: const BoxDecoration(
                border: Border(
                  bottom: const BorderSide(
                    color: Colors.black38,
                    width: 1,
                  )
                  )
                ),

            child: Text('Mobile :-   ${Numbers.Phone_number}',style: const TextStyle(
              color: Colors.black87,
              fontSize: 24,
              fontWeight: FontWeight.w300

            ),),
              )

          ],
        ),
      ),
    );
  }
}
