import 'package:basic_flutter/UtilsClass/AppColor.dart';
import 'package:flutter/cupertino.dart';

class LayoutWidget {
  static Container container() {
    return Container(
      width: 300,
      height: 200,
      margin: EdgeInsets.all(11),
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      clipBehavior: Clip.antiAlias,
      transform: Matrix4.identity(),
      decoration: BoxDecoration(
        color: AppColor.red,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        "Container",
        style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
      ),
    );
  }

  static SizedBox sizedBox() {
    return SizedBox(
      width: 100,
      height: 50,
      child: Text("sized box"),
    );
  }

  static Padding padding(){
    return Padding(padding: EdgeInsets.all(10), child: Text("Padding"),);
  }

  static Align align(){
    return Align(alignment: Alignment.topLeft,child: Text("Align"),);
  }

  static Center center() {
    return Center(child: Text("Centred"),);
  }

  static Row row() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("child 1"),
        Text("child 2"),
      ],
    );
  }

  static Column column() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("child 1"),
        Text("child 2"),
      ],
    );
  }

  static Expanded expanded() {
    return Expanded(child: Text("expanded"));
  }

  static Stack stack() {
    return Stack(
      children: [
        Container(color: AppColor.primary,),
        Positioned(top : 10, left: 100,
        child: Text("Stack Overlay", style: TextStyle(color: AppColor.primary),))
      ],
    );
  }




}
