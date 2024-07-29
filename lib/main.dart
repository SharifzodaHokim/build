




import 'package:build/kursi1.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
   const MyApp({super.key});

  @override
  State<MyApp> createState() => _Kursi1State();
}

class _Kursi1State extends State<MyApp> {
  List<String> names = [
    "Сутунмухра",
   "Анатомия",
   "Дарди шишро хис кунед"
  ];

  List<String> images = [
    "images/Spine.png",
    "images/image 95.png",
    "images/image 98.png",
  ];

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
      appBar: AppBar(
       title:  Image.asset("images/Umar Azizov.png",width: 170,height: 30,fit: BoxFit.contain,),
       actions: [
          Padding(
            padding: const EdgeInsets.only(right: 21.0),
              child: Icon(Icons.notifications_on_outlined,color: Colors.black,),
            ),
     
         ],
       centerTitle: true,
      ),
      body:SingleChildScrollView(
        child: Padding(
          
          padding: const EdgeInsets.all(16.0),
          child: Column(
            
            children: [
              SizedBox(
              height: 11,
              ),
              Center(
                child: Column(
                
                  children: [
                    Image.asset("images/Frame 1261154925.png"),
                  ],
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
              
                    ),
                  ),
                   Container(
                    margin: EdgeInsets.only(left: 8,right: 8),
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 178, 179, 179),
                      shape: BoxShape.circle,
              
                    ),
                  ),
                   Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 178, 179, 179),
                      shape: BoxShape.circle,
              
                    ),
                  )
                ],
              ),
              SizedBox(
              height: 25,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Мои курсы",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
              Container(
                child: Row(
                  children: [
                    Text("Смотреть все",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.blue),),
                    Icon(Icons.keyboard_arrow_right,color: Colors.blue,size: 25,),
                  ],
                ),
              )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 400,
              child: Expanded(
              
                  flex: 3,
                  child: ListView.builder(
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      return Kursi1(
                        post: names[index],
                        rang: images[index],
                      );
                    },
                  ),
                ),
            ),
          
        
            ],
          ),
        ),
      ),
      ),
    );
  }
}

