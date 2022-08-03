import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodExample extends StatefulWidget {
  const FoodExample({Key? key}) : super(key: key);

  @override
  _FoodExampleState createState() => _FoodExampleState();
}

class _FoodExampleState extends State<FoodExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Кеңестер'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(17.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.lightBlue,
              ),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage('assets/images/16.jpg'),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  ExpansionTile(
                    tilePadding: EdgeInsets.all(8.0),
                    title: Text('Сахарлық диабеттіктерге арналған тағамдар:', style: TextStyle(fontSize: 20, color: Colors.white),),
                    children: [
                      ListTile(
                        title: Text('Картоп салаты', style: TextStyle(fontSize: 20, color: Colors.white),),
                        leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/11.jpg')
                        ),
                        subtitle: Text('Ең қатаң эндокринологтар өз пациенттеріне картопты жеуге тыйым салмайды, бірақ ...'),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          Navigator.pushNamed(context, '/tagam6');
                        },
                      ),
                      ListTile(
                        title: Text('Жабық тунец сэндвичі', style: TextStyle(fontSize: 20, color: Colors.white),),
                        leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/12.jpg')
                        ),
                        subtitle: Text('Үйде дайындалған таңғы ас үшін ғана емес, сонымен қатар ...'),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          Navigator.pushNamed(context, '/tagam7');
                        },
                      ),
                      ListTile(
                        title: Text('Щи сорпасы', style: TextStyle(fontSize: 20, color: Colors.white),),
                        leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/13.jpg')
                        ),
                        subtitle: Text('Бұл мерекелік Щи сорпасы'),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          Navigator.pushNamed(context, '/tagam8');
                        },
                      ),
                      ListTile(
                        title: Text('Жылдам тунец', style: TextStyle(fontSize: 20, color: Colors.white),),
                        leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/14.jpg')
                        ),
                        subtitle: Text('Бұл керемет хош иісті сорпаның ...'),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {Navigator.pushNamed(context, '/tagam9');},
                      ),
                    ],
                  ),
                ],
              )
            ),
            Container(
                margin: EdgeInsets.all(17.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.lightBlue,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/17.jpg'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    ExpansionTile(
                      tilePadding: EdgeInsets.all(8.0),
                      title: Text('Қан қысымы жоғары болғанда қалай тамақтанады?', style: TextStyle(fontSize: 20, color: Colors.white),),
                      children: [
                        ListTile(
                          title: Text('Натрийді тұтынуды азайтыңыз. ...', style: TextStyle(color: Colors.white),),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            openDialog();
                          },
                        ),
                        ListTile(
                          title: Text('Күшті қара және жасыл шайлардан аулақ болыңыз', style: TextStyle(color: Colors.white),),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            openDialog2();
                          },
                        ),
                        ListTile(
                          title: Text('Бөлшек тағамдарға ауысыңыз. ...', style: TextStyle(color: Colors.white),),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            openDialog3();
                          },
                        ),
                        ListTile(
                          title: Text('Майды мүмкіндігінше аз жеңіз', style: TextStyle(color: Colors.white),),
                            trailing: Icon(Icons.keyboard_arrow_right),
                            onTap: () {
                            openDialog4();
                          },
                        ),
                        ListTile(
                          title: Text('Көкөністерді көбірек жеңіз', style: TextStyle(color: Colors.white),),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            openDialog5();
                          },
                        ),
                        ListTile(
                          title: Text('Қантты аз жеңіз.', style: TextStyle(color: Colors.white),),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            openDialog6();
                          },
                        ),
                        ListTile(
                          title: Text('Магний мен калийдің дозасын арттырыңыз.', style: TextStyle(color: Colors.white),),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            openDialog7();
                          },
                        ),
                      ],
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }

  Future openDialog() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        title: Text('Натрийді тұтынуды азайтыңыз.'),
        content: Text('Ол үшін тұзды тұтынуды азайтыңыз немесе аз натрий тұзына ауысыңыз. Тұздың негізгі компоненті - натрий. Ол ағзадағы суды сақтайды. Осыған байланысты айналымдағы қан көлемі мен қысымы артады. Дәрігерлер тұзды тұтынуды қазіргі заманғы адам үшін күніне дәстүрлі 10-15 г-дан 3-4-ке дейін азайту керек деп санайды, оны қарапайым өнімдерден алуға болады. Яғни, тағамға тұз қосудың қажеті жоқ.'),
      ),
  );
  Future openDialog2() => showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      title: Text('Күшті қара және жасыл шайдан, кофеден және ең бастысы алкогольден бас тартыңыз'),
      content: Text('Барлық осы тағамдар қан тамырларының спазмын тудырады және жүрекке жүктемені арттырады.'),
    ),
  );
  Future openDialog3() => showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      title: Text('Бөлшек тағамдарға ауысыңыз'),
      content: Text('Күнделікті рационды күніне 5-6 рет біркелкі бөліктерде жейтін етіп таратыңыз. Ал ұйықтар алдында кішкене жеміс жеген немесе бір стақан майы аз айран ішкен дұрыс.'),
    ),
  );
  Future openDialog4() => showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      title: Text('Майсыз етті таңдаңыз.'),
      content: Text('Көбінесе гипертония майлы ет пен ысталған етте кездесетін холестерин бляшкалары арқылы қан тамырларының бітелуінің фонында пайда болады. Майсыз пісірілген тауық, күркетауық немесе бұзау еті гипертониямен ауыратындар үшін ең жақсы таңдау болып табылады.'),
    ),
  );
  Future openDialog5() => showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      title: Text('Натрийді тұтынуды азайтыңыз.'),
      content: Text('Ол үшін тұзды тұтынуды азайтыңыз немесе аз натрий тұзына ауысыңыз. Тұздың негізгі компоненті - натрий. Ол ағзадағы суды сақтайды. Осыған байланысты айналымдағы қан көлемі мен қысымы артады. Дәрігерлер тұзды тұтынуды қазіргі заманғы адам үшін күніне дәстүрлі 10-15 г-дан 3-4-ке дейін азайту керек деп санайды, оны қарапайым өнімдерден алуға болады. Яғни, тағамға тұз қосудың қажеті жоқ.'),
    ),
  );
  Future openDialog6() => showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      title: Text('Мүмкіндігінше май аз жеңіз:'),
      content: Text('Шұжықтар, май, сары май және май. Вегетариандық шұжықтар мен шұжықтарды мұқият қарастырыңыз, олар дұрыс диетаға ауысуды және оны ұстануды жеңілдетеді. Диетада майдың кем дегенде үштен бірін өсімдік көздерінен алуға тырысыңыз. Жануарлардың майынсыз қуырыңыз, ал бұқтырылған тағамдарға күнбағыс немесе басқа өсімдік майын қосыңыз.'),
    ),
  );
  Future openDialog7() => showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      title: Text('Көкөністерді көбірек жеңіз'),
      content: Text('Талшыққа бай тағамдар қандағы жаман холестерин деңгейін оның сіңуіне жол бермеу арқылы төмендетуге көмектеседі. Сонымен қатар, олар ұзақ уақыт бойы қанықтылық сезімін сақтауға және артық тамақтанбауға мүмкіндік береді.'),
    ),
  );
}
