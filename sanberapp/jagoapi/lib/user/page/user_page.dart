import 'package:flutter/material.dart';
import 'package:jagoapi/user/model/user_model.dart';
import 'package:jagoapi/user/service/user_service.dart';
import 'detail_user_page.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<UserModel> users = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() async {
    users = await UserService().fetchUser();
    print("ini data user $users");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jere ganteng'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text('${users[index].firstName} ${users[index].lastName}'),
            leading: Image.network(users[index].avatar),
            subtitle: Text(users[index].email),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailUserPage(userId: users[index].id),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}