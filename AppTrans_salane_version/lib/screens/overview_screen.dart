//import 'package:cached_network_image/cached_network_image.dart';
import 'package:intl/intl.dart';
//import 'package:animated_text_kit/animated_text_kit.dart';
//import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
//import 'package:flutter/cupertino.dart';
import 'package:charts_flutter/flutter.dart' as charts;
//import 'package:animated_text_kit/animated_text_kit.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Center(
              child: Text(
            "Home Page",
            style: TextStyle(fontSize: 20),
          ))
        ],
      ),
    );
  }
}

class History extends StatefulWidget {
  const History({Key key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  DateTime now = DateTime.now();
  String formattedDate;
  _HistoryState() {
    formattedDate = DateFormat('EEEE, dd MMMM yyyy').format(now);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 220,
            padding: const EdgeInsets.only(
                left: 20.0, right: 0.0, top: 50, bottom: 0),
            child: const Text(
              'Statistics',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            width: 220,
            padding: const EdgeInsets.only(
                left: 20.0, right: 0.0, top: 10, bottom: 0),
            child: const Text(
              'Tomato',
              style: TextStyle(
                color: Color.fromARGB(255, 36, 78, 37),
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
              //height: 500,
              //width: 200,
              padding: const EdgeInsets.only(
                  left: 0.0, right: 0.0, top: 10, bottom: 20),
              child: Column(children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 160, right: 0.0, top: 0, bottom: 0),
                  child: Text(
                    formattedDate,
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
                    'https://www.thespruce.com/thmb/lN44A0Kj3InO37DqwtPGZy5UyhM=/3825x3825/smart/filters:no_upscale()/indeterminate-tomato-variety-1403423-01-bf3ec05de4754840abbd8dc26514bee7.jpg',
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
                            const Text(
                              'Sick',
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 78, 37),
                                fontFamily: 'Raleway',
                                fontSize: 20,
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
                            const Text(
                              '29°C',
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 78, 37),
                                fontFamily: 'Raleway',
                                fontSize: 20,
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
                            const Text(
                              '46%',
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 78, 37),
                                fontFamily: 'Raleway',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ])),
          const Divider(
            height: 20,
            thickness: 5,
            indent: 100,
            endIndent: 100,
            color: Color.fromARGB(255, 36, 78, 37),
          ),
          Container(
              //height: 500,
              //width: 200,
              padding: const EdgeInsets.only(
                  left: 0.0, right: 0.0, top: 10, bottom: 10),
              child: Column(children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 160, right: 0.0, top: 0, bottom: 0),
                  child: Text(
                    formattedDate,
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
                    'https://img.freepik.com/photos-gratuite/vue-dessus-tomates-fraiches-mures-gouttes-eau-fond-noir_141793-3432.jpg?w=2000',
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
                            const Text(
                              'Sick',
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 78, 37),
                                fontFamily: 'Raleway',
                                fontSize: 20,
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
                            const Text(
                              '29',
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 78, 37),
                                fontFamily: 'Raleway',
                                fontSize: 20,
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
                            const Text(
                              '46%',
                              style: TextStyle(
                                color: Color.fromARGB(255, 36, 78, 37),
                                fontFamily: 'Raleway',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ])),
          const Divider(
            height: 20,
            thickness: 5,
            indent: 100,
            endIndent: 100,
            color: Color.fromARGB(255, 36, 78, 37),
          ),
        ],
      ),
    );
  }
}

class TemperatureSeries {
  final String day;
  final int temperature;
  final charts.Color barColor;

  TemperatureSeries(
      {@required this.day,
      @required this.temperature,
      @required this.barColor});
}

class TemperatureChart extends StatelessWidget {
  final List<TemperatureSeries> data;

  // ignore: use_key_in_widget_constructors
  const TemperatureChart({@required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<TemperatureSeries, String>> series = [
      charts.Series(
          id: "Temperatures",
          data: data,
          domainFn: (TemperatureSeries series, _) => series.day,
          measureFn: (TemperatureSeries series, _) => series.temperature,
          colorFn: (TemperatureSeries series, _) => series.barColor)
    ];

    return Container(
      height: 400,
      padding: const EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                "Field mean temperature per day",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Expanded(
                child: charts.BarChart(series, animate: true),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Temperature extends StatefulWidget {
  const Temperature({Key key}) : super(key: key);

  @override
  _TemperatureState createState() => _TemperatureState();
}

final List<TemperatureSeries> data = [
  TemperatureSeries(
    day: "2008",
    temperature: 20,
    barColor: charts.ColorUtil.fromDartColor(Colors.blue),
  ),
  TemperatureSeries(
    day: "2009",
    temperature: 21,
    barColor: charts.ColorUtil.fromDartColor(Colors.blue),
  ),
  TemperatureSeries(
    day: "2010",
    temperature: 20,
    barColor: charts.ColorUtil.fromDartColor(Colors.blue),
  ),
  TemperatureSeries(
    day: "2011",
    temperature: 32,
    barColor: charts.ColorUtil.fromDartColor(Colors.red),
  ),
  TemperatureSeries(
    day: "2012",
    temperature: 27,
    barColor: charts.ColorUtil.fromDartColor(Colors.orange),
  ),
  TemperatureSeries(
    day: "2013",
    temperature: 24,
    barColor: charts.ColorUtil.fromDartColor(Colors.blue),
  ),
  TemperatureSeries(
    day: "2014",
    temperature: 26,
    barColor: charts.ColorUtil.fromDartColor(Colors.blue),
  ),
  TemperatureSeries(
    day: "2015",
    temperature: 22,
    barColor: charts.ColorUtil.fromDartColor(Colors.blue),
  ),
];

class _TemperatureState extends State<Temperature> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
              child: TemperatureChart(
            data: data,
          ))
        ],
      ),
    );
  }
}

class Humidity extends StatefulWidget {
  const Humidity({Key key}) : super(key: key);

  @override
  _HumidityState createState() => _HumidityState();
}

class _HumidityState extends State<Humidity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Center(
              child: Text(
            "Humidity Page",
            style: TextStyle(fontSize: 20),
          ))
        ],
      ),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final User user = FirebaseAuth.instance.currentUser;
  String mail;
  String name;
  //var pic;
  _ProfileState() {
    mail = user.email;
    name = user.uid;
    //pic = user.photoURL;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      UserAccountsDrawerHeader(
        // <-- SEE HERE

        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 36, 78, 37).withOpacity(0.9)),

        accountName: const Text(
          '',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        accountEmail: Text(
          mail,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 14, fontFamily: 'Raleway'),
        ),
        currentAccountPicture: const CircleAvatar(
          radius: 50.0,
          backgroundColor: Color(0xFF778899),
          backgroundImage: NetworkImage(
              "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_coffee-plant_variant_small_grant_blush.jpg?v=1653602047"),
        ),
      ),
      const ExpansionTile(
        leading: Icon(
          Icons.apps,
          color: Color.fromARGB(255, 36, 78, 37),
        ),
        title: Text(
          'Also from Agritech',
          style: TextStyle(
            color: Color.fromARGB(255, 36, 78, 37),
            fontFamily: 'Raleway',
            //fontWeight: FontWeight.w600
          ),
        ),
        //subtitle: Text('Expand this tile to see its contents'),
        // Contents
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
            ),
          ),
        ],
      ),
      const ExpansionTile(
        leading: Icon(
          Icons.help_outline,
          color: Color.fromARGB(255, 36, 78, 37),
        ),
        title: Text(
          'Help and support',
          style: TextStyle(
            color: Color.fromARGB(255, 36, 78, 37),
            fontFamily: 'Raleway',
          ),
        ),
        //subtitle: Text('Expand this tile to see its contents'),
        // Contents
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
            ),
          ),
        ],
      ),
      const ExpansionTile(
        leading: Icon(
          Icons.privacy_tip_outlined,
          color: Color.fromARGB(255, 36, 78, 37),
        ),

        title: Text(
          'Terms of use and privacy policy',
          style: TextStyle(
            color: Color.fromARGB(255, 36, 78, 37),
            fontFamily: 'Raleway',
          ),
        ),
        //subtitle: Text('Expand this tile to see its contents'),
        // Contents
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
            ),
          ),
        ],
      ),
      const ExpansionTile(
        leading: Icon(
          Icons.settings_outlined,
          color: Color.fromARGB(255, 36, 78, 37),
        ),

        title: Text(
          'Settings',
          style: TextStyle(
            color: Color.fromARGB(255, 36, 78, 37),
            fontFamily: 'Raleway',
          ),
        ),
        //subtitle: Text('Expand this tile to see its contents'),
        // Contents
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
            ),
          ),
        ],
      ),
      const Divider(),
      ListTile(
        title: TextButton(
          onPressed: () {
            FirebaseAuth.instance.signOut();
          },
          child: Text(
            "Log out",
            style: TextStyle(
              color: const Color.fromARGB(255, 36, 78, 37).withOpacity(0.7),
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Raleway',
              //decoration: TextDecoration.underline,
            ),
          ),
        ),
      )
    ]));
  }
}

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({Key key}) : super(key: key);

  @override
  _OverviewScreenState createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  final User user = FirebaseAuth.instance.currentUser;
  String mail;
  String name;
  //var pic;
  _OverviewScreenState() {
    mail = user.email;
    name = user.uid;
    //pic = user.photoURL;
  }

  int selectedPage = 0;
  final _pageOptions = [
    const Home(),
    const History(),
    const Temperature(),
    const Humidity(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pageOptions[selectedPage],
        bottomNavigationBar: ConvexAppBar(
            color: Colors.grey,
            backgroundColor: Colors.white,
            activeColor: const Color.fromARGB(255, 46, 94, 51),
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              const TabItem(
                icon: Icons.home_outlined,
              ),
              const TabItem(icon: Icons.calendar_month_outlined),
              const TabItem(icon: Icons.sunny),
              const TabItem(icon: Icons.water_drop_outlined),
              const TabItem(icon: Icons.person),
            ],
            initialActiveIndex: 0, //optional, default as 0
            onTap: (int i) {
              setState(() {
                selectedPage = i;
              });
            }));
    /*return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: const Text(
          'Agritech',
        ),
        backgroundColor: const Color.fromARGB(255, 37, 69, 40),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 36, 78, 37).withOpacity(0.7)),

              accountName: const Text(
                '',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                mail,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: const CircleAvatar(
                radius: 50.0,
                backgroundColor: Color(0xFF778899),
                backgroundImage: NetworkImage(
                    "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_coffee-plant_variant_small_grant_blush.jpg?v=1653602047"),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('History'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: TextButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                child: const Text(
                  "Log out",
                  style: TextStyle(
                    color: Color.fromARGB(255, 52, 125, 65),
                    //fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Raleway',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );*/
    /*
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 60,
          ),
          Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 15, bottom: 15),
              child: DefaultTextStyle(
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color.fromRGBO(253, 111, 150, 1),
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Raleway",
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText("Congrats!"),
                    WavyAnimatedText('Well Done!'),
                  ],
                  isRepeatingAnimation: false,
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130),
            child: Container(
              padding: const EdgeInsets.only(left: 40, right: 40),
              height: 57.0,
              child: Material(
                color: const Color.fromRGBO(254, 242, 243, 1),
                child: TextButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                  },
                  child: Center(
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        color: Color.fromRGBO(253, 111, 150, 1),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Raleway',
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText('Log out'),
                        ],
                        isRepeatingAnimation: false,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );*/
  }
}
