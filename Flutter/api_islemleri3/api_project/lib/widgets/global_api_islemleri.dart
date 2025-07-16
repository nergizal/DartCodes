import 'package:api_project/model/comment_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class GlobalApiIslemleri extends StatefulWidget {
  const GlobalApiIslemleri({super.key});

  @override
  State<GlobalApiIslemleri> createState() => _GlobalApiIslemleriState();
}

class _GlobalApiIslemleriState extends State<GlobalApiIslemleri> {
  late Future<List<Comment>> commentList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    commentList = getCommentList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GLobal API"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: FutureBuilder<List<Comment>>(
          future: commentList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var myPostlist = snapshot.data!;
              return ListView.builder(
                itemCount: myPostlist.length,
                itemBuilder: (context, index) {
                  var post = myPostlist[index];
                  return GestureDetector(
                    onTap: () {},
                    child: ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text(post.body),
                      subtitle: Text(post.body),
                      leading: CircleAvatar(
                        radius: 48,
                        child: Text(post.id.toString()),
                      ),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  Future<List<Comment>> getCommentList() async {
    try {
      await Future.delayed(Duration(seconds: 1));
      var response = await Dio().get(
        "https://jsonplaceholder.typicode.com/posts",
      );

      List<Comment> commentList = [];
      if (response.statusCode == 200) {
        commentList = (response.data as List)
            .map((postMap) => Comment.fromJson(postMap))
            .toList();
      }
      return commentList;
    } on DioException catch (e) {
      return Future.error(e.toString());
    }
  }
}
