import 'package:flutter/material.dart';
import 'package:task_2/create phone_page/all_contacts.dart';
class contacts extends StatefulWidget {
  const contacts({Key? key}) : super(key: key);

  @override
  State<contacts> createState() => _contactsState();
}

class _contactsState extends State<contacts> {
  @override
  int grid =1;
  double aspect_ratio=5;
  bool grid_state = false;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          padding: EdgeInsets.only(left: 17, top: 13, right: 17),
          color: Color(0xfff8fffd),
          child: Stack(
            children:[ Column(
            children: [
              Row(
                children: [
                  Text('9:41',
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                  Spacer(
                    flex: 1,
                  ),
                  Icon(
                    Icons.wifi,
                    size: 16,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.network_cell,
                    size: 16,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.battery_6_bar_sharp,
                    size: 16,
                    color: Colors.black,
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 30,left: 10),
                child: IconButton(onPressed:(){ Navigator.pop(context);},
                    icon: const Icon(Icons.arrow_back_ios,size: 30,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top:40.0,left: 10),
                child: Row(
                  children: [
                    Text('Contacts',style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w400,
                      fontSize: 28
                    ),),
                    Spacer(),
                    IconButton(onPressed: (){
                      grid=2;
                      aspect_ratio=2;
                      grid_state=true;
                      setState(() {
                      });
                    }, icon: Icon(Icons.grid_view,
                      color: grid_state==false? Colors.black.withOpacity(0.25) : Colors.black ,),
                      iconSize: 36,
                    ),
                    IconButton(onPressed: (){
                      grid=1;
                      aspect_ratio=5;

                      grid_state=false;
                      setState(() {
                      });
                    }, icon: Icon(Icons.list,
                      color: grid_state==true? Colors.black.withOpacity(0.25) : Colors.black ,),
                      iconSize: 36,
                    ),
                  ],
                )),

                    GridView.count(
                          crossAxisCount:grid ,
                        shrinkWrap: true,
                      childAspectRatio: aspect_ratio,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                        children: all_contacts.contact_list.map((e) => Container(
                          child: Row(
                            children: [
                              Expanded(child: Icon(e.contact_icon,size:30)),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: EdgeInsets.only(left: 10,top: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: grid_state==false? EdgeInsets.only(top: 7):EdgeInsets.zero,
                                          child: Text(e.contact_name,style: TextStyle(
                                            fontSize: 20,color: Colors.black,
                                            fontWeight: FontWeight.w400
                                          ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: grid_state==true? EdgeInsets.only(top: 10):EdgeInsets.zero,
                                          child: Text(e.contact_phone_number,style: TextStyle(
                                            fontSize: 15,color: Colors.black.withOpacity(0.5)
                                          ),),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Expanded(child: Icon(Icons.phone,color: Colors.green,size: 30,))
                            ],
                          ),
                        )).toList(),

                    ),

            ],
                ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                margin: EdgeInsets.only(top: 720,left: 80,right: 80),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  boxShadow:[ BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 15,
                    offset: Offset(0, 3), // changes position of shadow
                  ),]

                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.people_alt_outlined,size: 30,),
                    Icon(Icons.settings_outlined,size: 30,)
                  ],
                ),
              )
          ]),
            )

          ),
    );

}}
