import 'package:flutter/material.dart';


class countriesScreen extends StatefulWidget {
  const countriesScreen({super.key});

  @override
  State<countriesScreen> createState() => _countriesScreenState();
}

class _countriesScreenState extends State<countriesScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: height/20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Search Country",
                        labelText: "Seacrh",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        )
                    ),
                  ),
                ),
                SizedBox(
                  height: height/20,
                ),
                Container(
                  height: height/10,
                  width: width/1.1,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 3,
                          spreadRadius: 3,
                          offset: Offset(0,4)
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: Center(
                    child: ListTile(
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                              color: Colors.transparent
                          )
                      ),

                      title: Text('Pakistan',style: TextStyle(
                          color: Colors.orangeAccent,
                          fontSize: 20
                      ),),
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/splash_screen_icon.png'),
                      ),
                      trailing: CircleAvatar(
                        backgroundColor: Colors.lightGreenAccent,
                        child: Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )

              ],
            ),
          ],
        )
      ),
    );
  }
}
