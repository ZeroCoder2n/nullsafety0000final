import 'package:flutter/material.dart';
import 'package:nullsafety/utils/constants.dart';
import 'package:provider/provider.dart';

import '../../providers/user_provider.dart';
import '../../utils/helper_functions.dart';
import '../launcher_page.dart';
import 'manage_user.dart';

class AdminDashboard extends StatefulWidget {
  static const routeName = '/adminDashboard';
  const AdminDashboard({Key? key}) : super(key: key);

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  late UserProvider userProvider;

  @override
  void didChangeDependencies() {
    userProvider = Provider.of<UserProvider>(context, listen: false);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin'),
        actions: [
          IconButton(
            iconSize: 25,
            onPressed: () {
              setLoginStatus(false).then((value) {
                Navigator.pushReplacementNamed(context, LauncherPage.routeName);
              });
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 300,
                  width: 350,
                  color: containerColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          userProvider.currentUser?.name ?? 'admin name',
                          style: const TextStyle(fontSize: 25),
                        ),
                      ),
                      Text(
                        userProvider.currentUser?.email ?? 'admin email',
                        style: const TextStyle(fontSize: 18),
                      ),
                      Text(
                        userProvider.currentUser?.phoneNo ?? 'admin phoneNo',
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, ManageUser.routeName);
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 60,
                    width: 300,
                    color: containerColor,
                    child: const Center(
                        child: Text(
                      'Manage User',
                      style: TextStyle(fontSize: 20),
                    )),
                  ),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 60,
                    width: 300,
                    color: containerColor,
                    child: const Center(
                        child: Text(
                      'Manage Course',
                      style: TextStyle(fontSize: 20),
                    )),
                  ),
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 60,
                    width: 300,
                    color: containerColor,
                    child: const Center(
                        child: Text(
                      'Complain Box',
                      style: TextStyle(fontSize: 20),
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
