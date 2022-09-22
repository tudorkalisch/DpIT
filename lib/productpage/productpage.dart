import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../appbar/appbar.dart';
import '../constants/constants.dart';

class ProductPage extends StatefulWidget {
  String token;

  ProductPage({Key? key, required this.token}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  var category = "Acoperis / Tigla";
  var product = "Tigla metalica Bravo, 1540 x 1210 x 0.40 mm, rosu, lucios";
  var status = "Stoc: Disponibil";
  var description = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(appBar: AppBar(), token: widget.token),
      backgroundColor: Color(backgroundColor),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(190, 80, 190, 20),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      brickImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(50, 5, 5, 5),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  category,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black45,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  product,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 28,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20),
                                        child: Text(
                                          status,
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black87),
                                        ),
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "15.00 Lei",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 30),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Text(
                                              " / Unitate",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16),
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 5, 0, 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Rating: ",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16),
                                            ),
                                            for (var i = 0; i < 5; i++)
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                              ),
                                          ],
                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          height: 50,
                                          width: 150,
                                          child: TextButton(
                                              onPressed: () {},
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    child: Image.asset(
                                                      blueGradientPath,
                                                      fit: BoxFit.fill,
                                                      width: 150,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Cumpara",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  )
                                                ],
                                              )),
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.white),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            40, 10, 40, 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Text(
                                                "Beneficiile tale",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.check_circle_outline,
                                                    color: Colors.green,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10),
                                                    child: Text(
                                                        "Preturi mici zilnic"),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.check_circle_outline,
                                                    color: Colors.green,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10),
                                                    child: Text(
                                                        "Cumperi fara griji"),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.check_circle_outline,
                                                    color: Colors.green,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10),
                                                    child: Text(
                                                        "Garantie inclusa"),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.check_circle_outline,
                                                    color: Colors.green,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10),
                                                    child: Text(
                                                        "Calitate superioara"),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.check_circle_outline,
                                                    color: Colors.green,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10),
                                                    child: Text("Faat service"),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(200, 5, 200, 60),
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
                  Text(
                    description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16),
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
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
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
                          child: Text("Mov"),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text("Marime"),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Text("1540 x 1210 x 0.40 mm"),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.black12),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
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
                          child: Text("Lucios"),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
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
                          child: Text("Bravo"),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.black12),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text("Bucata / m²"),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Text("0.53"),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(blueGradientPath),
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
      ),
    );
  }
}
