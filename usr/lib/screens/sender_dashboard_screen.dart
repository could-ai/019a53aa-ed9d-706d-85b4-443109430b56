import 'package:flutter/material.dart';

class SenderDashboardScreen extends StatelessWidget {
  const SenderDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sender Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              child: ListTile(
                leading: const Icon(Icons.add_box),
                title: const Text('Create Delivery Request'),
                subtitle: const Text('Pickup, drop-off & parcel details'),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.map),
                title: const Text('Live Tracking'),
                subtitle: const Text('Track your parcel in real-time'),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.payment),
                title: const Text('Payment History'),
                subtitle: const Text('View past transactions'),
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
              child: Text('Sender Menu'),
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
