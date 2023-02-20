import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 30,
        actions: [
          IconButton(
            icon: Icon(Icons.search_sharp),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.teal.shade800,
        title: Text(
          "Profile",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'Source Sans Pro'),
        ),
        toolbarHeight: 75,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
      ),
      backgroundColor: Colors.blueGrey[900],
      body: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container(
          //   height: 100,
          //
          //   color: Colors.redAccent,
          // ),
          // Container(color:Colors.orangeAccent ,
          // height: 100,),
          CircleAvatar(
            radius: 100,

            // backgroundImage: AssetImage(),
          ),
          Text(
            "Alakh Pandey",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Pacifico'),
          ),
          Text(
            "Teacher",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade100,
                fontFamily: 'Source Sans Pro'),
          ),
          SizedBox(
            height: 20,
            width: 150,
            child: Divider(
              color: Colors.teal,
            ),
          ),
          Card(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              elevation: 50,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(25),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.blueGrey[900],
                    size: 30,
                  ),
                  title: Text(
                    "alakh@gmail.com",
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          Card(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.blueGrey[900],
                  size: 30,
                ),
                title: Text(
                  "+91998525471",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ))
        ],
      ),
    );
  }
}
