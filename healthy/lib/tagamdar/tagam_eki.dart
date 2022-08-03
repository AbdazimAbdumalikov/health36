import 'package:flutter/material.dart';

class LunchExample extends StatefulWidget {
  const LunchExample({Key? key}) : super(key: key);

  @override
  _LunchExampleState createState() => _LunchExampleState();
}

class _LunchExampleState extends State<LunchExample> {
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
                  child: Text('Тауық пен авокадо', style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.bold)),
                ),
                background: Image.asset('assets/images/5.jpg', fit: BoxFit.cover),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0, bottom: 12.0),
                    child: Text('Бұл жеңіл түскі ас танымал мексикалық гуакамолдың ингредиенттерінен жасалған. Дегенмен, мұнда паста немесе авокадо пюресі болмайды. Ингредиенттер бір салатқа араласқанда ғана гуакамол дәмін көресіз. Бөлек, дәмді таңғышты шайқаңыз. Ол өте көп болады, сондықтан оны тоңазытқышта шыны ыдыста сақтауға болады, бұл келесі жолы уақытыңызды үнемдейді. Жасыл, қызанақ, авокадо және тауық салатының үстіне таңғышты себіңіз, қанағаттанарлық күшейту үшін жүгері чиптерін қосыңыз және ләззат алыңыз. Салатты контейнерге салып, өзіңізбен бірге алып, чипсы мен таңғышты бөлек орап алуға болады.'
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
                              child: Text('Калории 390', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.lightGreen,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('всего жиров 28 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('насыщенные жиры 3,5 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('белки 11 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('углеводы 30 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('клетчатка 14 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('холестерин 10 мг', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('натрий 240 мг', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('сахар 4 г', style: TextStyle(color: Colors.white),),
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
                            Text('Күрделілігі: жеңіл')
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.food_bank),
                            Text('Порция: 1 max.')
                          ],
                        )
                      ],
                    ),
                  ),
                  ExpansionTile(
                    title: Text('Рецепт', style: TextStyle(fontSize: 24),),
                    children: [
                      ListTile(
                        title: Text('1/3 ст. готовой куриной грудки без кожи, раскромсанной (курица-гриль или остатки курицы)'),
                      ),
                      ListTile(
                        title: Text('1/4 ст. виноградных помидоров, разрезанных пополам'),
                      ),
                      ListTile(
                        title: Text('1/4 часть небольшой красной луковицы, мелко нарезанная'),
                      ),
                      ListTile(
                        title: Text('4 ст. салатной зелени'),
                      ),
                      ListTile(
                        title: Text('Половина небольшого авокадо'),
                      ),
                      ListTile(
                        title: Text('Половина лайма'),
                      ),
                      ListTile(
                        title: Text('6 чипсов из кукурузной тортильи, разломанных'),
                      )
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
