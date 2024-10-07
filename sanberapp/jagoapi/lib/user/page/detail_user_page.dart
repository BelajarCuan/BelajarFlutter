import 'package:flutter/material.dart';
import 'package:jagoapi/user/model/user_model.dart';
import 'package:jagoapi/user/service/user_service.dart';

class DetailUserPage extends StatefulWidget {
  final int userId;

  const DetailUserPage({required this.userId, super.key});

  @override
  State<DetailUserPage> createState() => _DetailUserPageState();
}

class _DetailUserPageState extends State<DetailUserPage> {
  UserModel? user;

  @override
  void initState() {
    super.initState();
    fetchUserDetail();
  }

  fetchUserDetail() async {
    user = await UserService().fetchUserDetail(widget.userId);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail User'),
      ),
      body: user == null
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(user!.avatar),
                  SizedBox(height: 16),
                  Text(
                    '${user!.firstName} ${user!.lastName}',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(user!.email, style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
    );
  }
}
