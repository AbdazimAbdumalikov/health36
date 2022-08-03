import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthy/jattygular/swimming.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Басты бет'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Қайырлы күн!', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  ],
                )
            ),
            Card(
              margin: EdgeInsets.all(10),
              color: Colors.lightGreen,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Жоспарлар:', style: TextStyle(color: Colors.white, fontSize: 25),),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 35)),
                              Icon(Icons.alarm_add_outlined, color: Colors.white,),
                              Text('Ояну: 08.30', style: TextStyle(color: Colors.white, fontSize: 15),)
                            ],
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 35)),
                              Icon(Icons.fitness_center_outlined, color: Colors.white,),
                              Text('Жаттығу жасау', style: TextStyle(color: Colors.white, fontSize: 15),)
                            ],
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 35)),
                              Icon(Icons.nights_stay_outlined, color: Colors.white,),
                              Text('Ұйықтау: 23.30', style: TextStyle(color: Colors.white, fontSize: 15),)
                            ],
                          )
                        ],
                      )
                  ),
                  Container(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Нормалар:', style: TextStyle(color: Colors.white, fontSize: 25),),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 35)),
                              Icon(Icons.food_bank_outlined, color: Colors.white,),
                              Text('max: ', style: TextStyle(color: Colors.white, fontSize: 15),),
                              Text('1100 kcal', style: TextStyle(color: Colors.white, fontSize: 15),),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 30)),
                              Icon(Icons.local_fire_department, color: Colors.white,),
                              Text('Жағу: ', style: TextStyle(color: Colors.white, fontSize: 15)),
                              Text('102 kcal', style: TextStyle(color: Colors.white, fontSize: 15))
                            ],
                          )
                        ],
                      )
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Менің тағамдарым:', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),)
                    ],
                  ),
                  Container(
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2.0,
                                spreadRadius: 0.0001
                              )
                            ]
                          ),
                          height: 100,
                          width: 200,
                          margin: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
                                child: Image.asset('assets/images/9.jpg'),
                              ),
                              Container(
                                padding: EdgeInsets.all(5.0),
                                child: Text('Алма мен жаңғақтар қосылған сұлы жармасы', textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 5.0, right: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pushNamed(context, '/tagam1');
                                        },
                                        child: Text('Әрі қарай', style: TextStyle(color: Colors.white),)
                                    ),
                                    Text('323 ккал', style: TextStyle(color: Colors.white),)
                                  ],
                                ),
                              )
                            ],
                          )
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2.0,
                                    spreadRadius: 0.0001
                                )
                              ]
                          ),
                          height: 100,
                          width: 200,
                          margin: EdgeInsets.all(5),
                          child: Center(
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
                                  child: Image.asset('assets/images/5.jpg'),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text('Тауық, авокадо қосылған жасыл салат', textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5.0, right: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(context, '/tagam2');
                                          },
                                          child: Text('Әрі қарай', style: TextStyle(color: Colors.white),)
                                      ),
                                      Text('390 ккал', style: TextStyle(color: Colors.white),)
                                    ],
                                  ),
                                )
                              ],
                            )
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2.0,
                                    spreadRadius: 0.0001
                                )
                              ]
                          ),
                          height: 100,
                          width: 200,
                          margin: EdgeInsets.all(5),
                          child: Center(
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
                                  child: Image.asset('assets/images/6.jpg'),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text('Тауық пен авокадо қосылған картоп', textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5.0, right: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(context, '/tagam3');
                                          },
                                          child: Text('Әрі қарай', style: TextStyle(color: Colors.white),)
                                      ),
                                      Text('380 ккал', style: TextStyle(color: Colors.white),)
                                    ],
                                  ),
                                )
                              ],
                            )
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2.0,
                                    spreadRadius: 0.0001
                                )
                              ]
                          ),
                          height: 100,
                          width: 200,
                          margin: EdgeInsets.all(5),
                          child: Center(
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
                                  child: Image.asset('assets/images/7.jpg'),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text('Киви мен зімбір қосылған протеиндік смузи', textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5.0, right: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(context, '/tagam4');
                                          },
                                          child: Text('Әрі қарай', style: TextStyle(color: Colors.white),)
                                      ),
                                      Text('510 ккал', style: TextStyle(color: Colors.white),)
                                    ],
                                  ),
                                )
                              ],
                            )
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2.0,
                                    spreadRadius: 0.0001
                                )
                              ]
                          ),
                          height: 100,
                          width: 200,
                          margin: EdgeInsets.all(5),
                          child: Center(
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
                                  child: Image.asset('assets/images/8.jpg'),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text('Түскі қорапқа арналған кеспе мен салат', textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5.0, right: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(context, '/tagam5');
                                          },
                                          child: Text('Әрі қарай', style: TextStyle(color: Colors.white),)
                                      ),
                                      Text('440 ккал', style: TextStyle(color: Colors.white),)
                                    ],
                                  ),
                                )
                              ],
                            )
                          ),
                        ),
                      ],
                    )
                  )
                ],
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Жаттығулар:', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Row(
              children: [
                Flexible(
                  flex: 2,
                    child:
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)
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
                        borderRadius: BorderRadius.circular(10)
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
                                  Navigator.pushNamed(context, 'swim');
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
                          borderRadius: BorderRadius.circular(10)
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
                          borderRadius: BorderRadius.circular(10)
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
    );
  }
}
