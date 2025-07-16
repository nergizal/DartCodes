import 'package:api_uygulamasi/model/user_model.dart';
import 'package:api_uygulamasi/widgets/userdetailpage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class GlobalApiIslemler extends StatefulWidget {
  const GlobalApiIslemler({super.key});

  @override
  State<GlobalApiIslemler> createState() => _GlobalApiIslemlerState();
}

class _GlobalApiIslemlerState extends State<GlobalApiIslemler> {
  late Future<List<Usermodel>> userList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userList = getUserList();
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
        child: FutureBuilder<List<Usermodel>>(
          future: userList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var myUserlist = snapshot.data!;
              return ListView.builder(
                itemCount: myUserlist.length,
                itemBuilder: (context, index) {
                  var user = myUserlist[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserDetailPage(user: user),
                        ),
                      );
                    },
                    child: ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text(user.name),
                      subtitle: Text(user.email),
                      leading: CircleAvatar(
                        radius: 48,
                        child: Text(user.id.toString()),
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

  Future<List<Usermodel>> getUserList() async {
    try {
      await Future.delayed(Duration(seconds: 2));
      var response = await Dio().get(
        "https://jsonplaceholder.typicode.com/users",
      );

      List<Usermodel> userList = [];
      if (response.statusCode == 200) {
        //başarılı veri çekimi
        userList = (response.data as List)
            .map((userMap) => Usermodel.fromJson(userMap))
            .toList();
      }
      return userList;
    } on DioException catch (e) {
      return Future.error(e.toString());
    }
  }

  /*
Future<List<Usermodel>> getUserDetay() async{
try{
  await Future.delayed(Duration(seconds: 2));
  var response = await Dio().get("https://jsonplaceholder.typicode.com/users");

  List<Usermodel> detayList =[];
  if(response.statusCode ==200){
    detayList =(response.data as List).map((userList)).toList();
  }
}
}
*/
}
