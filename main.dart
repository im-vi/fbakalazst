import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MENU", style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.green
        ),
        body: Container(
          color: Colors.blue,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.black,
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(75)
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 50,
                    ),
                    side: BorderSide(color: Colors.blue, width: 20)
                  ),
                  child: Text("GALERIA", style: TextStyle(fontSize: 32)),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Form()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.black,
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(75)
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 50,
                    ),
                    side: BorderSide(color: Colors.blue, width: 20)
                  ),
                  child: Column(
                    children: [
                      Text("Formularz", style: TextStyle(fontSize: 32)),
                      Text("adopcyjny", style: TextStyle(fontSize: 32)),
                    ],
                  )
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Seats()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.black,
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(75),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 50,
                    ),
                    side: BorderSide(color: Colors.grey, width: 20),
                  ),
                  child: Column(
                    children: [
                      Text("Rozkład", style: TextStyle(fontSize: 32)),
                      Text("miejsc", style: TextStyle(fontSize: 32)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  int counter = 1;
  var image = "assets/400.jpg";
  var name = "Donald Tusk";
  var party = "Koalicja Obywatelska";
  var position = "Premier RP";
  var desc = "'pan jest niemieckim agentem'";
  void fwd() {
    counter++;
    if (counter == 11) {
      counter = 1;
    }
    changePicture();
  }

  void back() {
    counter--;
    if (counter == 0) {
      counter = 10;
    }
    changePicture();
  }

  void changePicture() {
    if (counter == 1) {
      setState(() {
        image = "assets/400.jpg";
        name = "Donald Tusk";
        party = "Koalicja Obywatelska";
        desc = "'pan jest niemieckim agentem'";
        position = "Premier RP";
      });
    } else if (counter == 2) {
      setState(() {
        image = "assets/133.jpg";
        name = "Szymon Hołownia";
        party = "Polska 2050";
        desc = "Prowadzący program Sejmflix";
        position = "Wicemarszałek Sejmu";
      });
    } else if (counter == 3) {
      setState(() {
        image = "assets/241.jpg";
        name = "Sławomir Mentzen";
        party = "Konfederacja";
        position = "Poseł na Sejm";
        desc = "memcen";
      });
    } else if (counter == 4) {
      setState(() {
        image = "assets/58.jpg";
        name = "Włodzimierz Czarzasty";
        party = "Lewica";
        desc = "Urzędował w komuszej dziruce";
        position = "Marszałek Sejmu";
      });
    } else if (counter == 5) {
      setState(() {
        image = "assets/90.jpg";
        name = "Krzysztof Gawkowski";
        party = "Lewica";
        desc = "nwm xd";
        position = "Minister Cyfryzacji";
      });
    } else if (counter == 6) {
      setState(() {
        image = "assets/97.jpg";
        name = "Roman Giertych";
        party = "Koalicja Obywatelska";
        desc = "mundurek";
        position = "Poseł na Sejm";
      });
    } else if (counter == 7) {
      setState(() {
        image = "assets/145.jpg";
        name = "Marcin Józefaciuk";
        party = "Koalicja Obywatelska";
        desc = "Rozdawał nastolatkom pieniądze na antenie TVN";
        position = "Poseł na Sejm";
      });
    } else if (counter == 8) {
      setState(() {
        image = "assets/148.jpg";
        name = "Jarosław Kaczyński";
        party = "Prawo i Sprawiedliwość";
        desc = "Nasz wielki wódz JA-RO-SŁAW JA-RO-SŁAW";
        position = "Poseł na Sejm";
      });
    } else if (counter == 9) {
      setState(() {
        image = "assets/170.jpg";
        name = "Michał Kołodziejczak";
        party = "Agrounia";
        desc = "CICHO CISZA ja mówie";
        position = "Poseł na Sejm";
      });
    } else if (counter == 10) {
      setState(() {
        image = "assets/174.jpg";
        name = "Władysław Kosiniak-Kamysz";
        party = "Polskie Stronnictwo Ludowe";
        desc = "tygrysek";
        position = "Minister Obrony Narodowej";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("GALERIA", style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.green,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)
          ),
        ),
        body: Container(
          color: Colors.blue,
          child: Center(
            widthFactor: MediaQuery.of(context).size.width * 0.9,
            heightFactor: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.height * 0.4,
                  child: Center(child: Image.asset(image)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FloatingActionButton(
                      onPressed: back,
                      child: Icon(Icons.arrow_back, color: Colors.red),
                    ),
                    FloatingActionButton(
                      onPressed: fwd,
                      child: Icon(Icons.arrow_forward, color: Colors.green),
                    ),
                  ],
                ),
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.height * 0.4,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                        Text("Partia: $party", style: TextStyle(fontSize: 18)),
                        Text(
                          "Stanowisko: $position",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text("Opis: $desc", style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Form extends StatefulWidget {
  Form({super.key});

  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {
  TextEditingController imieController = TextEditingController();
  TextEditingController nazwiskoController = TextEditingController();
  String imie = "";
  String nazwisko = "";
  String dziekujemy = "";
  Color pole = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Formularz", style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.green,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Container(
          color: Colors.blue,
          width: MediaQuery.of(context).size.width,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Twoje Dane", style: TextStyle(fontSize: 24), textAlign: TextAlign.center),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text("Imię", textAlign: TextAlign.left),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextField(
                          controller: imieController,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text("Nazwisko", textAlign: TextAlign.left),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextField(
                          controller: nazwiskoController,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: pole,
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.width * 0.6,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text("$dziekujemy", style: TextStyle(fontSize: 32)),
                      SizedBox(
                        height: 30,
                      ),
                      Text("$imie $nazwisko", style: TextStyle(fontSize: 32)),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      imie = imieController.text;
                      nazwisko = nazwiskoController.text;
                      dziekujemy = "Dziękujemy za adopcję";
                      pole = Colors.white;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.red,
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(75)
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 50,
                    ),
                    side: BorderSide(color: Colors.blue, width: 20)
                  ),
                  child: Text("Adoptuj")
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Seats extends StatelessWidget {
  Seats({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Rozkład miejsc",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Container(
          color: Colors.blue,
          child: Center(
            child: Image.asset("assets/miejsca.png"),
          ),
        ),
      ),
    );
  }
}
