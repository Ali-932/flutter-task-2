import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_2/Contacts/phone_contacts.dart';
import 'create phone_page/page2.dart';
import 'model.dart';
class Numbers extends StatefulWidget {
  const Numbers({Key? key, this.Num}) : super(key: key);

  final Num;
  static String Phone_number = '';

  @override
  State<Numbers> createState() => _NumbersState();
}

class _NumbersState extends State<Numbers> {

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 160,bottom: 40),
            child: Text(Numbers.Phone_number + widget.Num,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                )),
          ),
          Container(margin: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.add,color: Color(0xff29cc83),size: 16,),
                TextButton(style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const save()),
                  );

                },
                  child: Text('Add to contact',style: TextStyle(
                    fontSize: 16,color: Color(0xff29cc83),
                  ),
                  ),
                )],
            ),
          ),
          Wrap(alignment: WrapAlignment.center,
            spacing: 41,
            runSpacing: 16,
            children:
            nums.buttons.map((e) =>  TextButton(
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10)),
                onPressed: () {
                  Numbers.Phone_number += '${e.number}';
                  setState(() {});
                },
                child: Column(
                  children: [
                    Text(
                      '${e.number}',
                      style: TextStyle(
                          fontSize: 36,
                          color: Colors.black87,
                        fontWeight: FontWeight.w300
                      ),
                    ),
                    Text(
                      '${e.abc}',style: TextStyle(
                        fontSize: 10,
                      color: Colors.black.withOpacity(0.4)
                    ),
                    )
                  ],
                )),
            ).toList()
            ,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20,horizontal: 65),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context) => const contacts()));
                },

                  icon:Icon(Icons.people_alt,size: 36,),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xff29cc83)
                  ),
                  child: Icon(Icons.phone,size: 30,color: Colors.white,),
                ),
                IconButton(onPressed: (){
                  Numbers.Phone_number=Numbers.Phone_number.substring(0,Numbers.Phone_number.length-1);
                setState(() {
                });
                  },
                    icon: Icon(Icons.backspace_outlined,size: 35,color: Colors.black.withOpacity(0.67),))


              ],
            ),
          )

        ]

    );

  }
}

