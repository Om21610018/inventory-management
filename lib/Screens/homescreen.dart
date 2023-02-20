import 'package:flutter/material.dart';
import 'profilepage.dart';

void main() {
  runApp(MaterialApp(
    home: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: CircleAvatar(
                          radius: 60,
                        ),
                        onTap: () {},
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Gajraj Gaje",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Myapp();
                        }));
                      },
                      child: ListTile(
                        leading: Icon(Icons.home_outlined),
                        title: Text("Home"),
                      ),
                    ),
                    GestureDetector(
                      child: ListTile(
                        leading: Icon(Icons.payment_outlined),
                        title: Text("Transaction"),
                      ),
                    ),
                    GestureDetector(
                      child: ListTile(
                        leading: Icon(Icons.notes),
                        title: Text("Diary"),
                      ),
                    ),
                    GestureDetector(
                      child: ListTile(
                        leading: Icon(Icons.person_3_outlined),
                        title: Text("Profile"),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Profilepage();
                          }));
                        },
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white10,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Inventory management'),
      ),
      body: Center(child: Text("HELLO")),
    );
  }
}
