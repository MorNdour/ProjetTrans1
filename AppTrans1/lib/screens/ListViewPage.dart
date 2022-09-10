//import 'dart:html';
import 'dart:io';
import 'Data.dart';

import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget{
  ListViewPage({Key key}) : super(key: key);
  
  List<Data> dataList = [];
  List images=[
    {'date':'2022-04-23','maladie_atteinte':'health','temperature':'30 C','humidite':'45 %','image':'https://www.thespruce.com/thmb/lN44A0Kj3InO37DqwtPGZy5UyhM=/3825x3825/smart/filters:no_upscale()/indeterminate-tomato-variety-1403423-01-bf3ec05de4754840abbd8dc26514bee7.jpg'},
    {'date':'2022-04-24','maladie_atteinte':'virus_zemoi','temperature':'37 C','humidite':'48%','image':'https://www.defi-ecologique.com/wp-content/uploads/maitriser-mildiou-alternariose-tomate-sans-pesticides.jpg'},
    {'date':'2022-05-03','maladie_atteinte':'late_blight','temperature':'45 C','humidite':'60 %','image':'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Tomate_Dev_Num.png/220px-Tomate_Dev_Num.png'},
  ];

  

  // @override 
  // void initState(){
  //    super.initState();
  //    // ignore: deprecated_member_use
  //    DatabaseReference referenceData = FirebaseDatabase.instance.reference().child("historique");
  //    referenceData.once().then((DataSnapshot dataSnapShot){
  //     dataList.clear();
  //     var keys = dataSnapShot.value.keys;
  //     var values =dataSnapShot.value;
  //     for(var key in keys){
  //       Data data = new Data(
  //         values[key]["imgUrl"],
  //         values[key]["temperature"],
  //         values[key]["humidite"],
  //         values[key]["date"],
  //         values[key]["maladie_atteinte"]
  //       );
  //       dataList.add(data);
  //     }
  //     setState(() {
  //       //
  //     });
  //    });

  // }

  @override
  Widget build(BuildContext context){
    return Container(
      child: images.isEmpty ? const Center(child: Text('no Data available'),): ListView.builder(
            itemCount: images.length,
            itemBuilder: (_,index){
                return CardUi(images[index]['image'], 
                images[index]['temperature'], 
                images[index]['humidite'], 
                images[index]['date'], 
                images[index]['maladie_atteinte']);
            }) 
    );
  }

}

Widget CardUi(String imgUrl, String temperature, String humidite, String date,String maladie_atteinte){
return Container(
            //height: 500,
            //width: 200,
            padding: const EdgeInsets.only(
                left: 0.0, right: 0.0, top: 10, bottom: 20),
            child: Column(children: [
              Container(
                padding: const EdgeInsets.only(
                    left: 160, right: 0.0, top: 10, bottom: 0),
                child: Text(
                  date,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Raleway',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                padding: const EdgeInsets.only(
                    left: 0, right: 0.0, top: 10, bottom: 10),
                child: Image.network(
                  imgUrl,
                  fit:BoxFit.cover,
                  errorBuilder: (BuildContext context, Object exception,
                      StackTrace stackTrace) {
                    // Appropriate logging or analytics, e.g.
                    // myAnalytics.recordError(
                    //   'An error occurred loading "https://example.does.not.exist/image.jpg"',
                    //   exception,
                    //   stackTrace,
                    // );
                    return const Text('😢');
                  },
                ),
              ),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    //width: 100,
                    //color: Colors.grey,
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 0.0, right: 0.0, top: 10, bottom: 0),
                      color: Colors.transparent,
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            'Health',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Raleway',
                              fontSize: 20,
                              //fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            maladie_atteinte,
                            style: TextStyle(
                              color: Color.fromARGB(255, 36, 78, 37),
                              fontFamily: 'Raleway',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                  Expanded(
                    //width: 100,
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 0.0, right: 0.0, top: 10, bottom: 0),
                      color: Colors.transparent,
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            'Temperature',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Raleway',
                              fontSize: 20,
                              //fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            temperature,
                            style: TextStyle(
                              color: Color.fromARGB(255, 36, 78, 37),
                              fontFamily: 'Raleway',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    //width: 100,
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 0.0, right: 0.0, top: 10, bottom: 0),
                      color: Colors.transparent,
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            'Humidity',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Raleway',
                              fontSize: 20,
                              //fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            humidite,
                            style: TextStyle(
                              color: Color.fromARGB(255, 36, 78, 37),
                              fontFamily: 'Raleway',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            const Divider(
              height: 30,
              thickness: 5,
              indent: 100,
              endIndent: 100,
              color: Color.fromARGB(255, 36, 78, 37),
           ),
            ])
            );
        
}
