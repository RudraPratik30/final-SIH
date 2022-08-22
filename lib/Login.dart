import 'package:final_nav_bar/EmpLogin.dart';
import 'package:final_nav_bar/MSELogin.dart';
import 'package:flutter/material.dart';
import 'package:final_nav_bar/HomePage.dart';
import 'package:final_nav_bar/About.dart';
import 'package:final_nav_bar/Objective.dart';
import 'package:final_nav_bar/Stakeholders.dart';
import 'package:final_nav_bar/TenEntitlement.dart';
import 'package:final_nav_bar/Works.dart';
// import 'package:final_nav_bar/SearchAssets.dart';
// import 'package:final_nav_bar/NearbyAssets.dart';
import 'package:final_nav_bar/Login.dart';
import 'package:final_nav_bar/MSEProfile.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MNREGA"),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: const NavigationDrawer(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.asset(
                  'assets/mnrega.png',
                  height: 150.0,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                "MNREGA",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Login as",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.blueAccent,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const MSELogin()));
                    },
                    child: const Text(
                      "MSE Officer",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 50.0,
                  ),
                  RaisedButton(
                    color: Colors.blueAccent,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EmpLogin(),
                        ),
                      );
                    },
                    child: const Text(
                      "Employee",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),
    ),
  );

  Widget buildHeader(BuildContext context) => Container(
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top,
    ),
  );

  Widget buildMenuItems(BuildContext context) => Container(
    padding: const EdgeInsets.all(24),
    child: Wrap(
      runSpacing: 0,
      children: [
        ListTile(
          leading: const Icon(Icons.location_pin),
          title: const Text('Background'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const HomePage(),
            ));
          },
        ),
        const Divider(
          color: Colors.blueAccent,
        ),
        ListTile(
          leading: const Icon(Icons.info),
          title: const Text('About MGNREGA'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const AboutPage(),
            ));
          },
        ),
        const Divider(
          color: Colors.blueAccent,
        ),
        ListTile(
          leading: const Icon(Icons.games_outlined),
          title: const Text('Objectives'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ObjectivePage(),
            ));
          },
        ),
        const Divider(
          color: Colors.blueAccent,
        ),
        ListTile(
          leading: const Icon(Icons.stacked_bar_chart),
          title: const Text('Stakeholders'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const StakeholderPage(),
            ));
          },
        ),
        const Divider(
          color: Colors.blueAccent,
        ),
        ListTile(
          leading: const Icon(Icons.verified_user),
          title: const Text('Ten Entitlement'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const TenEntitlementPage(),
            ));
          },
        ),
        const Divider(
          color: Colors.blueAccent,
        ),
        ListTile(
          leading: const Icon(Icons.work),
          title: const Text('Works'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const WorkPage(),
            ));
          },
        ),
        const Divider(
          color: Colors.blueAccent,
        ),
        ListTile(
          leading: const Icon(Icons.share_location_sharp),
          title: const Text('Search Assets'),
          onTap: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //   builder: (context) => const SearchAssetsPage(),
            // ));
          },
        ),
        const Divider(
          color: Colors.blueAccent,
        ),
        ListTile(
          leading: const Icon(Icons.my_location),
          title: const Text('Nearby Assets'),
          onTap: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //   builder: (context) => const NearbyAssetsPage(),
            // ));
          },
        ),
        const Divider(
          color: Colors.blueAccent,
        ),
        ListTile(
          leading: const Icon(Icons.login),
          iconColor: Colors.blueAccent,
          title: const Text('Login'),
          textColor: Colors.blueAccent,
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const LoginPage(),
            ));
          },
        ),
      ],
    ),
  );
}
