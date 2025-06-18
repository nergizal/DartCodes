import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



void main() {
  runApp(const MyInstagramProject());
}

class MyInstagramProject extends StatelessWidget {
  const MyInstagramProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Instagram Clone"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body:MyStorySection(),
    );
  }
}



class MyStorySection extends StatelessWidget {
  const MyStorySection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String>imgList=["https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
    "https://t4.ftcdn.net/jpg/04/22/01/49/360_F_422014936_HLVT774FdiYB646NyNUymW04NUUsx4y5.jpg",
   "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg"

    ];
    List<int> randomNumber =[];
    Random r = Random();
    for(int i=0; i<imgList.length; i++){
      int sayi= r.nextInt(3);
      randomNumber.add(sayi);
    }
    return Column(
      children: [
        Container(
          height:100,
          //color: Colors.grey.shade300,
          child: SingleChildScrollView(
            scrollDirection:  Axis.horizontal,
            child: Row(
              children: [
                Row(
                  children: [
                    Story(imgUrl: imgList[randomNumber[0]]),
                    Story(imgUrl: imgList[randomNumber[1]]),
                    Story(imgUrl: imgList[randomNumber[1]]),
                    Story(imgUrl: imgList[randomNumber[0]]),
                    Story(imgUrl: imgList[randomNumber[1]]),
                    Story(imgUrl: imgList[randomNumber[2]]),
                    Story(imgUrl: imgList[randomNumber[0]]),

                    
              
                  ],
                ),
            
              ],
            ),
          ),
        ),
        Divider(),
        PostPage(),
      ],
    );
  }
}




class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> postImageList=[];

  Map<String, dynamic> post1 ={
    "imgUrl": "resimler/p7.png",
    "lc": 23500,
    "cc": 1230,
    "pc": 120
  };
   Map<String, dynamic> post2 ={
    "imgUrl": "resimler/p1.png",
    "lc": 17500,
    "cc": 1567,
    "pc": 7584
  };

   Map<String, dynamic> post3 ={
    "imgUrl": "resimler/p6.png",
    "lc": 14500,
    "cc": 500,
    "pc": 100
  };

   Map<String, dynamic> post4 ={
    "imgUrl": "resimler/p10.png",
    "lc": 35000,
    "cc": 1450,
    "pc": 88
  };

   Map<String, dynamic> post5 ={
    "imgUrl": "resimler/p3.png",
    "lc": 45500,
    "cc": 178,
    "pc": 40
  };

  List<Map> postList= [];
  postList.add(post1);
  postList.add(post2);
  postList.add(post3);
  postList.add(post4);
  postList.add(post5);
  


    return Container(
      //color:Colors.red,
      height: 700,
      child:SingleChildScrollView(
        child:Column(
          children: [
            MySharePost(imgUrl: postList[0]["imgUrl"],likeCount: postList[0]["lc"],commentCount: postList[0]["cc"],shareCount: postList[0]["pc"],islike: true,),

           MySharePost(imgUrl: postList[1]["imgUrl"],likeCount: postList[1]["lc"],commentCount: postList[1]["cc"],shareCount: postList[1]["pc"],islike: true,),

           MySharePost(imgUrl: postList[2]["imgUrl"],likeCount: postList[2]["lc"],commentCount: postList[2]["cc"],shareCount: postList[0]["pc"],),

           MySharePost(imgUrl: postList[3]["imgUrl"],likeCount: postList[3]["lc"],commentCount: postList[3]["cc"],shareCount: postList[3]["pc"],islike: true,),

           MySharePost(imgUrl: postList[4]["imgUrl"],likeCount: postList[4]["lc"],commentCount: postList[4]["cc"],shareCount: postList[4]["pc"],),
          ],
        ),
      )
    );
  }
}

class MySharePost extends StatelessWidget {
  final int likeCount;
  final int commentCount;
  final int shareCount;
  final String imgUrl;
  final bool islike;
  const MySharePost({
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
    required this.imgUrl,
    this.islike =false

    
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
    child:Container(
      decoration: BoxDecoration(
        border:Border.all(color: Colors.grey),
      ),
      child:Column(
        children: [
          Container(
            height: 300,
            color:Colors.green,
            child:Image.asset(imgUrl,
            fit: BoxFit.cover,
            ),
          ),
    
        Container(
          height: 65,
          //color:Colors.blue,
          child:Row(
            children: [
              //like and like count text
              Container(
                margin:EdgeInsets.symmetric(horizontal: 4),
                child: Row(
                  children: [
                    islike ? Icon(Icons.favorite, size:30,color:Colors.red,):
                    Icon(Icons.favorite_outline, 
                    size:30),
                    SizedBox(width: 4,),
                    Text(likeCount.toString(), style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),)
                  ],
                ),
              ),
              // comment and comment text
            Container(
              margin:EdgeInsets.symmetric(
                horizontal: 4
              ),
              child:Row(children: [
                  FaIcon(FontAwesomeIcons.comment,size: 24,),
                  SizedBox(width: 8,),
                  Text("$commentCount",style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 15
                  ),),
              ],
              ),
            ),
            
            //share and icon text
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              child:Row(
                children: [
                  FaIcon(FontAwesomeIcons.share,size:24),
                  SizedBox(width: 4,),
                  Text(shareCount.toString(), style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold
                  ),)
    
                ],
              ),
            ),
        Spacer(),
        Container(
          margin: EdgeInsets.only(right:4),
          child: Row(
            children: [
              Icon(Icons.bookmark_outline,size:30),
            ],
          ),
    
        ),
    
    
            ],
          ),
        ),
    
    
        ],
      ),
    ),
    );
  }
}



class Story extends StatelessWidget {
  final String imgUrl;
  const Story({
    super.key,
    required this.imgUrl,
  });

  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      height: 65,
      width: 65,
      decoration: BoxDecoration(
        color:Colors.black12,
        borderRadius: BorderRadius.circular(100),
        image:DecorationImage(image: NetworkImage(imgUrl),
        fit:BoxFit.cover)
        
      ),
    );
  }
}