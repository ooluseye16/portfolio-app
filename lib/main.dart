import 'package:flutter/material.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Portfolio",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                margin: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 20.0),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(
                        shape: CircleBorder(),
                        clipBehavior: Clip.hardEdge,
                        elevation: 3.0,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/avatar.jpeg"),
                          radius: 70.0,
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "Oluseye Obisesan",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Gentlesoul",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15.0,
                                  fontStyle: FontStyle.italic),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InfoTile(
                                  assetName: "images/twitter.png",
                                  infoName: "@oluseye_obitola",
                                ),
                                InfoTile(
                                  assetName: "images/github.png",
                                  infoName: "github.com/ooluseye16",
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  "Bio",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'A calm, curious personnel looking towards becoming the next big thing. Hobbies include: Watching Anime, watching football matches, etc... Manchester United fan by the way. 😉',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Other Info",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0.0),
                leading: Icon(Icons.phone),
                title: Text("09041790535"),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0.0),
                leading: Icon(Icons.location_city),
                title: Text("Kwara State University, Malete"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final String assetName;
  final String infoName;
  const InfoTile({
    this.assetName,
    this.infoName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Row(
        children: [
          Image.asset(
            assetName,
            height: 20.0,
            width: 20.0,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(infoName)
        ],
      ),
    );
  }
}
