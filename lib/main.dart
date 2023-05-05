import 'package:expense/service/apiservice.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      title: 'Flutter Demo',
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('API'),),
      body: FutureBuilder(
        future: Apiservices().getArticle() ,
        builder:(BuildContext context,snapshot){
            if(snapshot.hasData){
              return Text('huree');
            }
            return const Center(child: CircularProgressIndicator());
        } ,
      ),
    );
  }
}

