import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddCoffe extends StatefulWidget {
  @override
  State<AddCoffe> createState() => _AddCoffeState();
}

class _AddCoffeState extends State<AddCoffe> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final nameC = TextEditingController();
  final name = TextEditingController();
  final phone = TextEditingController();


  final username = TextEditingController();
  final passwordd = TextEditingController();
  final location = TextEditingController();
  final startDate = TextEditingController();
  final expierdate = TextEditingController();
  final price = TextEditingController();




  @override
  Widget build(BuildContext context) {
    double unitHeightValue = MediaQuery
        .of(context)
        .size
        .height * 0.00122;
    var stops = [ 0.0, 1.00];

    return Stack(children: <Widget>[
      Image.asset(
        "assets/backgroundhinfo.png",
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        fit: BoxFit.cover,
      ),
      Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text('تعريف العملاء',style: TextStyle(color: Colors.white),),
          ),
          // backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(children: [
              SizedBox(height: 10,),
              Container(
                  margin: EdgeInsets.only(
                      left: 25, right: 25, top: 10),
                  child: TextField(
                    controller: nameC,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 0.0),
                          borderRadius:
                          BorderRadius.circular(10.0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.0),
                          borderRadius:
                          BorderRadius.circular(10.0)),
                      contentPadding: EdgeInsets.only(
                          top: 18,
                          bottom: 18,
                          right: 20,
                          left: 20),
                      fillColor:
                     Colors.white,
                      filled: true,
                      hintText:  "اسم المحل",
                    ),
                  )),
              Container(
                  margin: EdgeInsets.only(
                      left: 25, right: 25, top: 10),
                  child: TextField(
                    controller: name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 0.0),
                          borderRadius:
                          BorderRadius.circular(10.0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.0),
                          borderRadius:
                          BorderRadius.circular(10.0)),
                      contentPadding: EdgeInsets.only(
                          top: 18,
                          bottom: 18,
                          right: 20,
                          left: 20),
                      fillColor:
                      Colors.white,
                      filled: true,
                      hintText:  "اسم المشرف",
                    ),
                  )),
              Container(
                  margin: EdgeInsets.only(
                      left: 25, right: 25, top: 10),
                  child: TextField(
                    controller: phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 0.0),
                          borderRadius:
                          BorderRadius.circular(10.0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.0),
                          borderRadius:
                          BorderRadius.circular(10.0)),
                      contentPadding: EdgeInsets.only(
                          top: 18,
                          bottom: 18,
                          right: 20,
                          left: 20),
                      fillColor:
                      Colors.white,
                      filled: true,
                      hintText:  "رقم الهاتف",
                    ),
                  )),
              Container(
                  margin: EdgeInsets.only(
                      left: 25, right: 25, top: 10),
                  child: TextField(
                    controller: username,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 0.0),
                          borderRadius:
                          BorderRadius.circular(10.0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.0),
                          borderRadius:
                          BorderRadius.circular(10.0)),
                      contentPadding: EdgeInsets.only(
                          top: 18,
                          bottom: 18,
                          right: 20,
                          left: 20),
                      fillColor:
                      Colors.white,
                      filled: true,
                      hintText:  "اسم المستخدم باللغة الإنجليزية",
                    ),
                  )),

              Container(
                  margin: EdgeInsets.only(
                      left: 25, right: 25, top: 10),
                  child: TextField(
                    controller: passwordd,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 0.0),
                          borderRadius:
                          BorderRadius.circular(10.0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.0),
                          borderRadius:
                          BorderRadius.circular(10.0)),
                      contentPadding: EdgeInsets.only(
                          top: 18,
                          bottom: 18,
                          right: 20,
                          left: 20),
                      fillColor:
                      Colors.white,
                      filled: true,
                      hintText:  "كلمة المرور",
                    ),
                  )),
              Container(
                  margin: EdgeInsets.only(
                      left: 25, right: 25, top: 10),
                  child: TextField(
                    controller: location,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 0.0),
                          borderRadius:
                          BorderRadius.circular(10.0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.0),
                          borderRadius:
                          BorderRadius.circular(10.0)),
                      contentPadding: EdgeInsets.only(
                          top: 18,
                          bottom: 18,
                          right: 20,
                          left: 20),
                      fillColor:
                      Colors.white,
                      filled: true,
                      hintText:  "عنوان المحل",
                    ),
                  )),
              Container(
                  margin: EdgeInsets.only(
                      left: 25, right: 25, top: 10),
                  child: TextField(
                    controller: price,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 0.0),
                          borderRadius:
                          BorderRadius.circular(10.0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 1.0),
                          borderRadius:
                          BorderRadius.circular(10.0)),
                      contentPadding: EdgeInsets.only(
                          top: 18,
                          bottom: 18,
                          right: 20,
                          left: 20),
                      fillColor:
                      Colors.white,
                      filled: true,
                      hintText:  "سعر الاشتراك الشهري",
                    ),
                  )),

              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 50,
                  width:
                  MediaQuery.of(context).size.width / 1.2,
                  margin: EdgeInsets.only(top: 40, bottom: 5),
                  color: Colors.white,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    child: Text(
                      'تعريف العميل',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13 * unitHeightValue),
                    ),
                    onPressed: () async {
                      AddCoffee(context);
                    },
                  ),
                ),
              ),


            ],),
          )),
    ]);
  }


  AddCoffee(BuildContext c) async {
    Uri postsURL = Uri.parse('https://coffepoint.net/Api/addcofe.php');


    showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text('تعريف العميل'),
          content: Text(
              'جار تعريف العميل ...'
          ),
        ));




    DateTime now = DateTime.now();
    DateTime expierdate = now.add(Duration(days: 32));


    var map = new Map<String, dynamic>();
    map['name'] = name.text.toString();
    map['username'] = username.text.toString();
    map['phone'] = phone.text.toString();
    map['passwordd'] = passwordd.text.toString();
    map['nameC'] = nameC.text.toString();
    map['location'] = location.text.toString();
    map['startDate'] = now.toString().substring(0,10);
    map['expierdate'] =expierdate.toString().substring(0,10);
    map['price'] =price.text.toString();


    http.Response res = await http.post(
      postsURL,
      body: map,);


    print("inputt " + map.toString());


    if (res.statusCode == 200) {
      print("Profile" + res.body.toString());


     name.clear();
       username.clear();
   phone.clear();
       passwordd.clear();
       nameC.clear();
       location.clear();
      price.clear();


      if (res.body.toString().contains('1S')) {
        Navigator.pop(context);




        setState(() {

        });
        showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text('تعريف العميل'),
              content: Text(
                  'تم تعريف العميل بنجاح'
              ),
            ));
        setState(() {

        });
      } else {
        Navigator.pop(context);
        showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text('تعريف العميل'),
              content: Text('حصلت مشكله خلال تعريف العميل'),
            ));
      }
    } else {
      throw "Unable to retrieve Profile.";
    }
  }


}