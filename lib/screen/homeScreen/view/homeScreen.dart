import 'package:flutter/material.dart';
import 'package:shrprefrence/shrFile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: txtemail,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter email or password'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: txtpass,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter password'),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    String email = txtemail.text;
                    String pass = txtpass.text;

                    insertData(email, pass);
                  },
                  child: Text("SAVE"),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () async {
                    List l1 = await readData();

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("email : ${l1[0]},pass : ${l1[1]}")));
                  },
                  child: Text("READ DATA"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
