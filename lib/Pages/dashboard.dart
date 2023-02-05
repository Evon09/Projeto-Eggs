import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

// https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

var lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
var cam = 1;
var com = 0;
var total = 0;
var atual = 0;
var cont = 0;
var maior = 0;

Random random = new Random();

class _DashboardState extends State<Dashboard> {
  late Timer _timer;

  @override
  void initState() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      randon();
    });
  }

  void randon() {
    atual = random.nextInt(4);
    com = com + atual;
    total = total + com;
   
    if (atual > maior || cont == 0) {
      maior = atual;
    }
    cont++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 240, 240, 240),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.black,
                          ),
                          child: Center(
                            child: Text(
                              "Grafico",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )),
                  Expanded(
                      child: Column(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.black,
                          ),
                          child: Center(
                            child: Text(
                              "Cam${cam}",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.black,
                          ),
                          child: Center(
                            child: Text(
                              "Cam${cam}",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )),
                    ],
                  )),
                ],
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color.fromARGB(255, 211, 211, 211),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(20),
                          child: Text(
                            'Esteiras online',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: lista.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 231, 231, 231),
                                ),
                                child: ListTile(
                                  title: Text(
                                    "Esteira-" + lista[index].toString(),
                                  ),
                                  trailing: Icon(
                                    Icons.circle_sharp,
                                    color: Colors.green,
                                  ),
                                  onTap: () {
                                    if (cam != index + 1) {
                                      com = 0;
                                    }
                                    cam = index + 1;
                                    setState(() {});
                                    print("Item tocado: " +
                                        lista[index].toString());
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                      child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Contagem Esteira-${cam}",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        "${com}",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  )),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                      child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Total",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        "${((total / 3) * 10).toStringAsFixed(0)}",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                      child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Atual",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        "${atual}",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  )),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                      child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Pico",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        "${maior}",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ],
        ));
  }
}
