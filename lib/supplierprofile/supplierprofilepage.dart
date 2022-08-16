import 'package:flutter/material.dart';
import 'AppBar.dart';

class SupplierProfilePage extends StatefulWidget {
  @override
  State<SupplierProfilePage> createState() => _SupplierProfilePage();
}

class _SupplierProfilePage extends State<SupplierProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        backgroundColor: Color(0xE7052C7),
        // Scroll view - nu merge
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(230, 40, 230, 20),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                        offset:
                            Offset(2.0, 2.0), // shadow direction: bottom right
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.person_add_alt_outlined,
                          ),
                          iconSize: 120,
                        ),
                        padding: EdgeInsets.all(30),
                        margin: EdgeInsets.all(50),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "\nNumele companiei:\n\n"
                          "Locatie:\n\n"
                          "Numar de telefon:\n\n"
                          "Adresa de e-mail:\n\n"
                          "Fondat:\n\n"
                          "Tara:\n\n"
                          "Sediu:\n\n"
                          "Stadiu:\n",
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(230, 20, 230, 20),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                        offset:
                            Offset(2.0, 2.0), // shadow direction: bottom right
                      )
                    ],
                  ),
                  child: IntrinsicHeight(
                    child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Container(
                                width: 160,
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Magazinul meu",
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 16),
                                    )),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(60),
                                              margin: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black26),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(60),
                                              margin: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black26),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(60),
                                              margin: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black26),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(60),
                                              margin: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black26),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(60),
                                              margin: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black26),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(60),
                                              margin: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black26),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    VerticalDivider(
                                      color: Colors.black26,
                                      thickness: 1,
                                      indent: 10,
                                      endIndent: 10,
                                    ),
                                    IconButton(
                                        onPressed: () {}, icon: Icon(Icons.add))
                                  ]))
                        ]),
                  )),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(230, 20, 230, 20),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 2.0,
                          spreadRadius: 0.0,
                          offset: Offset(
                              2.0, 2.0), // shadow direction: bottom right
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Container(
                              width: 160,
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Review-uri primite",
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 16),
                                  )),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        margin: EdgeInsets.all(10),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.person_outline,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black26),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Container(
                                        width: 400,
                                        padding: EdgeInsets.all(10),
                                        margin: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black26),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Text(
                                          "Acesta este un review",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        margin: EdgeInsets.all(10),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.person_outline,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black26),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Container(
                                        width: 400,
                                        padding: EdgeInsets.all(10),
                                        margin: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black26),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Text(
                                          "Acesta este un review",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        margin: EdgeInsets.all(10),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.person_outline,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black26),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Container(
                                        width: 400,
                                        padding: EdgeInsets.all(10),
                                        margin: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black26),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Text(
                                          "Acesta este un review",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ))),
            Padding(
              padding: const EdgeInsets.fromLTRB(230, 20, 230, 40),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset:
                          Offset(2.0, 2.0), // shadow direction: bottom right
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Container(
                          width: 200,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Ultimele produse vandute",
                                style: TextStyle(color: Colors.blue, fontSize: 16),
                              )),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(70),
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black26),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              Container(
                                padding: EdgeInsets.all(70),
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black26),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              Container(
                                padding: EdgeInsets.all(70),
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black26),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                            ]))
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/bluegradient.png'),
                fit: BoxFit.fill,
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(70, 40, 0, 20),
                    child: Text(
                      "Contact",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(70, 0, 0, 40),
                      child: Text(
                        "E-Mail: buildnowdpit@protonmail.com",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ))
                ],
              ),
            )
          ],
        ));
  }
}
