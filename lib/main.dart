import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

    List <String> titles = ['Bike', 'Boat', 'Bus', 'Car'];

    @override
    Widget build(BuildContext context) {
    // final iconList = [
    //   Icons.directions_bike,
    //   Icons.directions_boat,
    //   Icons.directions_bus,
    //   Icons.directions_car,
    // ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
        backgroundColor: Colors.deepOrange[300],
      ),
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, nomor) {
          return Card(
            child: ListTile(
              // leading: Icon(iconList[nomor]),
              leading: CircleAvatar(
                backgroundImage: NetworkImage("http://picsum.photos/200/300?Images=$nomor"),
              ),
              title: Text(titles[nomor]),
              onTap: () {
                setState(() {
                  titles.removeAt(nomor);
                });
              },
            ),
          );
        },
      ),
    );
  }
}
      //   children: const [
      //     ListTile(
      //       leading: CircleAvatar(
      //         backgroundImage: AssetImage("gambar2.jpg"),
      //         ),
      //       title: Text("Sun"),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.brightness_3),
      //       title: Text("Moon"),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.star),
      //       title: Text("star"),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //     ),
      //   ],
      // )
      //
      // GridView(
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 4,
      //   ),
      //   children: [
      //     Container(
      //     width: 100,
      //     height: 250,
      //     margin: EdgeInsets.only(bottom: 10),
      //     // color: Colors.red,
      //     decoration:const BoxDecoration(
      //       // color: Colors.red,
      //       image: DecorationImage(
      //         image: AssetImage("gambar.png"))          
      //         ),
      //     ),
      //     Container(
      //     width: 100,
      //     height: 250,
      //     margin: EdgeInsets.only(bottom: 10),
      //     color: Colors.blue,
      //     ),
      //     Container(
      //     width: 100,
      //     height: 250,
      //     margin: EdgeInsets.only(bottom: 10),
      //     color: Colors.green,
      //     ),
      //     Container(
      //     width: 100,
      //     height: 250,
      //     margin: EdgeInsets.only(bottom: 10),
      //     color: Colors.black,
      //     ),
      //   ],
//      // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
