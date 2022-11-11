import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../main.dart';
import '../home_page.dart';


class AddUserInitialDataPage extends StatefulWidget {
  const AddUserInitialDataPage({Key? key}) : super(key: key);

  @override
  State<AddUserInitialDataPage> createState() => _AddUserInitialDataPageState();
}

class _AddUserInitialDataPageState extends State<AddUserInitialDataPage> {


  var name = "";
  var restaurantName = "";
  var city = "";
  var zipCode = "";
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: const BoxDecoration(
                      color: Color(0xffFFA800),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: Center(
                      child: Container(
                        height: 45,
                        width:( 2.59*45),
                        decoration:  BoxDecoration(
                            color: Colors.transparent,
                            image: const DecorationImage(
                              image: AssetImage('assets/logo.png'),
                            ),
                            borderRadius: BorderRadius.circular(12)

                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Register',
                        style: GoogleFonts.nunito(
                          textStyle: const TextStyle(
                            height: 1,
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "It’s Free",
                        style: GoogleFonts.nunito(
                          textStyle:  TextStyle(
                            height: 1,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 52,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      'Name',
                      style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                          height: 1,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color:  Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),

                    child: Text(
                      'Restaurant’s Owner',
                      style: GoogleFonts.nunito(
                        textStyle:  TextStyle(
                          height: 1,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const  Color(0xff000000).withOpacity(0.6),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Name Field Can\'t be empty';
                        } else if (value.contains(",") ||
                            value.contains(".") ||
                            value.contains("-")) {
                          return 'Name Field Should not contain , . -';
                        }
                        return null;
                      },
                      cursorColor: const Color(0xffFFA800),
                      keyboardType: TextInputType.text,
                      onChanged: (str) {
                        if (mounted) {
                          setState(() {
                            name = str;
                          });
                        }
                      },
                      autofocus: true,
                      style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: 'Enter full name',
                        hintStyle: GoogleFonts.nunito(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                          ),
                        ),
                        // enabledBorder: const UnderlineInputBorder(
                        //   borderSide: BorderSide(color: Colors.black54, width: 2),
                        // ),
                        // focusedBorder: const UnderlineInputBorder(
                        //   borderSide:
                        //   BorderSide(color:  Color(0xffFFA800), width: 2),
                        // ),

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                              color: Color(0xffFFA800),
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),

                    child: Text(
                      'Restaurant Name',
                      style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                          height: 1,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),

                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Restaurant Name Field Can\'t be empty';
                        } else if (value.contains(",") ||
                            value.contains(".") ||
                            value.contains("-")) {
                          return 'Restaurant Name Field Should not contain , . -';
                        }
                        return null;
                      },
                      cursorColor: const Color(0xffFFA800),
                      keyboardType: TextInputType.name,
                      onChanged: (str) {
                        if (mounted) {
                          setState(() {
                            restaurantName = str;
                          });
                        }
                      },
                      autofocus: true,
                      style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: 'Enter Restaurant Name',
                        hintStyle: GoogleFonts.nunito(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                              color: Color(0xffFFA800),
                            )),
                        // enabledBorder: const UnderlineInputBorder(
                        //   borderSide:  BorderSide(color: Colors.black54, width: 2),
                        // ),
                        // focusedBorder: const UnderlineInputBorder(
                        //   borderSide:
                        //   BorderSide(color:  Color(0xffFFA800), width: 2),
                        // ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      'City',
                      style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                          height: 1,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),

                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'City Field Can\'t be empty';
                        } else if (value.contains(",") ||
                            value.contains(".") ||
                            value.contains("-")) {
                          return 'City Field Should not contain , . -';
                        }
                        return null;
                      },
                      cursorColor: const Color(0xffFFA800),
                      keyboardType: TextInputType.name,
                      onChanged: (str) {
                        if (mounted) {
                          setState(() {
                            city = str;
                          });
                        }
                      },
                      autofocus: true,
                      style: GoogleFonts.nunito(
                        textStyle:const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: 'Enter Restaurant City',
                        hintStyle: GoogleFonts.nunito(
                          textStyle:  const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                          ),
                        ),
                        // enabledBorder:const UnderlineInputBorder(
                        //   borderSide: BorderSide(color: Colors.black54, width: 2),
                        // ),
                        // focusedBorder:const UnderlineInputBorder(
                        //   borderSide:
                        //   BorderSide(color: Color(0xffFFA800), width: 2),
                        // ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                              color: Color(0xffFFA800),
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      'Pin Code',
                      style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                          height: 1,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),

                    child: TextFormField(
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length < 6 ||
                            value.contains(" ") ||
                            value.contains(",") ||
                            value.contains(".") ||
                            value.contains("-")) {
                          return 'Please enter valid Pin Code';
                        }
                        return null;
                      },
                      cursorColor: const Color(0xffFFA800),
                      keyboardType: TextInputType.number,
                      maxLength: 6,
                      onChanged: (str) {
                        if (mounted) {
                          setState(() {
                            zipCode = str;
                          });
                        }
                      },
                      autofocus: true,
                      style: GoogleFonts.nunito(
                        textStyle:const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: 'Enter City Pin Code',
                        hintStyle: GoogleFonts.nunito(
                          textStyle:  const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                          ),
                        ),
                        // enabledBorder:const UnderlineInputBorder(
                        //   borderSide: BorderSide(color: Colors.black54, width: 2),
                        // ),
                        // focusedBorder:const UnderlineInputBorder(
                        //   borderSide:
                        //   BorderSide(color: Color(0xffFFA800), width: 2),
                        // ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(
                              color: Color(0xffFFA800),
                            ),
                        ),
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp("[0-9/]")),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () async {
                            if (_formKey.currentState!.validate()) {
                              try {
                                // FirebaseFirestore.instance
                                //     .collection('user')
                                //     .doc(num.toString())
                                //     .set({
                                //   'kyc': false,
                                //   'kyc_date': Timestamp.now(),
                                //   'gender': pic.contains("male") ? "M" : "F",
                                //   'number': num,
                                //   'avatar': pic,
                                //   'dob': age,
                                //   'name': name,
                                //   'email': mail,
                                //   'date': Timestamp.now(),
                                //   "support": false,
                                //   'support_time': Timestamp.now(),
                                //   'support_ack': false,
                                //   'search_num': getName(num) + getName(name),
                                //   'contact': false,
                                //   'locationLatData': 0,
                                //   'locationLongData': 0,
                                //   'locationTime': Timestamp.now(),
                                //   'balance': 0,
                                //   'balCheck': [
                                //     {
                                //       'type': "INI",
                                //       'balance': 0,
                                //       'time': Timestamp.now(),
                                //     }
                                //   ],
                                //   'recent_users': [],
                                //   'my_contact_users': [],
                                // }, SetOptions(merge: true));
                              } catch (e) {
                                log(e.toString());
                              } finally {
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) =>const MyHomePage()),
                                        (Route<dynamic> route) => false);
                              }
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color:const Color(0xffFFA800),
                                borderRadius: BorderRadius.circular(40.0)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 46, vertical: 16),
                              child: Text(
                                "Submit",
                                style: GoogleFonts.montserrat(
                                  textStyle:const  TextStyle(
                                    height: 1,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffFFFFFF),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
