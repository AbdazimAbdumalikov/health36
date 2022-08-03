import 'package:flutter/material.dart';

class DiabetExapmple3 extends StatelessWidget {
  const DiabetExapmple3({Key? key}) : super(key: key);

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
                  child: Text('Қырыққабат қосылған сиыр сорпасында Щи', style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.bold)),
                ),
                background: Image.asset('assets/images/13.jpg', fit: BoxFit.cover),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0, bottom: 12.0),
                    child: Text('Бұл қырыққабат сорпасы мерекелік. Қарапайым орыс отбасыларында ет жиі жемейтін, сондықтан біз ата-бабаларымыздан үлгі алуымыз керек. Ерекше жағдайда ет сорпасын да пісіруге болады.'
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
                              child: Text('375,7 ккал', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.lightGreen,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('всего жиров 15,4 г', style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              margin: EdgeInsets.all(3.0),
                              padding: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text('углеводы 16 г', style: TextStyle(color: Colors.white),),
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
                            Text('Істеу уақыты: 1 ч')
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
                            Text('Порция: 6')
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
                        Text('Қырыққабат сорпасын бір сағат бойы қайнатуға уақытыңыз болмаса, пештегі температураны 190 ° C дейін арттырыңыз - және сорпа 20-30 минутта дайын болады.', style: TextStyle(fontSize: 15, color: Colors.white), textAlign: TextAlign.center)
                      ],
                    ),
                  ),
                  ExpansionTile(
                    title: Text('Пісіру рецептік қадамдары', style: TextStyle(fontSize: 24),),
                    children: [
                      ListTile(
                        title: Text('1 қадам'),
                        subtitle: Text('Бір күн бұрын ет сорпасын пісіріңіз. Етті сүйекпен бірге 2,5 литр суық суға құйыңыз (жақсы ауыз су). Орташа отта қайнатыңыз, кез келген көбікті мұқият алып тастаңыз.'),
                      ),
                      ListTile(
                        title: Text('2 қадам'),
                        subtitle: Text('Пиязды, сарымсақты және сәбізді жуыңыз, бірақ қабығын тазаламаңыз, жартысын кесіңіз және құрғақ қуыруға арналған табада пісіріңіз. Көкөністерді сорпаға бұрыш бұршақтарымен және аздап тұзбен қосыңыз. 2 сағат қайнатыңыз.'),
                      ),
                      ListTile(
                        title: Text('3 қадам'),
                        subtitle: Text('Сорпаны оттан алыңыз, етті алыңыз, орап, 2 сағатқа салқындатыңыз және тоңазытқышқа салыңыз, сорпаны сүзіп, толығымен суытып, тоңазытқышқа қойыңыз. 2 сағаттан кейін бетінде май қабаты пайда болады. Оны толығымен алып тастаңыз. Қолданар алдында етті сорпаға қайтаруға болады.'),
                      ),
                      ListTile(
                        title: Text('4 қадам'),
                        subtitle: Text('Саңырауқұлақтарды 1 стакан ыстық сорпамен 1 сағат бойы құйыңыз.Содан кейін саңырауқұлақтарды құмнан шайып, кішкене кесектерге кесіңіз, дәке арқылы сүзілген инфузияға оралыңыз.'),
                      ),
                      ListTile(
                        title: Text('5 қадам'),
                        subtitle: Text('Тұздалған қырыққабатты сығып, ұзындығы шамамен 2 см кесектерге кесіңіз және саз балшыққа салыңыз. Саңырауқұлақтармен бірге саңырауқұлақ инфузиясын құйыңыз. Зире себіңіз және 150 ° C дейін қыздырылған пешке 1 сағатқа қойыңыз.'),
                      ),
                      ListTile(
                        title: Text('6 қадам'),
                        subtitle: Text('Пияз бен сәбізді тазалап, майдалап турап, ыстық майға 10 минут қуырыңыз. Аскөк тұқымдары мен қара бұрышпен дәмдеңіз.'),
                      ),
                      ListTile(
                        title: Text('7 қадам'),
                        subtitle: Text('Шалқанды тазалап, тілімдерге кесіңіз. Жасылдарды тураңыз. Сарымсақты ұсақтаңыз. Қайнатылған етті сүйектен кесіп, үлкен кесектерге кесіңіз.'),
                      ),
                      ListTile(
                        title: Text('8 қадам'),
                        subtitle: Text('В глиняные горшочки разложите мясо, луково-морковную заправку и репу. Сверху положите томленую капусту с грибами и соком, давленый чеснок и зелень. Влейте столько бульона, чтобы он полностью закрыл содержимое, и поставьте в духовку на 1 ч.'),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text('Рецепт', style: TextStyle(fontSize: 24),),
                    children: [
                      ListTile(
                        title: Text('500 г ашытылған қырыққабат'),
                      ),
                      ListTile(
                        title: Text('2 орташа репа'),
                      ),
                      ListTile(
                        title: Text('2 үлкен пияз'),
                      ),
                      ListTile(
                        title: Text('1 үлкен сәбіз'),
                      ),
                      ListTile(
                        title: Text('1 ст. л. май'),
                      ),
                      ListTile(
                        title: Text('бір шымшым зире тұқымы'),
                      ),
                      ListTile(
                        title: Text('бір шымшым аскөк'),
                      ),
                      ListTile(
                        title: Text('3 сарымсақ қалампыры'),
                      ),
                      ListTile(
                        title: Text('5 аскөк бұтақтары'),
                      ),
                      ListTile(
                        title: Text('5 ақжелкен бұтағы'),
                      ),
                      ListTile(
                        title: Text('тұз'),
                      ),
                      ListTile(
                        title: Text('жаңадан ұнтақталған қара бұрыш'),
                      ),
                      ListTile(
                        title: Text('1 кішкентай пияз'),
                      ),
                      ListTile(
                        title: Text('1 кішкентай сәбіз'),
                      ),
                      ListTile(
                        title: Text('2 сарымсақ қалампыры'),
                      ),
                      ListTile(
                        title: Text('черный перец горошком'),
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
