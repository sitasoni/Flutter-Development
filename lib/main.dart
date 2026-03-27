import 'package:basic_flutter/widget/appbar.dart';
import 'package:basic_flutter/widget/textview.dart';
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
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(child: Text("Menu")),
            ListTile(title: Text("Text 1")),
            ListTile(title: Text("Text 2")),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        // child: Text("Home Page")
        // child: TextViewWidget.textView(ctx,"Hello Developer")
        // child: TextViewWidget.richText(ctx,"Hello Developer")
        // child: TextViewWidget.selectableText(ctx,"Hello Developer")
        // child: TextViewWidget.selectableTextRich(ctx,"")
        // child: TextViewWidget.textField(ctx, ""),
        // child: TextViewWidget.textFormField(ctx, "title"),
        // child: TextViewWidget.defaultTextStyle(ctx, "title"),
        // child: TextViewWidget.editableText(ctx, "Enter your name"),
        child: Column(
          children: [
            Text("Home Page"),
            TextViewWidget.textView(ctx, "Hello Developer"),
            TextViewWidget.richText(ctx, "Hello Developer"),
            TextViewWidget.selectableText("Hello Developer, this is selectable text",),
            TextViewWidget.selectableTextRich("Hello Developer, this is selectable text rich ",),
            TextViewWidget.textField(ctx, "Text Filed"),
            TextViewWidget.textFormField(ctx),
            TextViewWidget.defaultTextStyle(ctx),
            TextViewWidget.editableText(ctx, "Enter your name"),
          ],
        ),
      ),
    );
  }
}
