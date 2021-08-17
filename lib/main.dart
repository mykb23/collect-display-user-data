import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DataApp(),
    ),
  );
}

class DataApp extends StatefulWidget {
  const DataApp({Key? key}) : super(key: key);

  @override
  _DataAppState createState() => _DataAppState();
}

class _DataAppState extends State<DataApp> {
  TextEditingController firstName = new TextEditingController();
  TextEditingController lastName = new TextEditingController();
  TextEditingController work = new TextEditingController();
  TextEditingController age = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          "Data Capture",
          style: TextStyle(fontSize: 30.0),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 40.0,
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.0,
                ),
                // Text("First Name"),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Your First Name",
                    contentPadding: EdgeInsets.only(left: 30.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  controller: firstName,
                ),
                SizedBox(
                  height: 20.0,
                ),
                // Text("First Name"),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Your Last Name",
                    contentPadding: EdgeInsets.only(left: 30.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  controller: lastName,
                ),
                SizedBox(
                  height: 20.0,
                ),
                // Text("First Name"),
                TextField(
                  decoration: InputDecoration(
                    hintText: "What do you do?",
                    contentPadding: EdgeInsets.only(left: 30.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  controller: work,
                ),
                SizedBox(
                  height: 20.0,
                ),
                // Text("First Name"),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Age",
                    contentPadding: EdgeInsets.only(left: 30.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  controller: age,
                ),
                SizedBox(
                  height: 25.0,
                ),
                // Text("First Name"),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print(firstName.text);
                      print(lastName.text);
                      print(work.text);
                      print(age.text);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DispayScreen(
                            fName: firstName.text,
                            lName: lastName.text,
                            age: age.text,
                            work: work.text,
                          ),
                        ),
                      );
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(fontSize: 30.0),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
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

class DispayScreen extends StatelessWidget {
  const DispayScreen({Key? key, this.fName, this.lName, this.age, this.work})
      : super(key: key);
  final fName;
  final lName;
  final age;
  final work;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          "Data Capture",
          style: TextStyle(fontSize: 30.0),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            Container(
              // margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    width: 200.0,
                    image: AssetImage("assets/images/hng.png"),
                  ),
                  Image(
                    width: 100.0,
                    image: AssetImage("assets/images/zuri-I4G.jpg"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text.rich(
                TextSpan(
                  text: "Your name is ",
                  children: <InlineSpan>[
                    // WidgetSpan(
                    //   child: SizedBox(
                    //     width: 20.0,
                    //   ),
                    // ),
                    TextSpan(
                      text: "$fName",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.orangeAccent),
                    ),
                    TextSpan(text: " $lName"),
                    TextSpan(text: " , aged "),
                    TextSpan(
                      text: " $age ",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.orangeAccent),
                    ),
                    TextSpan(
                      text: " and worked as ",
                    ),
                    TextSpan(
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.orangeAccent),
                      text: "$work",
                    ),
                  ],
                  style: TextStyle(fontSize: 35.0),
                ),
              ),
            ),
            Text.rich(
              TextSpan(text: "Read more: ", children: [
                TextSpan(text: "https://intership.zuri.team"),
              ]),
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
