import 'dart:ui';

import 'package:flutter/material.dart';

class KartopExapmple extends StatelessWidget {
  const KartopExapmple({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 300.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Container(
                  padding: EdgeInsets.all(4),
                  child: Text('Картоп салаты', style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.bold)),
                ),
                background: Image.asset('assets/images/11.jpg', fit: BoxFit.cover),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0, bottom: 12.0),
                    child: Text('Ең қатаң эндокринологтар өз пациенттеріне картопты жеуге тыйым салмайды, бірақ олардың тұтынуын күніне 200 граммға дейін шектеуге кеңес береді. Сондықтан, бұл салатты дайындаған кезде, сорпалар мен күннің басқа тағамдарында картоп жоқ екеніне көз жеткізіңіз.'
                      , style: TextStyle(fontSize: 16.0), textAlign: TextAlign.justify,),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 5.0, left: 5.0),
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Wrap(
                          spacing: 8.0,
                          runSpacing: 4.0,
                          children: [
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('332,4 ккал', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.lightGreen,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('всего жиров 18 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('белки 5,4 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('углеводы 37,4 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('холестерин 45 мг', style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.timer),
                            Text('Істеу уақыты: 35 мин.')
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.signal_cellular_alt),
                            Text('Күрделілігі: орташа')
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.food_bank),
                            Text('Порция: 4 max.')
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.lightBlue
                    ),
                    padding: EdgeInsets.all(15.0),
                    height: 120,
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('ҮЙ ҚОЖАЙЫНЫНА ЕСКЕРТПЕ', style: TextStyle(fontSize: 20, color: Colors.white), textAlign: TextAlign.center,),
                        Text('Егер қымыздық сізге қарсы болса, оны шпинатпен немесе руколамен ауыстырыңыз.', style: TextStyle(fontSize: 15, color: Colors.white), textAlign: TextAlign.center)
                      ],
                    ),
                  ),
                  ExpansionTile(
                      title: Text('Пісіру рецептік қадамдары', style: TextStyle(fontSize: 24),),
                    children: [
                      ListTile(
                        title: Text('1 қадам'),
                        subtitle: Text('Картопты щеткамен жақсылап жуып, қабығында қайнаған тұзды суда жұмсақ болғанша қайнатыңыз, шамамен 25 минут.'),
                      ),
                      ListTile(
                        title: Text('2 қадам'),
                        subtitle: Text('Пісірілген картопты ағызып, 10 минут суытып, 4 бөлікке кесіңіз. Пиязды тазалап, сақиналарға кесіңіз. Картоп пен пиязды ыдысқа салыңыз.'),
                      ),
                      ListTile(
                        title: Text('3 қадам'),
                        subtitle: Text('Қышаны 2 ас қасықпен араластырыңыз. л. күнбағыс майы, тұз және бұрыш. Картопты пиязбен дәмдеңіз және бір жаққа қойыңыз.'),
                      ),
                      ListTile(
                        title: Text('4 қадам'),
                        subtitle: Text('Қымыздықты жолақтарға кесіңіз (қатты сабақтарды алып тастауға болады), жасылдарды кесіңіз. Қияр текшелерге кесілген.'),
                      ),
                      ListTile(
                        title: Text('5 қадам'),
                        subtitle: Text('Пияз қосылған картопқа қияр мен барлық жасылдарды қосыңыз, араластырыңыз. Қалған маймен себіңіз және қызмет етіңіз.'),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text('Рецепт', style: TextStyle(fontSize: 24),),
                    children: [
                      ListTile(
                        title: Text('1 средний клубень батата, проколотый вилкой по всей поверхности'),
                      ),
                      ListTile(
                        title: Text('1/4 ст. готовой куриной грудки без кожи, раскромсанной (курица-гриль или остатки курицы)'),
                      ),
                      ListTile(
                        title: Text('3 ст. л. тёртого неострого чеддера'),
                      ),
                      ListTile(
                        title: Text('Половина небольшого авокадо'),
                      ),
                      ListTile(
                        title: Text('1 ст. л. сальса-верде'),
                      ),
                      ListTile(
                        title: Text('1 перо зелёного лука, тонко нарезанное'),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
