import 'package:flutter/material.dart';

class DinnerExample extends StatefulWidget {
  const DinnerExample({Key? key}) : super(key: key);

  @override
  _DinnerExampleState createState() => _DinnerExampleState();
}

class _DinnerExampleState extends State<DinnerExample> {
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
                  child: Text('Сергітетін протеиндік смузи', style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.bold)),
                ),
                background: Image.asset('assets/images/7.jpg', fit: BoxFit.cover),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0, bottom: 12.0),
                    child: Text('Нәзік кокос сүтімен жұмсартылған киви, ақжелкен және имбирьдің жарқын қуаттандыратын дәмімен толтырылған дәмді және нәрлі коктейль. Суперфуд болып саналатын қарасора тұқымдары смузилерге көптеген маңызды микроэлементтер береді. Ал тәттілендіргіш ретінде агаваның табиғи балшырындарын (сироп) қосыңыз. Барлық ингредиенттер блендердегі мұзбен шайқалады және ақуыздар, витаминдер және диеталық талшықтармен толтырылған сергітетін сусынға айналады.'
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
                              child: Text('Калории 510', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.lightGreen,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('всего жиров 29 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('насыщенные жиры 12 г', style: TextStyle(color: Colors.white),),
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
                              child: Text('углеводы 49 г', style: TextStyle(color: Colors.white),),
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
                              child: Text('натрий 50 мг', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('сахар 30 г', style: TextStyle(color: Colors.white),),
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
                            Text('Істеу уақыты: 5 мин.')
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
                        title: Text('3/4 ст. консервированного кокосового молока с пониженным содержанием жира'),
                      ),
                      ListTile(
                        title: Text('2 спелых киви, очищенных и нарезанных'),
                      ),
                      ListTile(
                        title: Text('2,5 см. корня имбиря, очищенного и нарезанного'),
                      ),
                      ListTile(
                        title: Text('1/4 ст. свежих листьев петрушки'),
                      ),
                      ListTile(
                        title: Text('1/4 ст. сырых очищенных конопляных семечек, например, Hemp Hearts'),
                      ),
                      ListTile(
                        title: Text('1 ст. л. нектара агавы'),
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
