import 'package:flutter/material.dart';

class SnackExample extends StatefulWidget {
  const SnackExample({Key? key}) : super(key: key);

  @override
  _SnackExampleState createState() => _SnackExampleState();
}

class _SnackExampleState extends State<SnackExample> {
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
                  child: Text('Фаршталған картофель', style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.bold)),
                ),
                background: Image.asset('assets/images/6.jpg', fit: BoxFit.cover),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0, bottom: 12.0),
                    child: Text('Кешегі пісірілген тауықтың қалдықтарын тәтті картоп түйнегінде жаңа жылдам тағам дайындау арқылы дәмді пайдалануға болады. Түйнек микротолқынды пеште теріде пісіріледі, содан кейін одан целлюлозаны алып тастайды, тауық еті мен үгітілген чеддармен араластырып, қайтадан түйнекке салады. Чеддар ыстық тәтті картоп целлюлозасында жақсы ериді, оның құрылымын кремді және тұтқыр етеді. Дайындалған түйнекті жасыл сальсамен себіңіз және қанағаттанарлық күшейту үшін авокадо тілімдерімен безендіріңіз. Дәмді және пайдалы кешкі ас, одан кейін сізде ең аз лас тағамдар болады.'
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
                              child: Text('Калории 380', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.lightGreen,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('всего жиров 22 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('насыщенные жиры 7 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('белки 17 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('углеводы 29 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('клетчатка 4 г', style: TextStyle(color: Colors.white),),
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
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('натрий 490 мг', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('сахар 7 г', style: TextStyle(color: Colors.white),),
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
