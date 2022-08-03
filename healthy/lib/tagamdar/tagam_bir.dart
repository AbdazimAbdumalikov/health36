import 'package:flutter/material.dart';

class MorningExample extends StatefulWidget {
  const MorningExample({Key? key}) : super(key: key);

  @override
  _MorningExampleState createState() => _MorningExampleState();
}

class _MorningExampleState extends State<MorningExample> {
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
                  child: Text('Сұлы жармасы', style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.bold)),
                ),
                background: Image.asset('assets/images/9.jpg', fit: BoxFit.cover),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0, bottom: 12.0),
                    child: Text('Микротолқынды пеште бірнеше минут ішінде дәмді және қанағаттанарлық төмен калориялы таңғы ас. Алманы қабығынсыз қалдыруға болады, сондықтан сіз ботқа көбірек пайдалы диеталық талшық қосасыз. Оларды сұлы жармасымен араластырыңыз, классикалық хош иістендіргіштер букетіне бір шымшым даршын қосып, суға қайнатыңыз. Дайын ботқаны үйеңкі сиропымен тәттілендіріңіз, оны жылы карамель дәмімен толтырыңыз және таңғы асыңызды пайдалы майлармен байытатын қуырылған пекан себіңіз. Осы ботқаның барлық ингредиенттерінің дәмі мен хош иістерінің тамаша десертті комбинациясынан ләззат алыңыз.'
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
                              child: Text('Калории 323', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.lightGreen,
                                  borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('всего жиров 12 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                  borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('насыщенные жиры 1 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                  borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('углеводы 48 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                  borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('клетчатка 6 г', style: TextStyle(color: Colors.white),),
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
                              child: Text('натрий 131 мг', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                  borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('сахар 12 г', style: TextStyle(color: Colors.white),),
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
                            Text('Істеу уақыты: 10 мин.')
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
                            Text('Порция: 2 max.')
                          ],
                        )
                      ],
                    ),
                  ),
                  ExpansionTile(
                      title: Text('Рецепт', style: TextStyle(fontSize: 24),),
                    children: [
                      ListTile(
                        title: Text('1 ст. овсяных хлопьев'),
                      ),
                      ListTile(
                        title: Text('1 яблоко, желательно сорта Макинтош, очищенное от сердцевины и крупно нарезанное'),
                      ),
                      ListTile(
                        title: Text('1/4 ч. л. молотая корица'),
                      ),
                      ListTile(
                        title: Text('Щепотка соли'),
                      ),
                      ListTile(
                        title: Text('2 ст. воды'),
                      ),
                      ListTile(
                        title: Text('2 ст. л. кленового сиропа'),
                      ),
                      ListTile(
                        title: Text('1/4 ст. жареного пекана'),
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
