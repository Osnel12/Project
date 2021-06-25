import 'package:flutter/material.dart';

class Log extends StatefulWidget {
  @override
  _LogState createState() => _LogState();
}

class _LogState extends State<Log> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentindex,
        //backgroundColor: Colors.orange.withOpacity(0.5),
        elevation: 10,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        selectedFontSize: 10,
        iconSize: 20,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: (value) {
          setState(() {
            _currentindex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            // ignore: deprecated_member_use
            title: Text("Profil"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            // ignore: deprecated_member_use
            title: Text("Search"),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Image.asset("img/person.png"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 25.0, top: 10.0),
                  child: Column(
                    children: [
                      Text(
                        "Céphax DISTEL",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Developpeur Flutter",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 40.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(25.0)),
                        child: Center(
                          child: Text(
                            "Puissance: 20/100",
                            style: TextStyle(color: Colors.orange[900]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Etudiant en 1ere année d'expertisme informatique, je pousse ma curiosité dans la découverte de l'univers Flutter",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 2.0),
              child: Row(
                children: [
                  Text(
                    ("Super Pouvoir"),
                    style: TextStyle(
                        color: Colors.blue[700], fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 240.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    children: [
                      Image.asset(
                        "img/ic.png",
                      ),
                      Image.asset("img/icc.png"),
                      Image.asset("img/iic.png"),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0, top: 30.0),
                          child: Image.asset("img/1c.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0, left: 5.0),
                          child: Image.asset("img/c2+.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0, left: 0.0),
                          child: Image.asset("img/pyt.png"),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
