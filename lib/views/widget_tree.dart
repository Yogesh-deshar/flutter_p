import 'package:dart/data/valuenotigier.dart';
import 'package:dart/views/pages/home_page.dart';
import 'package:dart/views/pages/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:dart/views/Navbar_widgets.dart';

List<Widget> pages = [
  const HomePage(),
  const Profilepage(),
  const Center(
    child: Text(
      'Settings Page',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
  ),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        actions: [
          IconButton(
            icon: ValueListenableBuilder(
              valueListenable: isDarkMode,
              builder: (context, value, child) {
                return Icon(value ? Icons.dark_mode : Icons.light_mode);
              },
            ),
            onPressed: () {
              isDarkMode.value = !isDarkMode.value;
            },
          ),
        ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      // body: currentIndex == 0
      //     ? Center(
      //         child: Column(
      //           children: [
      //             Text(
      //               'Home Page',
      //               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      //             ),
      //           ],
      //         ),
      //       )
      //     : currentIndex == 1
      //     ? Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text(
      //             'Business Page',
      //             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      //           ),
      //         ],
      //       )
      //     : Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text(
      //             'School Page',
      //             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      //           ),
      //         ],
      //       ),

      body: ValueListenableBuilder(
        valueListenable: Notifier,
        builder: (context, value, child) {
          return pages[value];
        },
      ),
      bottomNavigationBar: NavbarWidgets(),

      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              print('Floating Action Button Pressed');
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          SizedBox(height: 16), // Add some spacing between the buttons
          FloatingActionButton(
            onPressed: () {
              print('Floating Action Button Pressed');
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
      // body: Center(
      //   child: Container(
      //     child: SizedBox(
      //       width: double.infinity,

      //       child: Container(
      //         height: 500,
      //         decoration: BoxDecoration(
      //           color: Color.fromARGB(255, 253, 254, 254),
      //         ),
      //         child: Column(
      //           // mainAxisAlignment: MainAxisAlignment.center,
      //           crossAxisAlignment: CrossAxisAlignment.end,

      //           children: [
      //             Container(
      //               width: 150,
      //               height: 100,
      //               padding: EdgeInsets.only(
      //                 top: 10,
      //                 left: 10,
      //                 right: 10,
      //                 bottom: 20,
      //               ),
      //               margin: EdgeInsets.only(
      //                 top: 10,
      //                 left: 10,
      //                 right: 10,
      //                 bottom: 20,
      //               ),

      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 color: Color(0xFFBBDEFB),
      //               ),
      //               child: Center(
      //                 // Center is a layout widget. It takes a single child and positions it
      //                 // in the middle of the parent.
      //                 child: Text(
      //                   'hello world',
      //                   style: TextStyle(color: Color(0xFF1976D2)),
      //                 ),
      //               ),
      //             ),

      //             Container(
      //               width: 150,
      //               height: 100,
      //               padding: EdgeInsets.only(
      //                 top: 10,
      //                 left: 10,
      //                 right: 10,
      //                 bottom: 20,
      //               ),
      //               margin: EdgeInsets.only(
      //                 top: 10,
      //                 left: 10,
      //                 right: 10,
      //                 bottom: 20,
      //               ),
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 color: Color(0xFFBBDEFB),
      //               ),
      //               child: Center(
      //                 // Center is a layout widget. It takes a single child and positions it
      //                 // in the middle of the parent.
      //                 child: Text(
      //                   'hello world',
      //                   style: TextStyle(color: Color(0xFF1976D2)),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      // body: Image.network(
      //   'https://i.pinimg.com/236x/bc/22/2e/bc222ed914940f287e05ba5a51a15be9.jpg',
      //   width: double.infinity,
      //   height: double.infinity,
      //   fit: BoxFit.cover,
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
      // body: Column(
      //   children: [
      //     Image.asset(
      //       'assets/image/1.jpg',
      //       width: 200,
      //       height: 400,
      //       fit: BoxFit.cover,
      //     ),
      //     Center(
      //       child: Text(
      //         'Hello World',
      //         style: TextStyle(
      //           color: Colors.white,
      //           fontSize: 24,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //     ),
      //     ListTile(
      //       tileColor: Colors.white,
      //       leading: Icon(Icons.person),
      //       title: Text('John Doe'),
      //       subtitle: Text('Software Engineer'),
      //       trailing: IconButton(
      //         icon: Icon(Icons.arrow_forward),
      //         onPressed: () {
      //           print('Tapped on John Doe');
      //         },
      //       ),
      //       onTap: () {
      //         print('Tapped on John Doe');
      //       },
      //     ),
      //   ],
      // ),
    );
    ;
  }
}
