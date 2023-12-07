import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_assessment/navbar.dart';

void main() => runApp(MaterialApp(
  home: FormSubmit(),
));

class FormSubmit extends StatefulWidget {
  @override
  _FormSubmitState createState() => _FormSubmitState();
}

class _FormSubmitState extends State<FormSubmit> {

final List<String> items = [
  'Makanan',
  'Mnuman',

];
String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 92, 92, 92).withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
                  return Nav();
              }));
            },
            icon: Icon(Icons.arrow_back_ios_new, color: const Color.fromARGB(255, 0, 0, 0)),
          ),
        ),
        actions: [
           Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade600,
                    offset: Offset(0, 3),
                    blurRadius: 3,
                    spreadRadius: 1,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(0, -3),
                    blurRadius: 1,
                    spreadRadius: 1,
                  ),
                ],
              ),
                

              child: Center(
                child: Icon(
                  CupertinoIcons.person,
                  size: 20,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
        ],
      ),
      body: Form(
  child: Padding(
    padding: const EdgeInsets.only(top: 40,), // Tambahkan jarak di sini
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Padding(
  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: const Color.fromARGB(255, 165, 165, 165),
          offset: Offset(2, 2),
          blurRadius: 5,
          spreadRadius: 1,
        ),
        BoxShadow(
          color: Color.fromARGB(255, 255, 255, 255),
          offset: Offset(-2, -2),
          blurRadius: 5,
          spreadRadius: 1,
        ),
      ],
    ),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 20, top: 30),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: 'Masukkan nama produk',
      ),
    ),
  ),
),

       Padding(
  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: const Color.fromARGB(255, 165, 165, 165),
          offset: Offset(2, 2),
          blurRadius: 5,
          spreadRadius: 1,
        ),
        BoxShadow(
          color: Color.fromARGB(255, 255, 255, 255),
          offset: Offset(-2, -2),
          blurRadius: 5,
          spreadRadius: 1,
        ),
      ],
    ),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 20, top: 30),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: 'Masukkan harga',
      ),
    ),
  ),
),
       Padding(
  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: const Color.fromARGB(255, 165, 165, 165),
          offset: Offset(2, 2),
          blurRadius: 5,
          spreadRadius: 1,
        ),
        BoxShadow(
          color: Color.fromARGB(255, 255, 255, 255),
          offset: Offset(-2, -2),
          blurRadius: 5,
          spreadRadius: 1,
        ),
      ],
    ),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 20, top: 30),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: 'Makanan',
      ),
    ),
  ),
),
        Padding(
  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: const Color.fromARGB(255, 165, 165, 165),
          offset: Offset(2, 2),
          blurRadius: 5,
          spreadRadius: 1,
        ),
        BoxShadow(
          color: Color.fromARGB(255, 255, 255, 255),
          offset: Offset(-2, -2),
          blurRadius: 5,
          spreadRadius: 1,
        ),
      ],
    ),
    child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 20, top: 30),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: 'Choose File',
      ),
    ),
  ),
),
        Padding(
  padding: EdgeInsets.all(16.0),
  child: Align(
    alignment: Alignment.centerRight,
    child: SizedBox(
      height: 45,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 33, 65, 243),
          foregroundColor: Colors.white,
          elevation: 5, // Tambahkan nilai elevation di sini
          shadowColor: Colors.grey.shade900, // Tambahkan warna shadow di sini
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(45), // Sesuaikan nilai radius di sini
          ),
        ),
        onPressed: () {},
        child: Text(
          'Submit',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    ),
  ),
),
      ],
    ),
  ),
),
    );

  }
}