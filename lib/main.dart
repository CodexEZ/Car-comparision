import 'package:flutter/material.dart';
import 'package:untitled/elements/Card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(//This container will contain Search Bar and Menu
                height: 60,
                color: Colors.grey[300],
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(//Menu Button
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey[400]
                          ),
                          child: IconButton(
                            icon: Icon(Icons.menu_rounded,),
                            onPressed: (){},
                            color: Colors.grey,

                          )
                      ),
                      SizedBox(width: 5,),
                      Container(//Search Bar
                        height: 40,
                        width: MediaQuery.of(context).size.width-110,//320
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[400]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                color: Colors.grey[500]
                              ),
                              border: InputBorder.none

                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(//Menu Button
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey[400]
                        ),
                        child: IconButton(
                          icon: Icon(Icons.search_rounded,),
                          onPressed: (){},
                          color: Colors.grey,

                        )
                      )
                    ],
                  ),
                ),

              ),
              SizedBox(height: 10,),
              Container(//Ad menu
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                  child:Container(
                    height: 200,
                    width:MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[100]
                    ),
                    child: ListView(
                      physics: const PageScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        for (var i=1; i<=3;i++)Panel(inputText: "$i")
                      ],
                    ),
                  )
                ),
              ),
              SizedBox(height:10),
              Container(

                width: MediaQuery.of(context).size.width,
                color: Colors.grey[100],
                padding: EdgeInsets.all(8),
                child: Text("Categories...",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(//Middle Scroll menu
                height: 150,
                color: Colors.grey[100],
                child: Card(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(height: 5,),
                      for (var i = 1;i<=10;i++)...[
                        Small_Panel(inputText: "$i"),
                        SizedBox(width:5)
                      ]
                    ],
                  ),
                )
              ),
              SizedBox(height: 10,),
              Container(
                height: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[100]
                ),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    SizedBox(height: 5,),
                    for(var i=1;i<=10;i++)...[
                      long_panel(inputText: "$i"),
                      SizedBox(height:10)
                ]
                  ],
                ),
              ),
              SizedBox(height: 5,)
            ],

          ),
        ),
      ),
    );
  }

}
