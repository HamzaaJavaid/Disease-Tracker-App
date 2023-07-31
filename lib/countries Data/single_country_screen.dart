import 'package:flutter/material.dart';

class SingleCountryScreen extends StatefulWidget {


  String name ;
  String flag ;
  String totalCases ;
  String totalDeaths ;
  String totalRecovered ;
  String totalActiveCases ;
  String totalTestPerformed ;
  String criticalPatients ;

  SingleCountryScreen(this.name,this.flag,this.totalCases,this.totalDeaths,this.totalRecovered,this.totalActiveCases,this.totalTestPerformed,this.criticalPatients );

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
          height: height/15,
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent.withOpacity(0.5),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular((30)),
                  topLeft: Radius.circular((30))
              )
          ),
          child: const Row(
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
        child: Column(
          children: [
            SizedBox(
              height: height/30,
            ),
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(widget.flag),
              backgroundColor: Colors.greenAccent,
            ),
            SizedBox(
              height: height/30,
            ),
            Text(widget.name,style: const TextStyle(
                fontSize: 22
            ),),
            SizedBox(
              height: height/30,
            ),
            Row(

              children: [
                const SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(

                      image: const DecorationImage(
                        opacity: 0.6,

                        image: AssetImage('assets/images/deaths.png')
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: Offset(0,3)
                        )
                      ],
                        color: Colors.redAccent.withOpacity(0.8),
                        borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),
                    width: width/3,
                    height: height/7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(),
                        Text(widget.totalDeaths,style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22
                        )),
                        const Text('Total Deaths',style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(

                        image: DecorationImage(
                            opacity: 0.6,
                            image: AssetImage('assets/images/cases.png')
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 3,
                              blurRadius: 3,
                              offset: Offset(0,3)
                          )
                        ],
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    width: width/3,
                    height: height/7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const  SizedBox(),
                        Text(widget.totalCases,style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22
                        )),
                        const Text('Total Cases',style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(

              children: [
                const   SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(

                        image:const DecorationImage(
                            opacity: 0.6,
                            image: AssetImage('assets/images/recovered.png')
                        ),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 3,
                              blurRadius: 3,
                              offset: Offset(0,3)
                          )
                        ],
                        color: Colors.lightGreenAccent.withOpacity(0.9),
                        borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),
                    width: width/3,
                    height: height/7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(),
                        Text(widget.totalRecovered,style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22
                        )),
                        const Text('Total Recoverd',style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(

                        image: DecorationImage(
                            opacity: 0.6,
                            image: AssetImage('assets/images/active.png')
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 3,
                              blurRadius: 3,
                              offset: Offset(0,3)
                          )
                        ],
                        color: Colors.cyanAccent,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    width: width/3,
                    height: height/7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(),
                        Text(widget.totalActiveCases,style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22
                        )),
                        const Text('Total Active',style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(

              children: [
                const SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(

                        image: DecorationImage(
                            opacity: 0.4,
                            image: AssetImage('assets/images/test_performed.png')
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 3,
                              blurRadius: 3,
                              offset: Offset(0,3)
                          )
                        ],
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    width: width/3,
                    height: height/7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(),
                        Text(widget.totalTestPerformed,style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22
                        )),
                        const Text('Total Test Performed',style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(

              children: [
                const SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(

                        image: DecorationImage(
                            opacity: 0.6,
                            image: AssetImage('assets/images/critical.png')
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 3,
                              blurRadius: 3,
                              offset: Offset(0,3)
                          )
                        ],
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    width: width/3,
                    height: height/7,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(),
                        Text(widget.criticalPatients,style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22
                        )),
                        const Text('Total Critical Patients',style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
              ],
            ),
          ],
        ),
        ),
      )
    );
  }
}

/*
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
 */