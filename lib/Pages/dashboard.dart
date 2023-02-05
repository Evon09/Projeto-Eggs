import 'package:flutter/material.dart';

// https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

var lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
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
                              "Cam1",
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
                              "Cam1",
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
                  
                    child:Padding(
                      padding: EdgeInsets.all(10),
                      child:Container(
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
                                title: Text("Esteira-"+lista[index].toString()),
                                trailing: Icon(Icons.circle_sharp, color: Colors.green,),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                    ) 
                    ),
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
                                    color: Colors.black,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "algo",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
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
                                      "algo",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
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
                                    color: Colors.black,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "algo",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
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
                                      "algo",
                                      style: TextStyle(color: Colors.white),
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
              ],
            )),
          ],
        ));
  }
}
