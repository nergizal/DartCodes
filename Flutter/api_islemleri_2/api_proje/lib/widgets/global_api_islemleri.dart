import 'package:api_proje/model/post_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class GlobalApiIslemleri extends StatefulWidget {
  const GlobalApiIslemleri({super.key});

  @override
  State<GlobalApiIslemleri> createState() => _GlobalApiIslemleriState();
}

class _GlobalApiIslemleriState extends State<GlobalApiIslemleri> {
  late Future<List<Postmodel>> postList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    postList = getPostList();
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
        child: FutureBuilder<List<Postmodel>>(
          future: postList,
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
                      title: Text(post.title),
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

  Future<List<Postmodel>> getPostList() async {
    try {
      await Future.delayed(Duration(seconds: 1));
      var response = await Dio().get(
        "https://jsonplaceholder.typicode.com/posts",
      );

      List<Postmodel> postList = [];
      if (response.statusCode == 200) {
        postList = (response.data as List)
            .map((postMap) => Postmodel.fromJson(postMap))
            .toList();
      }
      return postList;
    } on DioException catch (e) {
      return Future.error(e.toString());
    }
  }
}
