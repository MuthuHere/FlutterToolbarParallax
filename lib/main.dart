import 'package:flutter/material.dart';

import 'details_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      onGenerateRoute: (settings) {
        WidgetBuilder builder;
        Map arguments = settings.arguments;
        if (settings.name == '/details')
          builder = (BuildContext context) => DetailsPage(
                title: arguments['title'],
                assetImage: arguments['image'],
              );
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(6, (index) {
          return Hero(
            tag: 'ic_$index',
            child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/details', arguments: {
                    'title': 'ic_$index',
                    'image': 'assets/ic_${index + 1}.jpeg'
                  });
                },
                child: Container(
                  height: 200,
                  width: 200,
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/ic_${index + 1}.jpeg"),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                )),
          );
        }),
      ),
    );
  }
}
