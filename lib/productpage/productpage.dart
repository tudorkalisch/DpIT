import 'package:flutter/material.dart';
import 'AppBar.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: Color(0xE7052C7),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(200, 80, 200, 20),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/caramida.png',
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
                                "Acoperis / Tigla",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black45,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Tigla metalica Bravo, 1540 x 1210 x 0.40 mm, rosu, lucios",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 20),
                                      child: Text(
                                        "Stoc: Disponibil / Indisponibil",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black87
                                        ),
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "15.00 Lei",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 30
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            " / Unitate",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 20),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Rating: ",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16
                                            ),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
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
                                                borderRadius: BorderRadius.circular(5),
                                                child: Image.asset(
                                                  'assets/bluegradient.png',
                                                  fit: BoxFit.fill,
                                                  width: 150,
                                                ),
                                              ),
                                              Text(
                                                "Cumpara",
                                                style: TextStyle(
                                                  color: Colors.white
                                                ),
                                              )
                                            ],
                                          )
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            "Beneficiile tale",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.check_circle_outline,
                                                color: Colors.green,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 10),
                                                child: Text(
                                                  "Preturi mici zilnic"
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.check_circle_outline,
                                                color: Colors.green,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 10),
                                                child: Text(
                                                  "Preturi mici zilnic"
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.check_circle_outline,
                                                color: Colors.green,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 10),
                                                child: Text(
                                                  "Preturi mici zilnic"
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.check_circle_outline,
                                                color: Colors.green,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 10),
                                                child: Text(
                                                  "Preturi mici zilnic"
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.check_circle_outline,
                                                color: Colors.green,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 10),
                                                child: Text(
                                                  "Preturi mici zilnic"
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                )
                              ],
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
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Text(
                    "Tigla ceramica laterala stanga ZL-333 de culoare maro cu finisaj mat.\n\n"
                    "Caracteristici tehnice:\n"
                    "Dimensiuni gresie: 400 x 245 x 12 mm\n"
                    "Dimensiuni acoperire: 335 x 205 mm\n"
                    "Greutate: 2,5 kg\n"
                    "Distantarea sireturilor: cca 335 mm\n\n"
                    "Pentru 1 m² de acoperis este nevoie de 14,4 piese de tigla"

                    "In functie de conditiile climatice, inclinatia acoperisului este proiectata sa nu fie mai mica de 25 °. Constructia tiglelor le permite sa fie asezate pe sipci la distanta de 200 mm."
                    "Tigla se monteaza pe acoperis de la dreapta la stanga, incepand de la streasina spre creasta.\n\n"

                    "In cazul unui nivel de acoperis cu panta joasa mai mic de 22 ° si al utilizarii spatiului mansardei, este necesara utilizarea foliilor de acoperis."
                    "Daca este nevoie de aceasta, placile pot fi fixate pe scanduri prin nituirea acestora sau cu sarma de legatura.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16
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
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black12
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              "Culoare"
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            "Mov"
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              "Marime"
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            "1540 x 1210 x 0.40 mm"
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black12
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              "Finisaj"
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            "Lucios"
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              "Brand"
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            "Bravo"
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black12
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Center(
                            child: Text(
                              "Bucata / m²"
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Text(
                            "0.53"
                          ),
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
      ),
    );
  }
}
