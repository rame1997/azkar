import 'dart:ui';

import 'package:azkar/widget/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _count=0;
  String _zaker='استغر الله';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        floatingActionButton:FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){},
        ),
          appBar: AppBar(
            backgroundColor: Colors.teal,
            automaticallyImplyLeading: false,
            title: TextCustom('سبحة الاذكار', 'arabic', FontWeight.w700, 20,
                Colors.white, TextAlign.center),
            actions: <Widget>[
              IconButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/about');
                },
                  icon: Icon(Icons.info)),

              PopupMenuButton(
                  offset: Offset(-15, 39),
                  color: Colors.teal,
                  onSelected: (int selected) {
                    switch(selected){
                      case 1:
                        checkZaker('سبحان الله');
                        break;
                      case 2:
                        checkZaker('استغر الله');
                        break;
                      case 3:
                        checkZaker('لا اله الا الله');
                        break;
                    }

                  },
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem<int>(
                        value: 1,
                        child: TextCustom('سبحان الله', 'arabic', FontWeight.w400,
                            20, Colors.white, TextAlign.center),
                      ),
                      PopupMenuItem<int>(
                        value: 2,
                        child: TextCustom('استغر الله', 'arabic', FontWeight.w400,
                            20, Colors.white, TextAlign.center),
                      ),
                      PopupMenuItem<int>(
                        value: 3,
                        child: TextCustom('لا اله الا الله', 'arabic', FontWeight.w400,
                            20, Colors.white, TextAlign.center),
                      )
                    ];
                  }),

            ],
          ),
          body: Stack(children: [
            Image(
                height: double.infinity,
                fit: BoxFit.cover,
                image: AssetImage('images/backazkar.jpg')),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  CircleAvatar(
                    backgroundImage:
                    AssetImage('images/masbaha.jpg',),
                    radius: 50,


                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    clipBehavior: Clip.antiAlias,
                    elevation: 3,
                  //  margin: EdgeInsetsDirectional.only(start: 20,end: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextCustom(_zaker, 'arabic', FontWeight.w700,
                              22, Colors.black, TextAlign.center),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.teal,
                              boxShadow:[ BoxShadow(
                                  offset: Offset(3,0),
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 6,
                                  spreadRadius: 3
                              )
                              ]

                          ),
                          child: TextCustom(_count.toString(), 'arabic', FontWeight.w400,
                              22, Colors.white, TextAlign.center),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(0, 50),
                            primary: Colors.teal,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(0),
                                topLeft: Radius.zero,
                                bottomLeft: Radius.zero,
                              )
                            )
                          ),
                          onPressed: (){
                            setState(() {
                              _count++;
                            });
                          },
                          child: TextCustom('تسبيح', 'arabic', FontWeight.w400,
                              22, Colors.white, TextAlign.center),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber,
                            minimumSize: Size(0, 50),

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                  topLeft: Radius.zero,
                                  bottomLeft: Radius.circular(10),
                                )
                            )
                        ),
                        onPressed: (){
                          setState(() {
                            _count=0;
                          });
                        },
                        child: TextCustom('اعادة', 'arabic', FontWeight.w400,
                            22, Colors.white, TextAlign.center),
                      )


                    ],
                  ),

                ],
              ),
            ),

          ])),
    );
  }

  void checkZaker( String zaker) {
    if (_zaker != zaker) {
      setState(() {
        _zaker = zaker;
        _count=0;
      });
    }
  }
}
