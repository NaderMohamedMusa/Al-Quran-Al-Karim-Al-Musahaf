import 'package:flutter/material.dart';

class duea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            alignment: Alignment.bottomRight,
            child: Text(
              "دعاء للشهيد",
              style: TextStyle(fontSize: 25),
              textDirection: TextDirection.ltr,
            )),
      ),
      body: Stack(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width,
              height:  MediaQuery.of(context).size.height,
              child: Image.asset("assets/images/mother.jpg",fit: BoxFit.fill,)),
          ListView(
            children: <Widget>[
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    " اللهمّ أنزله منازل الصدّيقين، والشّهداء، والصّالحين، وحسُن أولئك رفيقاً. ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    " اللهم ارحم محمد برحمتك و اربط على قلب والدته و اهله و تقبله شهيد. ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    " اللهم ارحم الشهيد محمد واجعل رحيله راحه له من فتن الدنيا واجعله ضاحكا مستبشرا بالفردوس. ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "اللهم ارحم كل شهيد وتقبله قبول حسن. ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    " اللهم ارحم شهيدنا، اللهم انر قبره. ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    " اللهم ارحم شهيدنا وباقي شهداء الحق وادخلة جنات العلى. ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "اللهمّ أبدله داراً خيراً من داره، وأهلاً خيراً من أهله، وأدخله الجنّة، وأعذه من عذاب القبر، ومن عذاب النّار.",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "اللهمّ عامله بما أنت أهله، ولا تعامله بما هو أهله.",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "اللهمّ اجزه عن الإحسان إحساناً، وعن الإساءة عفواً وغفراناً. اللهمّ إن كان محسناً فزد من حسناته، وإن كان مسيئاً فتجاوز عن سيّئاته.",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "اللهمّ اجزه عن الإحسان إحساناً، وعن الإساءة عفواً وغفراناً.",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    " اللهمّ إن كان محسناً فزد من حسناته، وإن كان مسيئاً فتجاوز عن سيّئاته.",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "اللهمّ أدخله الجنّة من غير مناقشة حساب، ولا سابقة عذاب.",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    " اللهمّ آنسه في وحدته، وفي وحشته، وفي غربته. ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    " اللهمّ اجعل قبره روضةً من رياض الجنّة، ولا تجعله حفرةً من حفر النّار. ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    " اللهمّ احشره مع المتّقين إلى الرّحمن وفداً. ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    " اللهمّ اجعله في بطن القبر مطمئنّاً، وعند قيام الأشهاد آمناً، وبجود رضوانك واثقاً، وإلى أعلى درجاتك سابقاً. ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    " اللهمّ يمّن كتابه، ويسّر حسابه، وثقّل بالحسنات ميزانه، وثبّت على الصّراط أقدامه، وأسكنه في أعلى الجنّات، بجوار حبيبك ومصطفاك صلّى الله عليه وسلّم. ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    " اللهمّ انقله من مواطن الدّود، وضيق اللّحود، إلى جنّات الخلود. ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    " اللهمّ إنّه عبدك وابن عبدك، خرج من الدّنيا، وسعتها، ومحبوبها، وأحبّائه فيها، إلى ظلمة القبر، وما هو لاقيه. ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    " اللهم نور مرقده و عطر مشهده و طيب مضجعه اللهم آنس وحشته و ارحم غربته و قه عذاب القبر و عذاب النار اللهم نقه من خطاياه كما ينقى الثوب الأبيض من الدنس اللهم فسح له في قبره و اجعله روضة من رياض الجنة و لا تجعله حفرة من حفر النار اللهم انقله من ضيق اللحود و القبور إلى سعة الدور و القصور مع الذين أنعمت عليهم من الصديقين و الصالحين والشهداء اللهم اجعل له من فوقه و من تحته و من أمامه و من خلفه و عن يمينه و عن يساره نورا من نورك يا نور السماوات و الأرض اللهم أبدله دارا خيرا من داره و أهلا خيرا من أهله و أزواجا خيرا من أزواجه واسكنه فسيح جناتك في الدراجات العلي. ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    " يارب أرحم من أستوفيت أجله وأخذته من بين أهله وأنت وحدك تعلم ألم فقده، اللهم أرحمه وأغفر له وأجمعنا به في جنتك. ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    " اللهم ارحم شهيدنا وباقي شهداء الحق وادخلة جنات العلى. ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    " بين أتربة القبور المظلمة اجساد نحبها اللهم ارحم وجوها بشوشه فقدناها وصدورا رحبه ضاقت بنا الدنيا بعدها اللهم وسع قبورهم بنعيم لا يفنى. ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                shape: Border.all(
                    color: Colors.amber, width: 3, style: BorderStyle.solid),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    " اللهم ارحم من يقتلني شوقي إليه،من لا تغيب صوره عن مخيلتي،من صوته أصبح يشبه صوت الآخرين،من اصبحت احتاجه فلا أجده،من كان لي مثل “الاسم”، بطلي شهيد. ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
