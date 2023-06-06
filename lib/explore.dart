import 'package:flutter/material.dart';
import 'package:ui/refine.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0E2E43),
        leading: const Icon(Icons.menu),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Howdy Dipendra Raghav !!',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Row(
              children: const [
                Icon(Icons.location_on, size: 12),
                SizedBox(width: 4),
                Text(
                  'Rajendra Nagar, Ghaziabad',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RefineScreen()),
                );
              },
              child: Column(
                children: const [
                  SizedBox(height: 10),
                  Icon(Icons.checklist, size: 25),
                  SizedBox(width: 4),
                  Text(
                    'Refine',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(text: 'Personal'),
            Tab(text: 'Business'),
            Tab(text: 'Merchant'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        // Add your logic here
                      },
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          contentPadding: EdgeInsets.symmetric(vertical: 12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 4,
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 16.0),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Dipendra Raghav',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        const SizedBox(height: 5.0),
                                        const Text('Ghaziabad | Student'),
                                        const SizedBox(height: 5.0),
                                        const Text(
                                          'Within 100-200 m',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        const SizedBox(height: 7.0),
                                        Container(
                                          height: 7.0,
                                          width: 150.0,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                        const SizedBox(height: 75.0),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 30,
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                            image: AssetImage(
                                'assets/dip3.jpg'), // Replace with your image path
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 50,
                      top: 120,
                      child: Text(
                        'Coffee | Business | Friendship',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 50,
                      top: 145,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Hi community! I am open to new connections'),
                          Text("😀")
                        ],
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 15,
                      child: TextButton(
                        child: const Text('+INVITE'),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 4,
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 16.0),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Dipendra Raghav',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        const SizedBox(height: 5.0),
                                        const Text('Ghaziabad | Student'),
                                        const SizedBox(height: 5.0),
                                        const Text(
                                          'Within 100-200 m',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        const SizedBox(height: 7.0),
                                        Container(
                                          height: 7.0,
                                          width: 150.0,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                        const SizedBox(height: 75.0),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 30,
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                            image: AssetImage(
                                'assets/dip3.jpg'), // Replace with your image path
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 50,
                      top: 120,
                      child: Text(
                        'Coffee | Business | Friendship',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 50,
                      top: 145,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Hi community! I am open to new connections'),
                          Text("😀")
                        ],
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 15,
                      child: TextButton(
                        child: const Text('+INVITE'),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 4,
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 16.0),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Dipendra Raghav',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        const SizedBox(height: 5.0),
                                        const Text('Ghaziabad | Student'),
                                        const SizedBox(height: 5.0),
                                        const Text(
                                          'Within 100-200 m',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        const SizedBox(height: 7.0),
                                        Container(
                                          height: 7.0,
                                          width: 150.0,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                        const SizedBox(height: 75.0),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 30,
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                            image: AssetImage(
                                'assets/dip3.jpg'), // Replace with your image path
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 50,
                      top: 120,
                      child: Text(
                        'Coffee | Business | Friendship',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 50,
                      top: 145,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Hi community! I am open to new connections'),
                          Text("😀")
                        ],
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 15,
                      child: TextButton(
                        child: const Text('+INVITE'),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 4,
                        child: Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 16.0),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Dipendra Raghav',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        const SizedBox(height: 5.0),
                                        const Text('Ghaziabad | Student'),
                                        const SizedBox(height: 5.0),
                                        const Text(
                                          'Within 100-200 m',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        const SizedBox(height: 7.0),
                                        Container(
                                          height: 7.0,
                                          width: 150.0,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                        const SizedBox(height: 75.0),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 30,
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                            image: AssetImage(
                                'assets/dip3.jpg'), // Replace with your image path
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 50,
                      top: 120,
                      child: Text(
                        'Coffee | Business | Friendship',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 50,
                      top: 145,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Hi community! I am open to new connections'),
                          Text("😀")
                        ],
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 15,
                      child: TextButton(
                        child: const Text('+INVITE'),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your logic here
        },
        backgroundColor: const Color(0xFF0E2E43),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.network_cell),
            label: 'Network',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Groups',
          ),
        ],
      ),
    );
  }
}
