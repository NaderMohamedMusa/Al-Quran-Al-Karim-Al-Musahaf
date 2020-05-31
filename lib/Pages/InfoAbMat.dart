import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/Pages/Duea.dart';

class infoAbMat extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Image.asset(
                  "assets/images/mohamed.jpg",
                  fit: BoxFit.fill,
                )),
//            SizedBox(
//              height: 5,
//            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\nهذا التطبيق صدقه جارية علي روح الشهيد محمد عوض لذلك نسأل الله ان يتقبله ويجعله صدقه جارية على روح الشهيد وأن يكون فى ميزان حسناته."
                      "\nتوفى الشهيد محمد عوض عام 2020 فى يوم 1 من شهر مايو إثر حادث إرهابي فى سيناء فى منطقة بئر العبد."
                      "\nحيث إنه تخرج في كلية هندسة جامعة الفيوم فى عام 2019 في شهر 7 والتحق بالجيش فى شهر 10 لم يمكث فى الحياة طويلا بعد التخرج كما يتمني كثير من الشباب لحياته المستقبلية ولكن أقول لك يا باشمهندس هنيئا عليك الشهادة ألم يكفي أنك رحلت إلى الله وأنت صائم وفى شهر رمضان ألم يكفي أن الله لم يحدد للصائم الثواب حيث قال الله الصيام لي وأنا أجزي به فما بالك وأنت راحل اليه وأنت صائم."
                      "\nوهكذا لا نري من الدنيا الا الغدر والخيانة وقتل النفس التي حرمه الله الا يقرءوا قول الله تعالي :َ"
                      '\n("من أَجْلِ ذَٰلِكَ كَتَبْنَا عَلَىٰ بَنِي إِسْرَائِيلَ أَنَّهُ مَنْ قَتَلَ نَفْسًا بِغَيْرِ نَفْسٍ أَوْ فَسَادٍ فِي الْأَرْضِ فَكَأَنَّمَا قَتَلَ النَّاسَ جَمِيعًا وَمَنْ أَحْيَاهَا فَكَأَنَّمَا أَحْيَا النَّاسَ جَمِيعًا ۚ َ").'
                      "\nقال الرسول -صلّى الله عليه وسلّم- في دعائه للميت: (اللهُمَّ إنَّ فلانَ بنَ فلانٍ في ذمَّتِك وحبلِ جوارِك، فأعِذْه مِن فتنةِ القبرِ، وعذابِ النَّارِ، أنتَ أهلُ الوفاءِ والحقِّ، اللَّهمَّ فاغفِرْ له وارحَمْه، إنَّك أنتَ الغفورُ الرَّحيمُ)."
                  ,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            RaisedButton(
              color: Colors.black38,
              shape: Border.all(width: 2.2),
              child: Text("أدعية للشهيد ",style: TextStyle(color: Colors.white),),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) =>
                            duea()));
              },
            )
          ],
        ),
      ),
    );
  }
}
