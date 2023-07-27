import 'package:covid_tracker/countries%20Data/single_country_screen.dart';
import 'package:flutter/material.dart';
import 'package:unique_simple_bar_chart/data_models.dart';
import 'package:unique_simple_bar_chart/horizontal_bar.dart';
import 'package:unique_simple_bar_chart/horizontal_line.dart';
import 'package:unique_simple_bar_chart/simple_bar_chart.dart';
import 'package:pie_chart/pie_chart.dart';

import '../countries Data/all_countries_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
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
          child: Column(
            children: [
              SizedBox(
                height: height/20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(

                  height: height/3,
                  width: width/1.1,
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent.withOpacity(0.7),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            opacity: 0.2,
                            scale: 1.3,
                            image: AssetImage('assets/images/statistic_2_icon.png')
                          )
                        ),
                      ),
                      PieChart(
                        dataMap: {
                          "Today Cases" : 909090,
                          "Today Deaths":300000,
                          "Today Recovery": 707000
                        },
                        animationDuration: Duration(milliseconds: 800),
                        chartLegendSpacing: 32,
                        chartRadius: MediaQuery.of(context).size.width / 3.2,
                        colorList: [Colors.orangeAccent,Colors.redAccent,Colors.greenAccent],
                        initialAngleInDegree: 0,
                        chartType: ChartType.ring,
                        ringStrokeWidth: 32,
                        centerText: "DATA",
                        legendOptions: LegendOptions(
                          showLegendsInRow: false,
                          legendPosition: LegendPosition.left,
                          showLegends: true,
                          legendShape: BoxShape.circle,
                          legendTextStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20
                          ),
                        ),
                        chartValuesOptions: ChartValuesOptions(
                          showChartValueBackground: true,
                          showChartValues: true,
                          showChartValuesInPercentage: true,
                          showChartValuesOutside: true,
                          decimalPlaces: 1,
                        ),
                        // gradientList: ---To add gradient colors---
                        // emptyColorGradient: ---Empty Color gradient---
                      )
                    ],
                  )


                ),
              ),
              SizedBox(
                height: height/30,
              ),
              //ListView
              SizedBox(
                height: height/6,
                width: width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(

                      width: width/2,
                      height: height/10,
                      decoration: BoxDecoration(
                          color: Colors.indigoAccent,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Stack(
                        children: [
                      Container(
                        width: width/2,
                        height: height/5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            scale: 1,
                            opacity: 0.6,
                            image: AssetImage(
                                'assets/images/all_countries_icon.png'
                            ),
                          ),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                      ),
                          Center(child: Text('Countries Data',style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),),),
                          Center(
                            child: Column(

                              children: [
                                SizedBox(
                                  height: height/10,
                                ),
                                MaterialButton(
                                  minWidth: width/3,
                                    color: Colors.lightGreenAccent,
                                    shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(color: Colors.transparent)
                                    ),
                                    onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>countriesScreen()));
                                    },
                                child: Text('Search'),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(
                      width: 20,
                    ),
                    Container(

                      width: width/2,
                      height: height/10,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: width/2,
                            height: height/5,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  scale: 1,
                                  opacity: 0.6,
                                  image: AssetImage(
                                      'assets/images/my_country_icon.png'
                                  ),
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                          ),
                          Center(child: Text('My Country',style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold
                          ),),),
                          Center(
                            child: Column(

                              children: [
                                SizedBox(
                                  height: height/10,
                                ),
                                MaterialButton(
                                  minWidth: width/3,
                                  color: Colors.lightGreenAccent,
                                  shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(color: Colors.transparent)
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleCountryScreen()));
                                  },
                                  child: Text('Search'),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(
                      width: 20,
                    ),
                    Container(

                      width: width/2,
                      height: height/10,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Stack(
                        children: [
                          Container(
                            width: width/2,
                            height: height/5,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  scale: 1,
                                  opacity: 0.4,
                                  image: AssetImage(
                                      'assets/images/rate_us_out_icon.png'
                                  ),
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                          ),
                          Center(child: Text('Rate Us Now',style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold
                          ),),),
                          Center(
                            child: Column(

                              children: [
                                SizedBox(
                                  height: height/10,
                                ),
                                MaterialButton(
                                  minWidth: width/3,
                                  color: Colors.lightGreenAccent,
                                  shape: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(color: Colors.transparent)
                                  ),
                                  onPressed: (){},
                                  child: Text('Search'),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              //end listview
              SizedBox(
                height: height/60,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(

                  height: height/3.6,
                  width: width/1,
                  decoration: BoxDecoration(
                      color: Colors.lightGreenAccent.withOpacity(0.6),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  child : Padding(
                    padding: EdgeInsets.only(left: 2),
                    child: Stack(
                      children: [
                        Opacity(
                            opacity: 0.4,
                            child: Image(image: AssetImage('assets/images/statistic_icon.png'),)),
                        SimpleBarChart(

                          verticalBarTextStyleColor: Colors.red,
                          listOfHorizontalBarData: [
                            HorizontalDetailsModel(
                              name: 'All Covid Cases     ',
                              color: const Color(0xFFEB7735),
                              size: 30000000000,
                            ),
                            HorizontalDetailsModel(
                              name: 'Deaths',
                              color: Colors.cyan,
                              size: 16000000000,
                            ),
                            HorizontalDetailsModel(
                              name: 'Recovered',
                              color: const Color(0xFFFBBC05),
                              size: 27000000000,
                            ),
                            HorizontalDetailsModel(
                              name: 'Critical',
                              color: const Color(0xFFFBBC05),
                              size: 1288080890,
                            ),
                            HorizontalDetailsModel(
                              name: 'Vacianted',
                              color: const Color(0xFFFBBC05),
                              size: 29000000000,
                            ),
                          ],
                          verticalInterval: 10000000000,
                        )
                      ],
                    ),
                  ),

                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
/*
Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Padding(
padding: EdgeInsets.symmetric(horizontal: width/22,vertical: height/39),
child: Container(

width: width/1.2,
height: height/20,
decoration: BoxDecoration(
color: Colors.black12,
borderRadius: BorderRadius.all(Radius.circular(20))
),
),
)
],
)*/

// Bar chart data

/*

 Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(

                height: height/2.2,
                width: width/1.1,
                decoration: BoxDecoration(
                    color: Colors.lightGreenAccent.withOpacity(0.6),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child : SimpleBarChart(

                  listOfHorizontalBarData: [
                    HorizontalDetailsModel(
                      name: 'All Covid Cases',
                      color: const Color(0xFFEB7735),
                      size: 73000000,
                    ),
                    HorizontalDetailsModel(
                      name: 'Deaths',
                      color: const Color(0xFFEB7735),
                      size: 7300878,
                    ),
                    HorizontalDetailsModel(
                      name: 'Recovered',
                      color: const Color(0xFFFBBC05),
                      size: 120,
                    ),
                    HorizontalDetailsModel(
                        name: 'Critical',
                      color: const Color(0xFFFBBC05),
                      size: 86,
                    ),
                    HorizontalDetailsModel(
                      name: 'Vacianted',
                      color: const Color(0xFFFBBC05),
                      size: 86,
                    ),
                  ],
verticalInterval: 100000000,
                ),

              ),
            ),



 */