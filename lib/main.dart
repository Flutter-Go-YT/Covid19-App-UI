import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _index = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFF473F97),
      body: SafeArea(

        bottom: false,
        child: Column(children: <Widget>[

          Padding(
            padding: const EdgeInsets.only(top:5.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[

              FlatButton(child: Image.asset('img/menu.png'),onPressed: (){},),

              FlatButton(child: Image.asset('img/bell.png'),onPressed: (){},),

            ],),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical:18.0,horizontal: 30),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[

              Text("Covid-19",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),),

              Container(

                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical:12.0,horizontal: 20),
                  child: Row(children: <Widget>[

                    Image.asset('img/usa.png'),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:12.0),
                      child: Text("USA",style: TextStyle(color: Colors.black,fontSize: 16),),
                    ),

                    Image.asset('img/down.png')

                  ],),
                ),
              )
            ],),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical:15.0,horizontal: 30),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: <Widget>[

              Text("Are you feeling sick ?",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),

              Padding(
                padding: const EdgeInsets.only(top:12.0),
                child: Text("If you feel sick with any of covid-19 symptoms please call or SMS us immediately for help.",style: TextStyle(color: Colors.white54,fontSize: 17),),
              ),


            ],),
          ),

          Padding(
            padding: const EdgeInsets.only(top:20.0,bottom: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
              
              GestureDetector(

                onTap: (){},
                child: Container(

                  decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(25)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 25),
                    child: Row(children: <Widget>[

                      Image.asset('img/phone.png'),

                      Padding(
                        padding: const EdgeInsets.only(left:13.0),
                        child: Text("Call Now",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                      )
                    ],),
                  ),
                ),
              ),

               Padding(
                 padding: const EdgeInsets.only(left:20.0),
                 child: GestureDetector(

                  onTap: (){},
                  child: Container(

                    decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 25),
                      child: Row(children: <Widget>[

                        Image.asset('img/msg.png'),

                        Padding(
                          padding: const EdgeInsets.only(left:13.0),
                          child: Text("Send SMS",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                        )
                      ],),
                    ),
                  ),
              ),
               ),

            ],),
          ),
          
          Expanded(

            child: Container(

              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.only(top:15.0,left: 15,right: 15),
                child: Column(children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.only(top:12.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.start,children: <Widget>[

                      Text("Prevention",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
                    ],),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top:25.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[

                      Card(context, "img/p1.png", "Avoid close \n contact"),
                      Card(context, "img/p2.png", "Wash your  \n hands often"),
                      Card(context, "img/p3.png", "Wear a face \n mask"),

                    ],),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:22.0),
                    child: Container(

                      decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.lightBlue,Color(0xFFF473F97)]),borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(children: <Widget>[

                          Image.asset('img/test.png'),

                          Padding(
                            padding: const EdgeInsets.only(left:25.0),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: <Widget>[

                              Text("Do your own test!",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),

                              Padding(
                                padding: const EdgeInsets.only(top:12.0),
                                child: Text("Follow the instruction\nto do your own test",style: TextStyle(color: Colors.white,fontSize: 18),),
                              )


                            ],),
                          )

                        ],),
                      ),
                    ),
                  ),
                  

                  Spacer(),

                  CustomTab(context),

                ],),
              ),

            ),
          ),

        ],),
      ),
    );
  }

@override
Widget CustomTab(BuildContext context) {
  return Container(

    child: 
    Padding(
      padding:  EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: <Widget>[

        GestureDetector(

          onTap: (){

            setState(() {
              
              _index = 0;
            });
          },
          child: Container(

            decoration: BoxDecoration(color: _index == 0 ? Colors.blue : Colors.transparent,borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 30),
              child: Image.asset('img/home.png',color: _index == 0 ? Colors.white : Colors.black45),
            ),
          ),
        ),

        GestureDetector(

          onTap: (){

            setState(() {
              
              _index = 1;
            });
          },
          child: Container(

            decoration: BoxDecoration(color: _index == 1 ? Colors.blue : Colors.transparent,borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 30),
              child: Image.asset('img/chart.png',color: _index == 1 ? Colors.white : Colors.black45),
            ),
          ),
        ),

              GestureDetector(

          onTap: (){

            setState(() {
              
              _index = 2;
            });
          },
          child: Container(

            decoration: BoxDecoration(color: _index == 2 ? Colors.blue : Colors.transparent,borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 30),
              child: Image.asset('img/news.png',color: _index == 2 ? Colors.white : Colors.black45),
            ),
          ),
        ),

              GestureDetector(

          onTap: (){

            setState(() {
              
              _index = 3;
            });
          },
          child: Container(

            decoration: BoxDecoration(color: _index == 3 ? Colors.blue : Colors.transparent,borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: 30),
              child: Image.asset('img/info.png',color: _index == 3 ? Colors.white : Colors.black45),
            ),
          ),
        ),

      ],),
    ),
  );
}


  @override
  Widget Card(BuildContext context,String img,String name) {
    return Column(children: <Widget>[

      Image.asset(img),

      Padding(
        padding: const EdgeInsets.only(top:12.0),
        child: Text(name,style: TextStyle(color: Colors.black54,fontSize: 18),textAlign: TextAlign.center,),
      )

    ],);
  }
}