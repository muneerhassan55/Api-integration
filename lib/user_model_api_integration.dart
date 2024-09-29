import 'dart:convert';

import 'package:apis_integration/model/users_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserModelApiIntegration extends StatefulWidget {
  const UserModelApiIntegration({super.key});

  @override
  State<UserModelApiIntegration> createState() =>
      _UserModelApiIntegrationState();
}

class _UserModelApiIntegrationState extends State<UserModelApiIntegration> {
  List<UsersModel> userList = [];

  Future<List<UsersModel>> getUserApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      // Decode JSON data
      var data = jsonDecode(response.body.toString());

      // Ensure data is a List before processing
      if (data is List) {
        // Clear the userList before adding new data
        userList.clear();

        // Loop through the list and convert each item to UsersModel
        for (var i in data) {
          if (i is Map<String, dynamic>) {
            userList.add(UsersModel.fromJson(i));
          }
        }
      }

      return userList;
    } else {
      // Return an empty list if the request fails
      return [];
    }
  }
  // List<UsersModel> userList = [];
  // Future<List<UsersModel>> getUserApi() async {
  //   final response =
  //       await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
  //   var data = jsonDecode(response.body.toString());
  //   if (response.statusCode == 200) {
  //     for (Map i in data) {
  //       userList.add(UsersModel.fromJson(i));
  //     }
  //     return userList;
  //   } else {
  //      return userList;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'User Model Api',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder(
                  future: getUserApi(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(child: CircularProgressIndicator());
                    } else {
                      return ListView.builder(
                          itemCount: userList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              child: Card(
                                child: Column(
                                  children: [
                                    ReusableRow(
                                        title: 'Name',
                                        value: userList[index].name.toString()),
                                    ReusableRow(
                                        title: 'UserName',
                                        value: userList[index]
                                            .username
                                            .toString()),
                                    ReusableRow(
                                        title: 'Email',
                                        value:
                                            userList[index].email.toString()),
                                    ReusableRow(
                                        title: 'Address',
                                        value: userList[index]
                                                .address!
                                                .street
                                                .toString() +
                                            '' +
                                            userList[index]
                                                .address!
                                                .city
                                                .toString()),
                                    ReusableRow(
                                        title: 'Name',
                                        value: userList[index]
                                            .address!
                                            .geo!
                                            .lat
                                            .toString()),
                                  ],
                                ),
                              ),
                            );
                          });
                    }
                  }))
        ],
      ),
    );
  }
}

class ReusableRow extends StatelessWidget {
  String title, value;
  ReusableRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        Text(value)
      ],
    );
  }
}
