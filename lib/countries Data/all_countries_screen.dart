import 'dart:convert';

import 'package:covid_tracker/countries%20Data/single_country_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http ;
import 'package:shimmer/shimmer.dart';
import '../Models/allCountriesModel.dart';



class countriesScreen extends StatefulWidget {
  const countriesScreen({super.key});

  @override
  State<countriesScreen> createState() => _countriesScreenState();
}

class _countriesScreenState extends State<countriesScreen> {
  @override

   List<allCountriesModel> allCountriesnameList=[];
  ScrollController scrollController = ScrollController();
  final text_converse = TextEditingController();
  var data ;

  Future<List<allCountriesModel>> getDataFromApi()async{

    final response = await http.get(Uri.parse("https://disease.sh/v3/covid-19/countries"));


    if(response.statusCode == 200){
      data = jsonDecode(response.body.toString());
      /*
     for(Map i in data){

       allCountriesModel allcountries = allCountriesModel(i['country'].toString(), i['countryInfo']['flag']);
       allCountriesnameList.add(allcountries);
     }
     */
    }
    else{
      print('api Not hit');
    }

    return allCountriesnameList;

  }





  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.deepPurpleAccent,
        child: GestureDetector(
            onTap: (){
              scrollController.jumpTo(scrollController.position.minScrollExtent);
            },
            child: const Icon(Icons.arrow_upward)),
      ),
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
                    controller: text_converse,
                    onChanged: (value){
                      setState(() {
                      });
                    },
                    decoration: const InputDecoration(
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
                FutureBuilder(
                    future: getDataFromApi(),
                    builder: (context, snapshot){
                      if(!snapshot.hasData){
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: height/10,
                                width: width/1.1,
                                decoration: const BoxDecoration(
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
                                    shape: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        borderSide: BorderSide(
                                            color: Colors.transparent
                                        )
                                    ),

                                    title: Shimmer.fromColors(
                                      highlightColor: Colors.white10,
                                      baseColor: Colors.orangeAccent.withOpacity(0.3),
                                      child: Container(
                                        width: width/3,
                                        height: height/40,
                                        color: Colors.orangeAccent,
                                      ),
                                    ),
                                    leading: Shimmer.fromColors(
                                      highlightColor: Colors.white10,
                                      baseColor: Colors.cyanAccent.withOpacity(0.3),
                                      child: const CircleAvatar(
                                        radius: 30,

                                      ),
                                    ),
                                    trailing: Shimmer.fromColors(
                                      highlightColor: Colors.white10,
                                      baseColor: Colors.greenAccent.withOpacity(0.7),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.lightGreenAccent,
                                        child: Icon(
                                          Icons.arrow_forward_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: height/10,
                                width: width/1.1,
                                decoration: const BoxDecoration(
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
                                    shape: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        borderSide: BorderSide(
                                            color: Colors.transparent
                                        )
                                    ),

                                    title: Shimmer.fromColors(
                                      highlightColor: Colors.white10,
                                      baseColor: Colors.orangeAccent.withOpacity(0.3),
                                      child: Container(
                                        width: width/3,
                                        height: height/40,
                                        color: Colors.orangeAccent,
                                      ),
                                    ),
                                    leading: Shimmer.fromColors(
                                      highlightColor: Colors.white10,
                                      baseColor: Colors.cyanAccent.withOpacity(0.3),
                                      child: const CircleAvatar(
                                        radius: 30,

                                      ),
                                    ),
                                    trailing: Shimmer.fromColors(
                                      highlightColor: Colors.white10,
                                      baseColor: Colors.greenAccent.withOpacity(0.7),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.lightGreenAccent,
                                        child: Icon(
                                          Icons.arrow_forward_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: height/10,
                                width: width/1.1,
                                decoration: const BoxDecoration(
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
                                    shape: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        borderSide: BorderSide(
                                            color: Colors.transparent
                                        )
                                    ),

                                    title: Shimmer.fromColors(
                                      highlightColor: Colors.white10,
                                      baseColor: Colors.orangeAccent.withOpacity(0.3),
                                      child: Container(
                                        width: width/3,
                                        height: height/40,
                                        color: Colors.orangeAccent,
                                      ),
                                    ),
                                    leading: Shimmer.fromColors(
                                      highlightColor: Colors.white10,
                                      baseColor: Colors.cyanAccent.withOpacity(0.3),
                                      child: const CircleAvatar(
                                        radius: 30,

                                      ),
                                    ),
                                    trailing: Shimmer.fromColors(
                                      highlightColor: Colors.white10,
                                      baseColor: Colors.greenAccent.withOpacity(0.7),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.lightGreenAccent,
                                        child: Icon(
                                          Icons.arrow_forward_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: height/10,
                                width: width/1.1,
                                decoration: const BoxDecoration(
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
                                    shape: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        borderSide: BorderSide(
                                            color: Colors.transparent
                                        )
                                    ),

                                    title: Shimmer.fromColors(
                                      highlightColor: Colors.white10,
                                      baseColor: Colors.orangeAccent.withOpacity(0.3),
                                      child: Container(
                                        width: width/3,
                                        height: height/40,
                                        color: Colors.orangeAccent,
                                      ),
                                    ),
                                    leading: Shimmer.fromColors(
                                      highlightColor: Colors.white10,
                                      baseColor: Colors.cyanAccent.withOpacity(0.3),
                                      child: const CircleAvatar(
                                        radius: 30,

                                      ),
                                    ),
                                    trailing: Shimmer.fromColors(
                                      highlightColor: Colors.white10,
                                      baseColor: Colors.greenAccent.withOpacity(0.7),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.lightGreenAccent,
                                        child: Icon(
                                          Icons.arrow_forward_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: height/10,
                                width: width/1.1,
                                decoration: const BoxDecoration(
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
                                    shape: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        borderSide: BorderSide(
                                            color: Colors.transparent
                                        )
                                    ),

                                    title: Shimmer.fromColors(
                                      highlightColor: Colors.white10,
                                      baseColor: Colors.orangeAccent.withOpacity(0.3),
                                      child: Container(
                                        width: width/3,
                                        height: height/40,
                                        color: Colors.orangeAccent,
                                      ),
                                    ),
                                    leading: Shimmer.fromColors(
                                      highlightColor: Colors.white10,
                                      baseColor: Colors.cyanAccent.withOpacity(0.3),
                                      child: const CircleAvatar(
                                        radius: 30,

                                      ),
                                    ),
                                    trailing: Shimmer.fromColors(
                                      highlightColor: Colors.white10,
                                      baseColor: Colors.greenAccent.withOpacity(0.7),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.lightGreenAccent,
                                        child: Icon(
                                          Icons.arrow_forward_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: height/10,
                                width: width/1.1,
                                decoration: const BoxDecoration(
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
                                    shape: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(10)),
                                        borderSide: BorderSide(
                                            color: Colors.transparent
                                        )
                                    ),

                                    title: Shimmer.fromColors(
                                      highlightColor: Colors.white10,
                                      baseColor: Colors.orangeAccent.withOpacity(0.3),
                                      child: Container(
                                        width: width/3,
                                        height: height/40,
                                        color: Colors.orangeAccent,
                                      ),
                                    ),
                                    leading: Shimmer.fromColors(
                                      highlightColor: Colors.white10,
                                      baseColor: Colors.cyanAccent.withOpacity(0.3),
                                      child: const CircleAvatar(
                                        radius: 30,

                                      ),
                                    ),
                                    trailing: Shimmer.fromColors(
                                      highlightColor: Colors.white10,
                                      baseColor: Colors.greenAccent.withOpacity(0.7),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.lightGreenAccent,
                                        child: Icon(
                                          Icons.arrow_forward_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                      return
                        Expanded(
                          child: ListView.builder(
                            controller: scrollController,
                            itemCount: data.length,
                            itemBuilder: (context, index){
                             // String name = snapshot.data![index].countryName.toString();
                             // String flag = snapshot.data![index].countryFlag.toString();
                             String name = data[index]['country'].toString();
                             String flag = data[index]['countryInfo']['flag'].toString();
                             String totalCases = data[index]['cases'].toString();
                             String totalDeaths = data[index]['deaths'].toString();
                             String totalRecovered = data[index]['recovered'].toString();
                             String totalActiveCases = data[index]['active'].toString();
                             String totalTestPerformed = data[index]['tests'].toString();
                             String criticalPatients = data[index]['critical'].toString();





                              if(text_converse.text.isEmpty){
                                // scroll_Controller.jumpTo(scroll_Controller.position.maxScrollExtent);
                                return GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleCountryScreen(
                                      name , flag , totalCases ,totalDeaths , totalRecovered , totalActiveCases , totalTestPerformed,criticalPatients
                                    )));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: height/10,
                                      width: width/1.1,
                                      decoration: const BoxDecoration(
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
                                          shape: const OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.transparent
                                              )
                                          ),

                                          title: Text(name,style: const TextStyle(
                                              color: Colors.orangeAccent,
                                              fontSize: 20
                                          ),),
                                          leading: CircleAvatar(
                                            radius: 30,
                                            backgroundImage: NetworkImage(flag),
                                          ),
                                          trailing: const CircleAvatar(
                                            backgroundColor: Colors.lightGreenAccent,
                                            child: Icon(
                                              Icons.arrow_forward_outlined,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );

                              }
                              else if(name.toLowerCase().contains(text_converse.text.toLowerCase())){
                                //scroll_Controller.jumpTo(scroll_Controller.position.maxScrollExtent);

                                return GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleCountryScreen(
                                        name , flag , totalCases ,totalDeaths , totalRecovered , totalActiveCases , totalTestPerformed,criticalPatients
                                    )));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: height/10,
                                      width: width/1.1,
                                      decoration: const BoxDecoration(
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
                                          shape: const OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              borderSide: BorderSide(
                                                  color: Colors.transparent
                                              )
                                          ),

                                          title: Text(name,style: const TextStyle(
                                              color: Colors.orangeAccent,
                                              fontSize: 20
                                          ),),
                                          leading: CircleAvatar(
                                            radius: 30,
                                            backgroundImage: NetworkImage(flag),
                                          ),
                                          trailing: const CircleAvatar(
                                            backgroundColor: Colors.lightGreenAccent,
                                            child: Icon(
                                              Icons.arrow_forward_outlined,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );

                              }
                              //scroll_Controller.jumpTo(scroll_Controller.position.maxScrollExtent);
                              return Container();



                            },
                          ),
                        );


                    }

                ),


              ],
            ),
          ],
        )
      ),
    );
  }
}
