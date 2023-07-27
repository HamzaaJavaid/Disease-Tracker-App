import 'package:flutter/material.dart';

class SingleCountryScreen extends StatefulWidget {
  const SingleCountryScreen({super.key});

  @override
  State<SingleCountryScreen> createState() => _SingleCountryScreenState();
}

class _SingleCountryScreenState extends State<SingleCountryScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return  Scaffold(
        bottomNavigationBar: Container(
          width: width,
          height: height/17,
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.5),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular((30)),
                  topLeft: Radius.circular((30))
              )
          ),
          child: Row(
            children: [
              Expanded(child: Icon(Icons.home,color: Colors.white,size: 30,)),
              Expanded(child: Icon(Icons.sunny,color: Colors.white,size: 30,)),
              Expanded(child: Icon(Icons.mark_unread_chat_alt_sharp,color: Colors.white,size: 30,)),
              Expanded(child: Icon(Icons.person_2,color: Colors.white,size: 30,)),
            ],
          ),
        ),
      body: SingleChildScrollView(
        child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: height/30,
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/images/splash_screen_icon.png'),
                  backgroundColor: Colors.greenAccent,
                ),
                SizedBox(
                  height: height/30,
                ),
                Text('COUNTRY_NAME',style: TextStyle(
                  fontSize: 22
                ),),
                SizedBox(
                  height: height/30,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.greenAccent.withOpacity(0.7),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  width: width/1.1,
                  height: height/1.7,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Container(
                        height: height/10,
                        width: width/1.2,
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

                            title: Text('TOTAL CASES',style: TextStyle(
                                color: Colors.black,
                                fontSize: 20
                            ),),
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/images/splash_screen_icon.png'),
                            ),
                            trailing:Text('727207079020',style: TextStyle(
                              color: Colors.red,
                              fontSize: 14 ,
                            ),),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: height/10,
                        width: width/1.2,
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

                            title: Text('DEATHS',style: TextStyle(
                                color: Colors.red,
                                fontSize: 20
                            ),),
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/images/splash_screen_icon.png'),
                            ),
                            trailing:Text('727207079020',style: TextStyle(
                              color: Colors.red,
                              fontSize: 14 ,
                            ),),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: height/10,
                        width: width/1.2,
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

                            title: Text('RECOVERED',style: TextStyle(
                                color: Colors.green,
                                fontSize: 20
                            ),),
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/images/splash_screen_icon.png'),
                            ),
                            trailing:Text('727207079020',style: TextStyle(
                              color: Colors.red,
                              fontSize: 14 ,
                            ),),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: height/10,
                        width: width/1.2,
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

                            title: Text('ACTIVE CASES',style: TextStyle(
                                color: Colors.orangeAccent,
                                fontSize: 20
                            ),),
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/images/splash_screen_icon.png'),
                            ),
                            trailing:Text('727207079020',style: TextStyle(
                              color: Colors.red,
                              fontSize: 14 ,
                            ),),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: height/10,
                        width: width/1.2,
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

                            title: Text('TOTAL TEST ',style: TextStyle(
                                color: Colors.deepPurpleAccent,
                                fontSize: 20
                            ),),
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/images/splash_screen_icon.png'),
                            ),
                            trailing:Text('727207079020',style: TextStyle(
                              color: Colors.red,
                              fontSize: 14 ,
                            ),),
                          ),
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        ),
      )
    );
  }
}
