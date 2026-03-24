import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppBarWidget {
  // default app bar
  static PreferredSizeWidget defaultAppBar(BuildContext ctx, String title) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      // backgroundColor: Colors.orangeAccent,
      backgroundColor: Theme.of(
        ctx,
      ).colorScheme.inversePrimary, // another way of setting color
    );
  }

  // app bar with back arrow
  static PreferredSizeWidget appBarBackIcon(String title) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      backgroundColor: Colors.orangeAccent,
      leading: Icon(Icons.arrow_back),
    );
  }

  // app bar with custom icon
  static PreferredSizeWidget appBarCustomIcon(BuildContext ctx, String title) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      backgroundColor: Theme.of(ctx).colorScheme.secondaryContainer,
      leading: Image.asset('assets/images/okay.png', width: 24, height: 24),
    );
  }

  // app bar with menu icon
  static PreferredSizeWidget appBarIconButton(BuildContext ctx, String title) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      backgroundColor: Colors.deepOrange,
      // leading: IconButton(icon : Icon(Icons.menu), onPressed: () => Navigator.pop(ctx,false)),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          Fluttertoast.showToast(
            msg: "Hello, this is a Toast",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
          );
        },
      ),
    );
  }

  // app bar with pop up menu
  static PreferredSizeWidget appBarPopUpMenu(BuildContext ctx, String title) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      backgroundColor: Theme.of(ctx).colorScheme.inversePrimary,
      actions: [
        PopupMenuButton(
          itemBuilder: (ctx) => [
            PopupMenuItem(child: Text("item 1")),
            PopupMenuItem(child: Text("Item 2")),
            PopupMenuItem(value : 3,child: Text("Item 2")),
            PopupMenuItem(value : 4,child: Row(children: [
              Icon(Icons.search, color: Theme.of(ctx).colorScheme.inversePrimary,),
              Text("Search"),
              SizedBox(width: 24,)
            ],)),
          ],
        ),
      ],
    );
  }
}
