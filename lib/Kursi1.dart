import 'package:flutter/material.dart';

class Kursi1 extends StatelessWidget {
  final String rang;
   final String post;
    Kursi1({super.key,  
  required this.post,
   required this.rang,
   });

  @override
  Widget build(BuildContext context) {
    return 
      Padding(
      padding: EdgeInsets.all(16),
      child:Row(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 270,
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                               color: Color(0xFF111827),
                              blurRadius: 20,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                          )
                        ]
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 80,
                                  decoration: BoxDecoration(
                                    
                                    borderRadius: BorderRadius.circular(10),
                                    image:DecorationImage(image: AssetImage(rang),fit: BoxFit.cover),
                                  ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 14,
                              ),
                                Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              post,
                            style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold ),),
                            Row(
                              children: [
                                Icon(Icons.play_circle_outline,color: Colors.blue,size: 20,),
                                Text(" 20 уроков "),
                                Container(
                                  margin: EdgeInsets.only(right: 3),
                                  width: 3,
                                  height: 3,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey,
                                  ),
                                ),
                                Icon(Icons.access_time,color: Colors.orange,size: 20,),
                                Text(" 16 ч "),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(height: 50,),
                                Text("Подписка: ",style: TextStyle(fontSize:18 ),),
                                Text("20 дней",style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 7, 201, 14),fontWeight: FontWeight.bold),)
                              ],
                            ),
                            
                          ],
                                        ),
                                    
                            ],
                          ),
                            Column(
                              children: [
                                Row(
                                                    
                                                children: [
                                                  Container(
                                                    width: 250,
                                                    height: 10,
                                                    decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xffF5F5F5),
                                                    ),
                                                    child: Row(
                                children: [
                                  Container(
                                           width: 60,       
                                    decoration: BoxDecoration(
                                      
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                                                    ),
                                                  ),
                             
                                                ],
                                              ),
                                              SizedBox(height: 2,),
                                                                   Row(
                                                    children: [
                                Row(
                                 
                                  children: [
                                    Text("Пройдено: ",style: TextStyle(fontSize: 18),),
                                    Text("6/20",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 70),
                                  child: Text("32%",style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),)
                                  ),
                                                    ],
                                                  )
                              ],
                            )
                        ],
                      ),
                      
                    ),
                  
                  ],
                ),
                       
             
             
              ],
            ),
    );
  }
}