import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [avatar(), name(), role(), contactNo(), contactEmail()],
          ),
        ),
      ),
    );
  }
}

Widget avatar() {
  return const CircleAvatar(
    radius: 80,
    child: CircleAvatar(
      radius: 90,
      backgroundImage: AssetImage(
        "assets/images/Profile.jpg",
        bundle: null,
      ),
    ),
    backgroundColor: Colors.red,
  );
}

Widget name() {
  return const Center(
    child: Text(
      'Omkar Chendwankar',
      style: TextStyle(
        fontFamily: 'Pacifico',
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}

Widget role() {
  return Center(
    child: Text(
      'Flutter developer'.toUpperCase(),
      style: TextStyle(
        color: Colors.teal[100],
        fontFamily: 'SourceSansPro',
        fontSize: 22,
        letterSpacing: 1,
      ),
    ),
  );
}

Widget contactNo() {
  return Card(
    margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
    child: Row(
      children: const [
        Padding(
          padding: EdgeInsets.all(18.0),
          child: Icon(
            Icons.phone,
            color: Colors.teal,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(50, 20, 20, 20),
          child: Text(
            '+91-7904527893',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.teal,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget contactEmail() {
  return Card(
    margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
    child: Row(
      children: const [
        Padding(
          padding: EdgeInsets.all(18.0),
          child: Icon(
            Icons.email,
            color: Colors.teal,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: Text(
            'omkarchendwankar45@gmail.com',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.teal,
            ),
          ),
        ),
      ],
    ),
  );
}
