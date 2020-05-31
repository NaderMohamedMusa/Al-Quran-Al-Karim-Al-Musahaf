import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran/Pages/About.dart';
import 'package:quran/Pages/Duea.dart';
import 'package:quran/Pages/InfoAbMat.dart';
import 'package:quran/Pages/settings.dart';
import 'package:quran/ads.dart';
import 'package:share/share.dart';
import 'dart:convert';
import '../Data_Entity/Surah.dart';
import '../builder/SurahListBuilder.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  final initialAds = CreateAds();

  @override
  void dispose() {
    super.dispose();
    initialAds.adsDiposed();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        drawer: Drawer(child: _Drawer()),
        appBar: AppBar(
            title:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(child: Image.asset("assets/images/dua.png",width: 30,height: 30,),
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) =>
                                duea()));
                },),

                Container(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'القران الكريم',
                    )),
              ],
            )
        ),
        body: Container(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('assets/json/surah.json'),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Surah> surahList = parseJson(snapshot.data.toString());
                    return surahList.isNotEmpty
                        ?  SurahListBuilder(surah: surahList)
                        :  Center(child: new CircularProgressIndicator());
                  } else {
                    return new Center(child: new CircularProgressIndicator());
                  }
                }),
          ),
        ),
      );
  }

  List<Surah> parseJson(String response) {
    if (response == null) {
      return [];
    }
    final parsed =
    json.decode(response.toString()).cast<Map<String, dynamic>>();
    return parsed.map<Surah>((json) => new Surah.fromJson(json)).toList();
  }

  Widget _Drawer() {
    return Container(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration:BoxDecoration(color: Colors.amberAccent,borderRadius: BorderRadius.circular(20)  ) ,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                   Container(
                    width: 100,
                    height: 100
                    ,child: Image.asset("assets/images/alquran.png")
                ),
                Text(
                  'القرأن الكريم',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                ],
              ),
            ),
          ),

          ListTile(
              leading: Icon(Icons.share),
              title: Text('Share App'),
              onTap: (){
                final String url="https:FCIAPP";
                final RenderBox box =context.findRenderObject();
                Share.share(url,
                    sharePositionOrigin:
                    box.localToGlobal(Offset.zero)&box.size
                );
              }),
          ListTile(
              leading:  Icon(Provider.of<Settings>(context).isDarkMode
                  ? Icons.brightness_high
                  : Icons.brightness_low),
              title: Text('Dark Mode'),
              onTap: () {
                changeTheme(
                    Provider.of<Settings>(context, listen: false).isDarkMode ? false : true,
                    context);
              }
              ),
          ListTile(
              leading: Icon(Icons.info_outline,),
              title: Text('About'),
              onTap: () {
                initialAds.createBannerAd();
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) =>
                            About()));
              }),
          ListTile(
              leading: Icon(Icons.account_box,),
              title: Text('Information about the martyr'),
              onTap: () {
                initialAds.createInterstitialAd();
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) =>
                            infoAbMat()));
              }),
        ],
      ),
    );
  }

  void changeTheme(bool set, BuildContext context) {
    Provider.of<Settings>(context, listen: false).setDarkMode(set);
  }
}
