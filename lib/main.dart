import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 61,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('asset/Image.svg'),
              ],
            ),
            SizedBox(
              height: 74,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 38),
                Text(
                  'OTP Verification',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 38),
                Expanded(
                  child: Text(
                    'Enter email and phone number to send one time Password',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w100,
                      color: Colors.grey.shade500,
                    ),
                    maxLines: 2,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(width: 30),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'Email',
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        suffixIcon: Icon(Icons.edit)),
                  ),
                ),
                SizedBox(width: 30)
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 30),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'phone number',
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        suffixIcon: Icon(Icons.phone)),
                  ),
                ),
                SizedBox(width: 30)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    width: 20,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.amber),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
