import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'package:quran/Pages/Duea.dart';
import 'package:quran/Pages/InfoAbMat.dart';
import 'package:quran/ads.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  String version = '0';
  String buildNumber = '0';
  final initialAds = CreateAds();


  @override
  void initState() {
    super.initState();
    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      setState(() {
        version = packageInfo.version;
        buildNumber = packageInfo.buildNumber;
      });
    });
  }


  @override
  void dispose() {
    super.dispose();
    initialAds.adsDiposed();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_backspace),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('About'),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              elevation: 0,
              child: ListTile(
                title: Text('5.0'),
                trailing: Text('النسخة التي يتطلبه التطبيق على الاقل'),
              ),
            ),
            Card(
              elevation: 0,
              child: ListTile(
                title: Text(
                  'مصحف المدينة المنورة',
                ),
                trailing: Text('الطبعة'),
              ),
            ),
            Card(
              elevation: 0,
              child: ListTile(
                title: Text('اضغط هنا',style: TextStyle(color: Colors.brown),),
                trailing: Text('لمعلومات عن الشهيد'),
                onTap: () {
                  initialAds.addAds(AdsType.INTERSTITIAL_ADS);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => infoAbMat()));
                },
              ),
            ),
            Card(
              elevation: 0,
              child: ListTile(
                trailing: Text(' مبرمج التطبيق '),
                title: Text(
                  'نادر محمد موسى ',
                ),
                subtitle: Text(
                  "رقم الوتس   01123578062",
                  style: TextStyle(color: Colors.brown),
                ),
              ),
            ),
            Spacer(),
            Center(child: Text('صدقه جارية علي روح الشهيد محمد عوض ')),
            Center(
                child: InkWell(
              child: Text(
                'للدعاء له اضغط هنا ',
                style: TextStyle(color: Colors.brown),
              ),
              onTap: () {

                initialAds.addAds(AdsType.BANNER_ADS);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => duea()));
              },
            )),
          ],
        ),
      ),
    );
  }
}
