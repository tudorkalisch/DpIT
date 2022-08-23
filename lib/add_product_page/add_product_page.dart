import 'package:flutter/material.dart';
import '../appbar/appbar.dart';
import '../constants/constants.dart';
import '../landingpage/contactcard.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({Key? key}) : super(key: key);

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(appBar: AppBar()),
      backgroundColor: Color(backgroundColor),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(190, 80, 190, 20),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white
                      ),
                      child: Icon(
                        Icons.add_a_photo_rounded,
                        size: 222,
                        color: Colors.black45,
                      )
                    )
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 5, 5),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 1.0,
                                      spreadRadius: 0.0,
                                      offset:
                                          Offset(0.5, 0.5), 
                                    )
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: TextField(
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Introduceți titlul",
                                      hintStyle: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 1.0,
                                      spreadRadius: 0.0,
                                      offset:
                                          Offset(0.5, 0.5), 
                                    )
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Introduceți categoria",
                                        hintStyle: TextStyle(fontSize: 14)),
                                  ),
                                ),
                              )
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 1.0,
                                      spreadRadius: 0.0,
                                      offset:
                                          Offset(0.5, 0.5), 
                                    )
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Introduceți subcategoria",
                                        hintStyle: TextStyle(fontSize: 14)),
                                  ),
                                ),
                              )
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 1.0,
                                    spreadRadius: 0.0,
                                    offset:
                                        Offset(0.5, 0.5), 
                                  )
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: TextField(
                                  style: TextStyle(
                                    fontSize: 14,
                                    // fontWeight: FontWeight.bold
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Introduceți numărul de unități",
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold
                                    )
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(190, 15, 190, 60),
            child: Container(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Descriere",
                      style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 1.0,
                          spreadRadius: 0.0,
                          offset:
                              Offset(0.5, 0.5), 
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: TextField(
                        textAlign: TextAlign.justify,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Adăugați o descriere a produsului",
                            hintStyle: TextStyle(fontSize: 14)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(200, 10, 200, 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Specificatii produs",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.black12),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text("Culoare"),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Introduceți culoarea",
                              hintStyle: TextStyle(fontSize: 14),
                              border: InputBorder.none),
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text("Mărime"),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Introduceți mărimea",
                              hintStyle: TextStyle(fontSize: 14),
                              border: InputBorder.none),
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.black12),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text("Finisaj"),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Introduceți tipul de finisaj",
                              hintStyle: TextStyle(fontSize: 14),
                              border: InputBorder.none),
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text("Brand"),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Introduceți brand-ul",
                              hintStyle: TextStyle(fontSize: 14),
                              border: InputBorder.none),
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.black12),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(" Bucăți/m²"),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Introduceți numărul de bucăți",
                              hintStyle: TextStyle(fontSize: 14),
                              border: InputBorder.none),
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          ContactCard()
        ],
      ),
    );
  }
}
