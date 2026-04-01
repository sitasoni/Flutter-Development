import 'package:basic_flutter/UtilsClass/AppColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginForm {
  static Widget loginScreen() {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          const Text(
            "Sing Up!",
            style: TextStyle(
              color: AppColor.black,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person, color: AppColor.gray600),
              labelText: "Full Name",
              labelStyle: TextStyle(
                color: AppColor.black,
                fontWeight: FontWeight.w500,
              ),
              hintText: "Enter full name",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.gray, width: 1),
              ),
            ),
            keyboardType: TextInputType.text,
          ),
          SizedBox(height: 15),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email, color: AppColor.gray600),
              labelText: "Email Id",
              labelStyle: TextStyle(
                color: AppColor.gray600,
                fontWeight: FontWeight.w500,
              ),
              hintText: "Enter email id",
              hintMaxLines: 1,
              hintStyle: TextStyle(color: AppColor.gray600),
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 15),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.call, color: AppColor.gray600),
              labelText: "Mobile Number",
              labelStyle: TextStyle(
                color: AppColor.gray600,
                fontWeight: FontWeight.w500,
              ),
              hintText: "Enter mobile number",
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.phone,
          ),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.red,
              foregroundColor: AppColor.grayLightDarkMode,
              elevation: 5,
              shadowColor: AppColor.red,
              minimumSize: Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
                side: BorderSide(color: AppColor.grayLightDarkMode, width: 1),
              ),
            ),
            child: Text(
              "Create Account",
              style: TextStyle(
                color: AppColor.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget buildCard() {
    return Center(
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 5)],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(radius: 30),
            const SizedBox(height: 10),
            const Text(
              "Sita Soni",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text("Flutter Developer"),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.phone),
                Icon(Icons.email),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static Widget buildLoginForm() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text(
            "Login",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          TextField(
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email),
            ),
          ),

          const SizedBox(height: 15),

          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock),
            ),
          ),

          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () {}, child: const Text("Login")),
          ),
        ],
      ),
    );
  }
}
