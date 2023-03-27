import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pestaña Tab',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
} //mi app

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //MyHomePage StatefulWidget

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorWeight: 10,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.pink),
            tabs: [
              Tab(icon: Icon(Icons.medical_information)),
              Tab(icon: Icon(Icons.medical_services)),
              Tab(icon: Icon(Icons.medication_liquid)),
              Tab(icon: Icon(Icons.medication_outlined)),
            ],
          ),
          title: Text('Tab Consultorio Medico Cruz'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.medical_information, size: 350),
            Icon(Icons.medical_services, size: 350),
            Icon(Icons.medication_liquid, size: 350),
            Icon(Icons.medication_outlined, size: 350),
          ],
        ),
      ),
    );
  }
} //MyHomePageState state<MyHomePage>
