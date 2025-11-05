import 'package:flutter/material.dart';

class TravelerDashboardScreen extends StatelessWidget {
  const TravelerDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Traveler Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              child: ListTile(
                leading: const Icon(Icons.route),
                title: const Text('Set Travel Route'),
                subtitle: const Text('Enter your travel schedule'),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.local_offer),
                title: const Text('Suggested Parcels'),
                subtitle: const Text('View AI-matched delivery requests'),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.account_balance_wallet),
                title: const Text('Earnings'),
                subtitle: const Text('View your earnings summary'),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text('Traveler Menu'),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
