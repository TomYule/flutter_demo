import 'package:flutter/material.dart';

import 'package:flutter_demo/route/CustomPaintRoute.dart';
import 'package:flutter_demo/route/FileOperationRoute.dart';
import 'package:flutter_demo/route/FormTestRoute.dart';
import 'package:flutter_demo/route/CustomScrollViewTestRoute.dart';
import 'package:flutter_demo/route/GestureDetectorTestRoute.dart';
import 'package:flutter_demo/route/GradientButtonRoute.dart';
import 'package:flutter_demo/route/GradientCircularProgressRoute.dart';
import 'package:flutter_demo/route/HttpTestRoute.dart';
import 'package:flutter_demo/route/InheritedWidgetTestRoute.dart';
import 'package:flutter_demo/route/NotificationRoute.dart';
import 'RowDemo.dart';
import 'package:flutter_demo/route/ScaleAnimationRoute.dart';
import 'package:flutter_demo/route/ScrollControllerTestRoute.dart';
import 'StaggerDemo.dart';
import 'package:flutter_demo/route/ThemeTestRoute.dart';
import 'package:flutter_demo/route/TurnBoxRoute.dart';
import 'package:flutter_demo/route/WillPopScopeTestRoute.dart';

void main() => runApp(MyApp());

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
      ),
      //注册路由表
      routes:{
        //FocusTestRoute
        "formTestRoute":(context)=>FormTestRoute(),
        //RowDemo
        "rowDemo":(context)=>RowDemo(),
        //FlexLayoutTestRoute
        "customScrollViewTestRoute":(context)=>CustomScrollViewTestRoute(),

        "scrollControllerTestRoute":(context)=>ScrollControllerTestRoute(),
        "willPopScopeTestRoute":(context)=>WillPopScopeTestRoute(),
        "inheritedWidgetTestRoute":(context)=>InheritedWidgetTestRoute(),
        "gestureDetectorTestRoute":(context)=>GestureDetectorTestRoute(),
        "themeTestRoute":(context)=>ThemeTestRoute(),
        "notificationRoute":(context)=>NotificationRoute(),
        "scaleAnimationRoute":(context)=>ScaleAnimationRoute(),
        "staggerDemo":(context)=>StaggerDemo(),
        "gradientButton":(context)=>GradientButtonRoute(),
        "turnBoxRoute":(context)=>TurnBoxRoute(),
        "customPaintRoute":(context)=>CustomPaintRoute(),
        "gradientCircularProgressRoute":(context)=>GradientCircularProgressRoute(),
        "fileOperationRoute":(context)=>FileOperationRoute(),
        "httpTestRoute":(context)=>HttpTestRoute(),

      } ,
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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text("focusTestRoute Demo"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
//                Navigator.pushNamed(context, "new_page");
                Navigator.of(context).pushNamed("formTestRoute", arguments: "hi");
                //Navigator.push(context,
                //  new MaterialPageRoute(builder: (context) {
                //  return new NewRoute();
                //}));
              },
            ),
            FlatButton(
              child: Text("rowDemo Demo"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
//                Navigator.pushNamed(context, "new_page");
                Navigator.of(context).pushNamed("rowDemo", arguments: "hi");
                //Navigator.push(context,
                //  new MaterialPageRoute(builder: (context) {
                //  return new NewRoute();
                //}));
              },
            ),
            FlatButton(
              child: Text("customScrollViewTestRoute Demo"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.pushNamed(context, "customScrollViewTestRoute");
//                Navigator.of(context).pushNamed("listView3", arguments: "hi");
                //Navigator.push(context,
                //  new MaterialPageRoute(builder: (context) {
                //  return new NewRoute();
                //}));
              },
            ),
            //scrollControllerTestRoute
            FlatButton(
              child: Text("scrollControllerTestRoute Demo"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.pushNamed(context, "scrollControllerTestRoute");
//                Navigator.of(context).pushNamed("listView3", arguments: "hi");
                //Navigator.push(context,
                //  new MaterialPageRoute(builder: (context) {
                //  return new NewRoute();
                //}));
              },
            ),
            //inheritedWidgetTestRoute
            FlatButton(
              child: Text("inheritedWidgetTestRoute Demo"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.pushNamed(context, "inheritedWidgetTestRoute");
//                Navigator.of(context).pushNamed("listView3", arguments: "hi");
                //Navigator.push(context,
                //  new MaterialPageRoute(builder: (context) {
                //  return new NewRoute();
                //}));
              },
            ),
            //themeTestRoute
            FlatButton(
              child: Text("themeTestRoute Demo"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.pushNamed(context, "themeTestRoute");
//                Navigator.of(context).pushNamed("listView3", arguments: "hi");
                //Navigator.push(context,
                //  new MaterialPageRoute(builder: (context) {
                //  return new NewRoute();
                //}));
              },
            ),
            //notificationRoute
            FlatButton(
              child: Text("notificationRoute Demo"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.pushNamed(context, "notificationRoute");
//                Navigator.of(context).pushNamed("listView3", arguments: "hi");
                //Navigator.push(context,
                //  new MaterialPageRoute(builder: (context) {
                //  return new NewRoute();
                //}));
              },
            ),

            //scaleAnimationRoute
            FlatButton(
              child: Text("scaleAnimationRoute Demo"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.pushNamed(context, "scaleAnimationRoute");
//                Navigator.of(context).pushNamed("listView3", arguments: "hi");
                //Navigator.push(context,
                //  new MaterialPageRoute(builder: (context) {
                //  return new NewRoute();
                //}));
              },
            ),
            //heroAnimationRoute
            FlatButton(
              child: Text("staggerDemo Demo"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.pushNamed(context, "staggerDemo");
//                Navigator.of(context).pushNamed("listView3", arguments: "hi");
                //Navigator.push(context,
                //  new MaterialPageRoute(builder: (context) {
                //  return new NewRoute();
                //}));
              },
            ),
            //gradientButton
            FlatButton(
              child: Text("gradientButton Demo"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.pushNamed(context, "gradientButton");
//                Navigator.of(context).pushNamed("listView3", arguments: "hi");
                //Navigator.push(context,
                //  new MaterialPageRoute(builder: (context) {
                //  return new NewRoute();
                //}));
              },
            ),
            //turnBoxRoute
            FlatButton(
              child: Text("turnBoxRoute Demo"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.pushNamed(context, "turnBoxRoute");
//                Navigator.of(context).pushNamed("listView3", arguments: "hi");
                //Navigator.push(context,
                //  new MaterialPageRoute(builder: (context) {
                //  return new NewRoute();
                //}));
              },
            ),
            //CustomPaintRoute
            FlatButton(
              child: Text("CustomPaintRoute Demo"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.pushNamed(context, "customPaintRoute");
//                Navigator.of(context).pushNamed("listView3", arguments: "hi");
                //Navigator.push(context,
                //  new MaterialPageRoute(builder: (context) {
                //  return new NewRoute();
                //}));
              },
            ),
            //gradientCircularProgressRoute
            FlatButton(
              child: Text("gradientCircularProgressRoute Demo"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.pushNamed(context, "gradientCircularProgressRoute");
//                Navigator.of(context).pushNamed("listView3", arguments: "hi");
                //Navigator.push(context,
                //  new MaterialPageRoute(builder: (context) {
                //  return new NewRoute();
                //}));
              },
            ),
            //fileOperationRoute
            FlatButton(
              child: Text("fileOperationRoute Demo"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.pushNamed(context, "fileOperationRoute");
//                Navigator.of(context).pushNamed("listView3", arguments: "hi");
                //Navigator.push(context,
                //  new MaterialPageRoute(builder: (context) {
                //  return new NewRoute();
                //}));
              },
            ),
            //httpTestRoute
            FlatButton(
              child: Text("httpTestRoute Demo"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.pushNamed(context, "httpTestRoute");
//                Navigator.of(context).pushNamed("listView3", arguments: "hi");
                //Navigator.push(context,
                //  new MaterialPageRoute(builder: (context) {
                //  return new NewRoute();
                //}));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
