import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TextViewWidget {
  static Text textView(BuildContext ctx, String str) {
    return Text(
      str,
      semanticsLabel: "Greeting Text",
      textWidthBasis: TextWidthBasis.longestLine,
      textAlign: TextAlign.right,
      // text alignment left, right, center, justify, start, end
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      // clip, fade, ellipsis(...), visible
      softWrap: true,
      // true → wrap text, false → no wrapping
      textScaler: TextScaler.linear(1.0),
      // Controls scaling (accessibility)
      textDirection: TextDirection.ltr,
      // ltr (left to right), rtl (right to left)
      locale: Locale('en', 'US'),
      // Used for language-specific rendering
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 21,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        wordSpacing: 5,
        letterSpacing: 5,
        decoration: TextDecoration.underline,
        decorationColor: Colors.blue,
        decorationStyle: TextDecorationStyle.dotted,
        color: Theme.of(ctx).colorScheme.inversePrimary,
        backgroundColor: Colors.green,
        shadows: [Shadow(blurRadius: 2, color: Colors.red)],
      ),
    );
  }

  static RichText richText(BuildContext ctx, String title) {
    return RichText(
      overflow: TextOverflow.visible,
      textAlign: TextAlign.end,
      textDirection: TextDirection.rtl,
      softWrap: true,
      text: TextSpan(
        style: TextStyle(color: Colors.black),
        text: title,
        children: const [
          TextSpan(
            text: " Rich Text Example",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  static SelectableText selectableText(String str) {
    return SelectableText(
      str,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: 12,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  static SelectableText selectableTextRich(String title) {
    return SelectableText.rich(
      TextSpan(
        text: title,
        style: TextStyle(),
        children: [
          TextSpan(
            text: "Hello Developer, ",
            style: TextStyle(color: Colors.green),
          ),
          TextSpan(
            text: "How are you doing? You can copy this text.",
            style: TextStyle(color: Colors.red),
          ),
        ],
      ),
    );
  }

  static TextField textField(BuildContext ctx, String title) {
    return TextField(
      decoration: InputDecoration(
        labelText: "Full Name",
        hintText: "Enter your name",
        border: OutlineInputBorder(),
        suffixIcon: Icon(Icons.person),
      ),
      onChanged: (value) {
        title = value;
      },
      onSubmitted: (value) {
        print("Submitted: $value");
      },
      style: TextStyle(color: Colors.red),
      cursorColor: Colors.red,
    );
  }

  static TextFormField textFormField(BuildContext ctx) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Mobile Number",
        hintText: "Enter mobile number",
        border: OutlineInputBorder(),
        suffixIcon: Icon(Icons.call),
      ),
      keyboardType: TextInputType.name,
      validator: (value) => value!.isEmpty ? "Name is required" : null,
    );
  }

  static DefaultTextStyle defaultTextStyle(BuildContext ctx) {
    return DefaultTextStyle(
      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      child: Row(children: [Text("First Name : "), Text("Last Name : ")]),
    );
  }

  static EditableText editableText(BuildContext ctx, String title) {
    return EditableText(
      controller: TextEditingController(text: title),
      focusNode: FocusNode(),
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: Colors.red),
      cursorColor: Colors.red,
      backgroundCursorColor: Colors.greenAccent,
    );
  }

  // rich text constructor
  static RichText richTextConstructor({
    Key? key,
    required InlineSpan text,
    TextAlign textAlign = TextAlign.start,
    TextDirection? textDirection,
    bool softWrap = true,
    TextOverflow overflow = TextOverflow.clip,
    double textScaleFactor = 1.0,
    TextScaler textScaler = TextScaler.noScaling,
    int? maxLines,
    Locale? locale,
    StrutStyle? strutStyle,
    TextWidthBasis textWidthBasis = TextWidthBasis.parent,
    TextHeightBehavior? textHeightBehavior,
    SelectionRegistrar? selectionRegistrar,
    Color? selectionColor,
  }) {
    // TODO: implement richTextConstructor
    throw UnimplementedError();
  }
}
