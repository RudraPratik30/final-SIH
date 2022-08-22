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

class ObjectivePage extends StatelessWidget {
  const ObjectivePage({Key? key}) : super(key: key);

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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Text(
                      "Objectives",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Text(
                      "- Providing up to 100 days of unskilled manual work in a financial year to every household in rural areas, as per demand, resulting in creation of productive assets of prescribed quality & durability.",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        // fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.blueAccent,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Text(
                      "- Strengthening the livelihood resource-base of the poor.",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        // fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.blueAccent,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Text(
                      "- Proactively ensuring social inclusion.",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        // fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.blueAccent,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                    child: Text(
                      "- Strengthening of Panchayati Raj Institutions (PRIs).",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        // fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
          iconColor: Colors.blueAccent,
          title: const Text('Objectives'),
          textColor: Colors.blueAccent,
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
          title: const Text('Login'),
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
