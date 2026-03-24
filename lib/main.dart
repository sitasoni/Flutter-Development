import 'package:basic_flutter/widget/appbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      // appBar: AppBarWidget.defaultAppBar(ctx,"Default App Bar"),
      // appBar: AppBarWidget.appBarBackIcon("App Bar with back icon"),
      // appBar: AppBarWidget.appBarCustomIcon(ctx,"App Bar with back icon"), // icon error
      // appBar: AppBarWidget.appBarIconButton(ctx, "App Bar with logo icon"),
      appBar: AppBarWidget.appBarPopUpMenu(ctx, "Appbar with popup menu"),
      // appBar: AppBar(
      //   // multiple images on appbar
      //   actions: [
      //     PopupMenuButton(
      //       onSelected: (value) => Navigator.of(ctx).pop(),
      //       itemBuilder: (ctx) => [
      //         PopupMenuItem(
      //           value: 1,
      //           child: Row(
      //             children: [
      //               Icon(Icons.search, size: 20, color: Colors.greenAccent,),
      //               SizedBox(width: 10),
      //               Text("Search"),
      //             ],
      //           ),
      //         ),
      //         PopupMenuItem(value: 2, child: Text("Cancel")),
      //       ],
      //     ),
      //   ],
      // ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(child: Text("Menu")),
            ListTile(title: Text("Text 1")),
            ListTile(title: Text("Text 2")),
          ],
        ),
      ),
      // body: const Center(child: Text("Home Screen")),
      body: const Center(child: Text("Home Page")),
    );
  }
}
