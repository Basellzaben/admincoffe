import 'dart:convert';

import 'package:admincoffe/Model/AddCoffe.dart';
import 'package:flutter/material.dart';

import 'Model/allcoffemodel.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'CoffePoint Admin',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('العملاء',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 1.2,
          width: MediaQuery.of(context).size.width / 1,
          child: FutureBuilder(
            future: getAllCoffe(context),
            builder: (BuildContext context,
                AsyncSnapshot<List<allcoffemodel>> snapshot) {
              if (snapshot.hasData) {
                List<allcoffemodel>? Visits = snapshot.data;

                List<allcoffemodel>? search = Visits!.toList();

                return ListView(
                  children: search
                      .map((allcoffemodel v) => Card(
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1,
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [



                                                  Spacer(),
                                                  Text(
                                                    textAlign: TextAlign.right,
                                                    v.name.toString(),
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                        FontWeight.bold),
                                                  ),


                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      UpdateCoffeState(context,v.active=='1'?'0':'1',v.id.toString());

                                                    },
                                                    child: Container(
                                                      child: Icon(Icons.add_box, size: 40,color:v.active.toString()=='1'? Colors.green:Colors.red),

                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    textAlign: TextAlign.right,
                                                    v.phone.toString(),
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),

                                              Row(

                                                children: [
                                                  Spacer(),
                                                  Text(
                                                    textAlign: TextAlign.right,
                                                    v.startDate.toString()+" - "+ v.expierdate.toString(),
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                        FontWeight.w400),
                                                  ),
                                                ],
                                              ),


                                              /*    v.deptstate!='1'?Align(
                                                        alignment: Alignment.bottomCenter,
                                                        child: Container(
                                                          height: 35,
                                                          width:
                                                          MediaQuery.of(context).size.width / 4,
                                                          color: HexColor(Globalvireables.white),
                                                          child: ElevatedButton(
                                                            style: ElevatedButton.styleFrom(
                                                              primary:Colors.black45,
                                                            ),
                                                            child: Text(
                                                              'تسديد',
                                                              style: ArabicTextStyle(
                                                                  arabicFont: ArabicFont.tajawal,
                                                                  color:
                                                                  HexColor(Globalvireables.white),
                                                                  fontSize: 14 * unitHeightValue),
                                                            ),
                                                            onPressed: () async {

                                                              doneDept(context,v.id.toString());
                                                            },
                                                          ),
                                                        ),
                                                      ):Container(
                                                        child: Text(
                                                          'تم السداد في تاريخ '+v.donedate.toString(),
                                                          style: ArabicTextStyle(
                                                              arabicFont: ArabicFont.tajawal,
                                                              color:
                                                              HexColor(Globalvireables.black),
                                                              fontSize: 14 * unitHeightValue),
                                                        ),
                                                      ),*/
                                            ],
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ))
                      .toList(),
                );
              } else {
                return Container(child: Text(""));
              }
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){ Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => AddCoffe()),
        );},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Future<List<allcoffemodel>> getAllCoffe(BuildContext c) async {
    Uri postsURL = Uri.parse('https://coffepoint.net/Api/getAllcoffe.php');
    try {
      var map = new Map<String, dynamic>();

      http.Response res = await http.post(
        postsURL,
      );
//

      if (res.statusCode == 200) {
        print("Profile" + res.body.toString());

        List<dynamic> body = jsonDecode(res.body);

        List<allcoffemodel> Doctors = body
            .map(
              (dynamic item) => allcoffemodel.fromJson(item),
            )
            .toList();

        return Doctors;
      } else {
        throw "Unable to retrieve Profile.";
      }
    } catch (e) {
      print("ERROR : " + e.toString());
    }

    throw "Unable to retrieve Profile.";
  }


  UpdateCoffeState(BuildContext c,String state,String coffeid) async {
    Uri postsURL = Uri.parse('https://coffepoint.net/Api/updatecoffestate.php');


    showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text('تحديث الحاله'),
          content: Text(
               'جار تحديث الحاله ...'
            ),
        ));




    DateTime now = DateTime.now();
    DateTime expierdate = now.add(Duration(days: 32));


    var map = new Map<String, dynamic>();
    map['coffeid'] = coffeid.toString();
    map['state'] = state.toString();


    if(state=='1') {
      map['expierdate'] = expierdate.toString().substring(0, 10);
      map['startDate'] = now.toString().substring(0, 10);
    }

    http.Response res = await http.post(
      postsURL,
      body: map,);


    print("inputt " + map.toString());


    if (res.statusCode == 200) {
      print("Profile" + res.body.toString());




      if (res.body.toString().contains('1S')) {
        Navigator.pop(context);
        setState(() {

        });
        showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text('تحديث الحاله'),
              content: Text(
                  'تم تحديث الحاله بنجاح'
                  ),
            ));
        setState(() {

        });
      } else {
        Navigator.pop(context);
        showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text('تحديث الحاله'),
              content: Text('حصلت مشكله خلال تحديث الحاله'),
            ));
      }
    } else {
      throw "Unable to retrieve Profile.";
    }
  }






}
