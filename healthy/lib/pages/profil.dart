import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilExample extends StatefulWidget {
  const ProfilExample({Key? key}) : super(key: key);

  @override
  _ProfilExampleState createState() => _ProfilExampleState();
}

class _ProfilExampleState extends State<ProfilExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Профиль'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0), color: Colors.deepPurpleAccent),
                margin: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Сәлем!', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold,),textAlign: TextAlign.start,),
                    Padding(padding: EdgeInsets.only(top: 20.0),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: SvgPicture.asset('assets/images/18.svg', height: 400, width: 200,),
                        )
                      ],
                    ),
                  ],
                )
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0), color: Colors.deepPurpleAccent),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Салмағы: 80 kg', textAlign: TextAlign.start, style: TextStyle(color: Colors.white, fontSize: 16),),
                      Text('Бойы: 185 cm', textAlign: TextAlign.start, style: TextStyle(color: Colors.white, fontSize: 16),),
                      Text('Пульс: 80 уд/мин', textAlign: TextAlign.start, style: TextStyle(color: Colors.white, fontSize: 16),),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Қысымы: 120-129', textAlign: TextAlign.start, style: TextStyle(color: Colors.white, fontSize: 16),),
                      Text('Күйі: Жақсы', textAlign: TextAlign.start, style: TextStyle(color: Colors.white, fontSize: 16),),
                      Text('Денсаулығы: Жақсы', textAlign: TextAlign.start, style: TextStyle(color: Colors.white, fontSize: 16),)
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.deepPurpleAccent
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text('Менің жаттығуларым:', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                  Row(
                    children: [
                      Flexible(
                          flex: 2,
                          child:
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Text('Жүгіру', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                                  ),
                                  Container(
                                    child: SvgPicture.asset('assets/images/Group8.svg', width: 70, color: Colors.white,),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.access_time, color: Colors.white,),
                                            Text('Уақыты: 09.30', style: TextStyle(fontSize: 12.0, color: Colors.white),)
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.directions_run, color: Colors.white,),
                                            Text('Қашықтығы: 4.8 KM', style: TextStyle(fontSize: 12.0, color: Colors.white),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.timer, color: Colors.white,),
                                            Text('Таймер: 45 mins', style: TextStyle(fontSize: 12.0, color: Colors.white),)
                                          ],
                                        ),
                                        TextButton(onPressed: () {
                                          Navigator.pushNamed(context, '/run');
                                        },
                                            child: Text('Бастау', style: TextStyle(color: Colors.white),)
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            margin: EdgeInsets.only(left: 10, top: 10, right: 5, bottom: 5),
                            height: 200,
                          )
                      ),
                      Flexible(
                          flex: 2,
                          child:
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Text('Жүзу', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                                  ),
                                  Container(
                                    child: SvgPicture.asset('assets/images/Swimming.svg', width: 70, color: Colors.white,),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.access_time, color: Colors.white,),
                                            Text('Уақыты: 14.30', style: TextStyle(fontSize: 12.0, color: Colors.white),)
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.timer, color: Colors.white,),
                                            Text('Таймер: 20 mins', style: TextStyle(fontSize: 12.0, color: Colors.white),)
                                          ],
                                        ),
                                        TextButton(onPressed: () {
                                          Navigator.pushNamed(context, '/swim');
                                        },
                                            child: Text('Бастау', style: TextStyle(color: Colors.white),)
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            margin: EdgeInsets.only(left: 10, top: 10, right: 5, bottom: 5),
                            height: 200,
                          )
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                          flex: 2,
                          child:
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Text('Велосипед', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                                  ),
                                  Container(
                                    child: SvgPicture.asset('assets/images/Group.svg', width: 70, color: Colors.white,),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.access_time, color: Colors.white,),
                                            Text('Уақыты: 20.00', style: TextStyle(fontSize: 12.0, color: Colors.white),)
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.directions_run, color: Colors.white,),
                                            Text('Қашықтығы: 4.8 KM', style: TextStyle(fontSize: 12.0, color: Colors.white),),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.timer, color: Colors.white,),
                                            Text('Таймер: 45 mins', style: TextStyle(fontSize: 12.0, color: Colors.white),)
                                          ],
                                        ),
                                        TextButton(onPressed: () {
                                          Navigator.pushNamed(context, '/byce');
                                        },
                                            child: Text('Бастау', style: TextStyle(color: Colors.white),)
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            margin: EdgeInsets.only(left: 10, top: 10, right: 5, bottom: 5),
                            height: 200,
                          )
                      ),
                      Flexible(
                          flex: 2,
                          child:
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Text('Ұйықтау', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                                  ),
                                  Container(
                                      child: Icon(Icons.bedtime_outlined, color: Colors.white, size: 70.0,)
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.access_time, color: Colors.white,),
                                            Text('Уақыты: 23.30', style: TextStyle(fontSize: 12.0, color: Colors.white),)
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.timer, color: Colors.white,),
                                            Text('Ояну: 08.30', style: TextStyle(fontSize: 12.0, color: Colors.white),)
                                          ],
                                        ),
                                        TextButton(onPressed: () {
                                          Navigator.pushNamed(context, '/son');
                                        },
                                            child: Text('Бастау', style: TextStyle(color: Colors.white),)
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            margin: EdgeInsets.only(left: 10, top: 10, right: 5, bottom: 5),
                            height: 200,
                          )
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        )
      )
    );
  }
}
