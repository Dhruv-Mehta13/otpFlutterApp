import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/success.dart';

class confirmation_page extends StatefulWidget {
  const confirmation_page({super.key});

  @override
  State<confirmation_page> createState() => _confirmation_pageState();
}

class _confirmation_pageState extends State<confirmation_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MyHomePage(title: 'Flutter Demo Home Page')));
                  },
                  child: Icon(
                    size: 30,
                    Icons.arrow_back,
                    color: Colors.grey,
                  )),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 38),
              Text(
                'Verification Code',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 38),
              Expanded(
                child: Text(
                  'We have sent the verification code to your email address',
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
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.grey, // Outer border color
                      width: 2,
                    )),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.grey, // Outer border color
                      width: 2,
                    )),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.grey, // Outer border color
                      width: 2,
                    )),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.grey, // Outer border color
                      width: 2,
                    )),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                flex: 1, // Flex for left side space
                child:
                    Container(), // You can use an empty Container or SizedBox here
              ),
              Expanded(
                  flex: 10, // Flex for the middle Container
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => success()),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xFFFF8D4D), Color(0xFFF87C47)],
                        ), // Background color
                      ),
                      child: Center(
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                            color: Colors.white, // Text color
                            fontSize: 18, // Text size
                          ),
                        ),
                      ),
                    ),
                  )),
              Expanded(
                flex: 1, // Flex for right side space
                child:
                    Container(), // You can use an empty Container or SizedBox here
              ),
            ],
          )
        ],
      ),
    );
  }
}
