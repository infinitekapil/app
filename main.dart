// import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
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
    double ssh = MediaQuery.of(context).size.height;
    double ssw = MediaQuery.of(context).size.height;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Material(
      child: Scaffold(
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.person,
                    size: ssw*.04,
                  ),
                ),
                Container(
                  // width: ssw*.8,
                  // height: ssh*.15,
                  padding: EdgeInsets.only(left: ssw*.02),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                        text: 'Good Afternoon, ',
                        style: TextStyle(color: Colors.black,fontSize: ssh*.035),
                        children: <TextSpan> [
                          TextSpan(text: 'Test!', style: TextStyle(fontWeight: FontWeight.bold,fontSize: ssh*.035)),
                        ]
                      ),
                    ),
                  ),
                ),
                SizedBox(height: ssh*.04,),
                //second container containing proposal,interests
                Padding(
                  padding: const EdgeInsets.only(left:10.0,right: 10.0),
                  child: Container(
                    padding: EdgeInsets.only(left: ssw*.0),
                    height: ssh*.13,
                    width: ssw*.51,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0,
                          // spreadRadius: 2.0,
                          offset: Offset(1.0,1.0),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    //row containing the number and the proposals
                    child: Padding(
                      padding: const EdgeInsets.only(top:6.0,bottom: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget> [
                          //new proposals
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0,right: 5.0),
                              child: Container(
                              alignment: Alignment.center,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top:8.0),
                                    child: Text('1',style: TextStyle(fontSize: ssh*.045,color: Colors.deepPurple[1000],fontWeight: FontWeight.bold),),
                                  ),
                                  SizedBox(height: ssh*.01,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('New Proposals',style: TextStyle(fontSize: ssh*.015),),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 2.0,
                                      // spreadRadius: 2.0,
                                      offset: Offset(1.0,1.0),
                                    ),
                                  ],
                                color: Colors.white
                              ),
                          ),
                            ),),
                          //interested button
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                            child: InkWell(
                              onTap:() => _interestedfn(context),
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top:8.0),
                                      child: Text('1',style: TextStyle(fontSize: ssh*.045,color: Colors.green,fontWeight: FontWeight.bold),),
                                    ),
                                    SizedBox(height: ssh*.01,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Interested',style: TextStyle(fontSize: ssh*.015),),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 2.0,
                                        // spreadRadius: 2.0,
                                        offset: Offset(1.0,1.0),
                                      ),
                                    ],
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),),
                          //follow up button
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                              child: InkWell(
                                onTap: () => _followupfn(context),
                                child: Container(
                                  height: ssh*.3,
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(top:8.0),
                                        child: Text('1',style: TextStyle(fontSize: ssh*.045,color: Colors.blue,fontWeight: FontWeight.bold),),
                                      ),
                                      SizedBox(height: ssh*.01,),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Follow Up',style: TextStyle(fontSize: ssh*.015),),
                                      )
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 2.0,
                                          // spreadRadius: 2.0,
                                          offset: Offset(1.0,1.0),
                                        ),
                                      ],
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //new proposals text
                SizedBox(height: ssh*.04,),
                Container(
                  // width: ssw*.8,
                  // height: ssh*.15,
                  padding: EdgeInsets.only(left: ssw*.02),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                          text: 'New Proposals ',
                          style: TextStyle(color: Colors.black,fontSize: ssh*.035),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: ssh*.04,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                   // height: ssh*.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1.0,
                          offset: Offset(3.0,3.0),
                        ),
                      ],
                      color: Colors.white
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //first container ...
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            //big Fat phonix ....
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Container(
                                padding: EdgeInsets.only(left: ssw*.02),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'BIG FAT PHOENIX ',
                                      style: TextStyle(color: Colors.black,fontSize: ssh*.02,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            //edtech ....
                            Padding(
                              padding: const EdgeInsets.only(top:20.0,left: 20.0),
                              child: Container(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Edtech',style: TextStyle(color: Colors.white,fontSize: ssh*.02)),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            //name and location....
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0,left: 20.0,bottom: 10.0),
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.grey,
                                      size: ssh*.02,
                                    ),
                                    Text('Noida',style: TextStyle(fontSize: ssh*.02,color: Colors.grey),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        //2nd container ...
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0,bottom: 10.0,top: 90.0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                  child: Text('\u{20B9} 3.5 Cr',style: TextStyle(fontSize: ssh*.02),textAlign: TextAlign.end,)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
void _interestedfn(context)
{
  showModalBottomSheet(context: context,backgroundColor: Colors.transparent, builder: (BuildContext context) => Container(
    height: MediaQuery.of(context).size.height*.9,
    width: MediaQuery.of(context).size.width,
    child: Stack(
      children: <Widget>[
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height*.6,
            width: MediaQuery.of(context).size.width*1,
            child: Column(
              children: <Widget>[
               Container(
                    height: MediaQuery.of(context).size.height*.05,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.transparent,
                  ),
                Container(
                  height: MediaQuery.of(context).size.height*.5,
                    width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:60.0),
                        child: Text('Interested',style:  TextStyle(fontSize: 25.0,color: Colors.blue),textAlign: TextAlign.center),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*.04,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          // height: ssh*.15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 1.0,
                                  offset: Offset(3.0,3.0),
                                ),
                              ],
                              color: Colors.white
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //first container ...
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  //big Fat phonix ....
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                    child: Container(
                                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.02),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: RichText(
                                          text: TextSpan(
                                            text: 'BIG FAT PHOENIX ',
                                            style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.height*.02,fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  //edtech ....
                                  Padding(
                                    padding: const EdgeInsets.only(top:20.0,left: 20.0),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Edtech',style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.height*.02)),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5.0),
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                  //name and location....
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0,left: 20.0,bottom: 10.0),
                                    child: Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.grey,
                                            size: MediaQuery.of(context).size.height*.02,
                                          ),
                                          Text('Noida',style: TextStyle(fontSize: MediaQuery.of(context).size.height*.02,color: Colors.grey),),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              //2nd container ...
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10.0,bottom: 10.0,top: 90.0),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        child: Text('\u{20B9} 3.5 Cr',style: TextStyle(fontSize: MediaQuery.of(context).size.height*.02),textAlign: TextAlign.end,)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 170),
          child: Container(
            alignment: Alignment.center,
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 1.0,
                )
              ]
            ),
            child: Icon(
              Icons.thumb_up_rounded,
              color: Colors.lightBlueAccent[100],
              size: MediaQuery.of(context).size.height*.07,
            ),
          ),
        ),
        // Container(
        //   color: Colors.white,
        //   height: MediaQuery.of(context).size.height*.7,
        //   width: MediaQuery.of(context).size.width,
        //   child: Column(
        //     children: <Widget>[
        //       Text('Interested',style: TextStyle(fontSize: MediaQuery.of(context).size.height*.02,color: Colors.black),)
        //     ],
        //   ),
        // ),
      ],
    ),
  ));
}
void _followupfn(context)
{
  showModalBottomSheet(context: context,backgroundColor: Colors.transparent, builder: (BuildContext context) => Container(
    height: MediaQuery.of(context).size.height*.9,
    width: MediaQuery.of(context).size.width,
    child: Stack(
      children: <Widget>[
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height*.6,
            width: MediaQuery.of(context).size.width*1,
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height*.05,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                ),
                Container(
                  height: MediaQuery.of(context).size.height*.5,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:60.0),
                        child: Text('Follow Up',style:  TextStyle(fontSize: 25.0,color: Colors.blue),textAlign: TextAlign.center),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height*.04,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          // height: ssh*.15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 1.0,
                                  offset: Offset(3.0,3.0),
                                ),
                              ],
                              color: Colors.white
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //first container ...
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  //big Fat phonix ....
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                    child: Container(
                                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.02),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: RichText(
                                          text: TextSpan(
                                            text: 'BIG FAT PHOENIX ',
                                            style: TextStyle(color: Colors.black,fontSize: MediaQuery.of(context).size.height*.02,fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  //edtech ....
                                  Padding(
                                    padding: const EdgeInsets.only(top:20.0,left: 20.0),
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Edtech',style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.height*.02)),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5.0),
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                  //name and location....
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0,left: 20.0,bottom: 10.0),
                                    child: Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.grey,
                                            size: MediaQuery.of(context).size.height*.02,
                                          ),
                                          Text('Noida',style: TextStyle(fontSize: MediaQuery.of(context).size.height*.02,color: Colors.grey),),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              //2nd container ...
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10.0,bottom: 10.0,top: 90.0),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        child: Text('\u{20B9} 3.5 Cr',style: TextStyle(fontSize: MediaQuery.of(context).size.height*.02),textAlign: TextAlign.end,)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 170),
          child: Container(
            alignment: Alignment.center,
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1.0,
                  )
                ]
            ),
            child: Icon(
              Icons.arrow_right_alt,
              color: Colors.black,
              size: MediaQuery.of(context).size.height*.07,
            ),
          ),
        ),
        // Container(
        //   color: Colors.white,
        //   height: MediaQuery.of(context).size.height*.7,
        //   width: MediaQuery.of(context).size.width,
        //   child: Column(
        //     children: <Widget>[
        //       Text('Interested',style: TextStyle(fontSize: MediaQuery.of(context).size.height*.02,color: Colors.black),)
        //     ],
        //   ),
        // ),
      ],
    ),
  ));
}