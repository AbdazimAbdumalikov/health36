import 'package:flutter/material.dart';

class DiabetExapmple4 extends StatelessWidget {
  const DiabetExapmple4({Key? key}) : super(key: key);

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
                  child: Text('Томат сорпасында бұршақ және тунец', style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.bold)),
                ),
                background: Image.asset('assets/images/14.jpg', fit: BoxFit.cover),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0, bottom: 12.0),
                    child: Text('Бұл тамаша хош иісті сорпа 3 банка консервілерге негізделген. Таңқаларлық, бірақ шындық: тағам осыдан үстірт және банальды болмады. Бұл қосымша ингредиенттер болуы мүмкін бе? Капер, лимон, тимьян және ұнтақталған паприка сирек артық болады! Немесе жай ғана консервіленген тунец, бұршақ және өз шырынындағы қызанақ бір-бірімен тамаша үйлеседі.'
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
                              child: Text('Количество калорий 324 ккал', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.lightGreen,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('всего жиров 14,4 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('белки 20,5 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('углеводы 28,9 г', style: TextStyle(color: Colors.white),),
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
                            Text('Істеу уақыты: 20 мин.')
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.signal_cellular_alt),
                            Text('Күрделілігі: жеіңл')
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.food_bank),
                            Text('Порция: 4')
                          ],
                        )
                      ],
                    ),
                  ),
                  ExpansionTile(
                    title: Text('Пісіру рецептік қадамдары', style: TextStyle(fontSize: 24),),
                    children: [
                      ListTile(
                        title: Text('1 қадам'),
                        subtitle: Text('Пиязды және сарымсақты тазалаңыз, майдалап тураңыз. Қалың түбі бар табада майды қыздырып, пияз мен сарымсақты қосып, 5 минут қуырыңыз.'),
                      ),
                      ListTile(
                        title: Text('2 қадам'),
                        subtitle: Text('Бұршақтарды електен ағызыңыз, қажет болса шайыңыз. Тимьянның сабақтарын алып тастаңыз (розмарин жапырақтарын турау керек, бірақ тасшөпті кесу керек). Бұршақтарды және шөптерді кәстрөлге қосып, араластырыңыз. Паприка себіңіз.'),
                      ),
                      ListTile(
                        title: Text('3 қадам'),
                        subtitle: Text('Шырын қосылған қызанақты және сұйық тунецті табаға салыңыз, араластырыңыз. Бөлме температурасында 500 мл ауыз су қосыңыз. Араластырыңыз және қайнатыңыз.'),
                      ),
                      ListTile(
                        title: Text('4 қадам'),
                        subtitle: Text('Сорпаны орташа отта 10 минут қайнатыңыз. Тұз бен бұрыш. Отты өшіріп, табаны қақпақпен жауып, 5-10 минут қайнатыңыз.'),
                      ),
                      ListTile(
                        title: Text('5 қадам'),
                        subtitle: Text('Сорпаны тостағандарға бөліп, әрқайсысының үстіне бір қасық каперс құйыңыз. Бір тілім лимонмен бірге қызмет етіңіз.'),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text('Рецепт', style: TextStyle(fontSize: 24),),
                    children: [
                      ListTile(
                        title: Text('2 банка үлкен ақ бұршақ'),
                      ),
                      ListTile(
                        title: Text('Өз шырынында 400 г қызанақ'),
                      ),
                      ListTile(
                        title: Text('1 банка тунец өз шырынында'),
                      ),
                      ListTile(
                        title: Text('1 үлкен пияз'),
                      ),
                      ListTile(
                        title: Text('5-6 сарымсақ түйірі'),
                      ),
                      ListTile(
                        title: Text('3 бұтақ тимьян немесе 1 бұтақ розмарин'),
                      ),
                      ListTile(
                        title: Text('3 өнер. л. қосымша таза зәйтүн майы'),
                      ),
                      ListTile(
                        title: Text('1 ст. л. ұнтақталған паприка'),
                      ),
                      ListTile(
                        title: Text('жаңадан ұнтақталған қара бұрыш'),
                      ),
                      ListTile(
                        title: Text('4 шай қасық қызмет етуге арналған каперс'),
                        ),
                      ListTile(
                          title: Text('тұз'),
                          ),
                      ListTile(
                        title: Text('қызмет ету үшін лимон тілімдері'),
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
