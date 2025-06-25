import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:WeatherScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 34, 122, 195)
        ),
        
      

      child: Padding(
        padding: const EdgeInsets.all(70.0),
        child: Column( 
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("resimler/konum.png"),
              Text("Forteleza", style: TextStyle(fontSize: 25,color: Colors.white),),
              Image.asset("resimler/bildirim.png")
            ],
          ),
       
          Column(
            children: [
              Image.asset("resimler/hava_resim.png",width: 300,height: 300,),
              SizedBox(height: 0,),
              Container(
               child: Text("28°",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),)
               
            
              ),
              Container(
                child: Text("Precipitations",style: TextStyle(fontSize: 20,color: Colors.white),
              ),),

            SizedBox(height: 30,),

              Container(
                padding: EdgeInsets.all(6),
                child: Text("6%",style: TextStyle(color: Colors.white),),
               height: 30,
               width: 600,
              decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 1, 15, 83),
                    borderRadius: BorderRadius.circular(20),
  ),
               
            
              ),
    SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Text("Today Mar, 9 ", style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                   height: 150,
                   width: 290,
                  decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 1, 15, 83),
                  borderRadius: BorderRadius.circular(20),
                  ),




                
                   
                              
                  ),


                 



                
                ],
              ),
      SizedBox(height: 15,),

              Container(
                padding: EdgeInsets.all(10),
                child: Text("Next Forecast ", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                  height: 80,
                  width: 600,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 1, 15, 83),
                    borderRadius: BorderRadius.circular(20),
  ),
),



            ],
          ),
           
        
        ],
       
        
        ),

        


        
      ),
          

    






      ) ,

      


      
    );
  }
}