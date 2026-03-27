import 'package:basic_flutter/UtilsClass/AppColor.dart';
import 'package:flutter/material.dart';

class ButtonWidget {
  static ElevatedButton elevatedButton() {
    return ElevatedButton(onPressed: () {}, child: Text("Click Here"));
    /*
     1. Raised (has elevation means shadow)
     2. Used for main actions/High importance actions
     */
  }

  static ElevatedButton elevatedButtonIcon() {
    return ElevatedButton.icon(
      onPressed: () {},
      label: Text("Addition"),
      icon: Icon(Icons.add),
    );
  }

  static TextButton textButton() {
    return TextButton(onPressed: () {}, child: Text("Subtraction"));
    /*
     1. No background
     2. Lightweight
     3. Used for secondary actions
     */
  }

  static OutlinedButton outlinedButton() {
    return OutlinedButton(onPressed: () {}, child: Text("Multiplication"));
    /*
     1. Border only
     2. Medium emphasis/Medium importance actions
     3. Clean UI with outline
     */
  }

  static IconButton iconButton() {
    return IconButton(onPressed: () {}, icon: Icon(Icons.safety_divider));

    /*
    1. Used in AppBar, toolbars
    */
  }

  static FloatingActionButton floatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add_alert, color: AppColor.red),
    );
    /*
     1. Prominent action/Positioned bottom-right
     2. Usually bottom-right
     3. Used for primary screen action
     */
  }

  static DropdownButton dropdownButton() {
    return DropdownButton(
      value: "Select Item",
      items: [
        "Select Item",
        "Item 1",
        "Item 2",
      ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
      onChanged: (value) {},
    );
  }

  static DropdownButton dropdownButton2() {
    return DropdownButton<String>(
      onChanged: (value) {},
      value: "Select Item",
      items: ["Select Item", "Item 1", "Item 2"].map((item) {
        return DropdownMenuItem(value: item, child: Text(item));
      }).toList(),
    );
  }

  static PopupMenuButton popupMenuButton(BuildContext ctx) {
    return PopupMenuButton(
      itemBuilder: (ctx) => [
        PopupMenuItem(child: Text("Item 1")),
        PopupMenuItem(child: Text("Item 2")),
      ],
    );
  }
}
