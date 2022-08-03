import 'package:flutter/material.dart';

class NightExample extends StatefulWidget {
  const NightExample({Key? key}) : super(key: key);

  @override
  _NightExampleState createState() => _NightExampleState();
}

class _NightExampleState extends State<NightExample> {
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
                  child: Text('Кеспе және салат', style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.bold)),
                ),
                background: Image.asset('assets/images/8.jpg', fit: BoxFit.cover),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0, bottom: 12.0),
                    child: Text('Жапондық стильдегі бұл кеспелерді салат сияқты салқын түрде жеуге болады, сондықтан олар жұмысқа немесе пикникке апаратын түскі ас қорабына өте ыңғайлы. Тағам пайдалы талшықпен, ақуыздармен және азиялық таңғыш беретін таңғажайып жарқын дәммен толтырылған. Қайнатылған қарақұмық кеспесі жержаңғақ майы, хойзин соусы, қара күнжіт майы, ащы соус және лайм шырыны қоспасымен безендірілген. Ал жаңа піскен көкөністер жолақтарға кесіліп, тек лимон шырыны мен күнжіт майымен дәмделеді және кеспенің үстіне қойылады. Тамақтану алдында тағамды пісірілген теңіз балдыры чиптеріне себіңіз, бұл оны ауыз суаратын қытырлақ пен пайдалы микроэлементтермен толықтырады.'
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
                              child: Text('Калории 440', style: TextStyle(color: Colors.white),),
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
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('насыщенные жиры 3 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('белки 16 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('углеводы 61 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('клетчатка 5 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('холестерин 0 мг', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('натрий 720 мг', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('сахар 8 г', style: TextStyle(color: Colors.white),),
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
                        title: Text('60 гр. соба (гречневой лапши)'),
                      ),
                      ListTile(
                        title: Text('1 ст. л. + 1,5 ч. л. кремовой арахисовой пасты'),
                      ),
                      ListTile(
                        title: Text('1 ч. л. соуса хойсин'),
                      ),
                      ListTile(
                        title: Text('0,5 ч. л. острого соуса с чесноком'),
                      ),
                      ListTile(
                        title: Text('1 ст. л. + 1 ч. л. сока лайма (примерно из 1 лайма)'),
                      ),
                      ListTile(
                        title: Text('1 ч. л. тёмного кунжутного масла'),
                      ),
                      ListTile(
                        title: Text('0,5 ст. готовой тонко нашинкованной смеси для капустного салата Коул Слоу'),
                      ),
                      ListTile(
                        title: Text('2 ст. л. свежих листьев кинзы'),
                      ),
                      ListTile(
                        title: Text('1 перо зелёного лука, тонко нарезанное'),
                      ),
                      ListTile(
                        title: Text('Половина оранжевого, красного или жёлтого сладкого перца, нарезанная тонкими полосками'),
                      ),
                      ListTile(
                        title: Text('Половина иранского огурца, разрезанная пополам и нарезанная тонкими полосками'),
                      ),
                      ListTile(
                        title: Text('2 пластины чипсов из морских водорослей, нарезанные тонкими полосками'),
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
