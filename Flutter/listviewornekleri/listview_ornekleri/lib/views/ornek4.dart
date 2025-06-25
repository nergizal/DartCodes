import 'package:flutter/material.dart';
import 'package:listview_ornekleri/models/user.dart';

class Ornek4 extends StatelessWidget {
  const Ornek4({super.key});

  @override
  Widget build(BuildContext context) {
    String mainUrl = "resimler";
    User u1 = User(name:"Bilal Karademir",imgUrl: "$mainUrl/2.png", tel:5416771591);
    User u2 = User(name:"Ahmet Karademir",imgUrl: "$mainUrl/3.png", tel:5416771591);
    User u3 = User(name:"Selin Yılmaz",imgUrl: "$mainUrl/4.png", tel:5416771591);
    User u4 = User(name:"Osman Gümüşir",imgUrl: "$mainUrl/5.png", tel:5416771591);
    User u5 = User(name:"Şermin Uygar",imgUrl: "$mainUrl/6.png", tel:5416771591);
    List<User> users=[u1,u2,u3,u4,u5];



    
    return Scaffold(
      appBar: AppBar(
        title: Text("Rehberim"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body:MyUserList(users: users),
    );
  }
}

class MyUserList extends StatefulWidget {
  final List<User> users;
  const MyUserList({required this.users});

  @override
  State<MyUserList> createState() => _MyUserListState();
}

class _MyUserListState extends State<MyUserList> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(itemCount:widget.users.length, itemBuilder:(context,index){
      return UserCard(user: widget.users[index]);
    });
  }
}


class UserCard extends StatefulWidget {
  final User user;
  const UserCard({required this.user});

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        alignment: Alignment.center,
        height: 85,
        child:ListTile(
          leading: CircleAvatar(
            // statefull olduğu için değşkene widget parametresi ile ulaştık ulaştığımız değer user sınıfından olduğu için imgUrl değişkenine diyerek direkt kullanabilidik.
            backgroundImage: AssetImage(widget.user.imgUrl),
          ),
          title: Text(widget.user.name),
          subtitle: Text(widget.user.tel.toString()),
          trailing: Icon(Icons.arrow_forward),

        )
      ),
    );
  }
}