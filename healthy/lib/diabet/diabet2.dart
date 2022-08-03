import 'package:flutter/material.dart';

class DiabetExapmple2 extends StatelessWidget {
  const DiabetExapmple2({Key? key}) : super(key: key);

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
                  child: Text('Жабық тунец сэндвичі', style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.bold)),
                ),
                background: Image.asset('assets/images/12.jpg', fit: BoxFit.cover),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0, bottom: 12.0),
                    child: Text('Үйде дайындалған таңғы ас үшін ғана емес, сонымен қатар жұмыста кейінірек тағамдар үшін тамаша рецепт. Толық нанды жеуге болмайды, нан бөліктерін есте сақтаңыз - бірнеше әріптестермен бөлісіңіз. Бұл рецепттегі ингредиенттердің мөлшері бүкіл кеңсеге ... немесе өте үлкен отбасы үшін жеткілікті.'
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
                              child: Text('253,9 ккал', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.lightGreen,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('всего жиров 14,1 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('белки 14,1 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('углеводы 16,4 г', style: TextStyle(color: Colors.white),),
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
                            Text('Істеу уақыты: 15 мин.')
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
                            Text('Порция: 12')
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
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('ҮЙ ҚОЖАЙЫНЫНА ЕСКЕРТПЕ', style: TextStyle(fontSize: 20, color: Colors.white), textAlign: TextAlign.center,),
                        Padding(padding: EdgeInsets.only(top: 20.0)),
                        Text('Майлы таңғыштарды дайындағанда, ең аз немесе мүлдем тұзды пайдаланбаңыз. Капер, зәйтүн және консервіленген тунец 32 құрамында сэндвичке толық дәм беру үшін жеткілікті.', style: TextStyle(fontSize: 15, color: Colors.white), textAlign: TextAlign.center)
                      ],
                    ),
                  ),
                  ExpansionTile(
                    title: Text('Пісіру рецептік қадамдары', style: TextStyle(fontSize: 24),),
                    children: [
                      ListTile(
                        title: Text('1 қадам'),
                        subtitle: Text('Зәйтүн майын лимон шырыны, тұз және бұрышпен шайқаңыз.'),
                      ),
                      ListTile(
                        title: Text('2 қадам'),
                        subtitle: Text('Нанды 24 жұқа бөлікке кесіңіз және әр бөлікті бір жағынан зәйтүн қоспасымен сүртіңіз.'),
                      ),
                      ListTile(
                        title: Text('3 қадам'),
                        subtitle: Text('Томатты үлкен текшелерге, зәйтүндерді шеңберлерге кесіңіз, тұқымдарды алып тастаңыз.'),
                      ),
                      ListTile(
                        title: Text('4 қадам'),
                        subtitle: Text('Тунца банкасынан барлық шырынды ағызып, балықты кесектерге кесіңіз. Томаттарды біркелкі етіп нан тілімдерінің жартысына жағыңыз. Каперс пен зәйтүнді себіңіз. Үстіне тунец тілімдері мен насыбайгүл жапырақтарын орналастырыңыз.'),
                      ),
                      ListTile(
                        title: Text('5 қадам'),
                        subtitle: Text('Нанның екінші тілімдерін жауып, қолыңызбен басыңыз. Сэндвичтерді жабысқақ пленкамен жабыңыз, үстіне салмағы бар науаны қойып, 10 минутқа қалдырыңыз.'),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text('Рецепт', style: TextStyle(fontSize: 24),),
                    children: [
                      ListTile(
                        title: Text('1 бөлке тұтас дәнді нан'),
                      ),
                      ListTile(
                        title: Text('Өз шырынындағы 600 г тунец'),
                      ),
                      ListTile(
                        title: Text('5 орташа етті қызанақ'),
                      ),
                      ListTile(
                        title: Text('1 ст. л. кішкентай каперс'),
                      ),
                      ListTile(
                        title: Text('1 кішкене байлам насыбайгүл'),
                      ),
                      ListTile(
                        title: Text('8 бап. л. қосымша таза зәйтүн майы'),
                      ),
                      ListTile(
                        title: Text('2 ас қасық. л. лимон шырыны'),
                      ),
                      ListTile(
                        title: Text('Тұз'),
                      ),
                      ListTile(
                        title: Text('жаңадан ұнтақталған қара бұрыш'),
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
