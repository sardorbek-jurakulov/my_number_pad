import 'package:flutter/material.dart';
// import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class NumberPadPage extends StatefulWidget {
  const NumberPadPage({Key? key}) : super(key: key);

  @override
  State<NumberPadPage> createState() => _NumberPadPageState();
}

class _NumberPadPageState extends State<NumberPadPage> {
  String insertedNumbers = "";

  Widget createButton(
    String buttonNumber,
    String buttonLetters,
  ) {
    return Container(
      margin: EdgeInsets.only(
        right: 25,
      ),
      child: TextButton(
        onPressed: () {
          setState(() {
            insertedNumbers += buttonNumber;
          });
        },
        child: Column(
          children: [
            Text(
              buttonNumber,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              buttonLetters,
              style: TextStyle(
                fontSize: 8,
                color:
                    (buttonLetters.isEmpty) ? Colors.transparent : Colors.black,
              ),
            ),
          ],
        ),
        style: TextButton.styleFrom(
          backgroundColor: Color(0xffD9D9D9),
          shape: CircleBorder(),
          padding: EdgeInsets.all(24),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  insertedNumbers,
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Add Number",
                  style: TextStyle(
                    color: Color(0xFF2196F3),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  createButton("1", ""),
                  createButton("2", "A B C"),
                  createButton("3", "D E F"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  createButton("4", "G H I"),
                  createButton("5", "J K L"),
                  createButton("6", "M N O"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  createButton("7", "P Q R S"),
                  createButton("8", "T U V"),
                  createButton("9", "W X Y Z"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () async {
                      // bool? res = await FlutterPhoneDirectCaller.callNumber(
                      //     insertedNumbers);
                    },
                    child: Column(
                      children: [
                        Text(
                          "call",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        // Text(
                        //   ,
                        //   style: TextStyle(
                        //     fontSize: 8,
                        //     color: (buttonLetters.isEmpty)
                        //         ? Colors.transparent
                        //         : Colors.black,
                        //   ),
                        // ),
                      ],
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xffD9D9D9),
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(24),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
