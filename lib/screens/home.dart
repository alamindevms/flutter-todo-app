import 'package:flutter/material.dart';

import '../widgets/go_premium.dart';
import '../widgets/task.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: _buildAppBar(),
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.blueGrey.shade900,
            size: 30,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const GoPremium(),
          Container(
            padding: const EdgeInsets.all(15),
            child: Text(
              'Task',
              style: TextStyle(
                color: Colors.blueGrey.shade900,
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
          Expanded(
            child: Tasks(),
          )
        ],
      ),
      bottomNavigationBar: _buildBottomNevigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey.shade600,
        onPressed: () {  },
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.blueGrey.shade100,
        ),
      ),
    );
  }
}

class _buildAppBar extends StatelessWidget {
  const _buildAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45,
          width: 45,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/images/avatar.png'),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          'Hi, Al Amin',
          style: TextStyle(
            color: Colors.blueGrey.shade800,
            fontWeight: FontWeight.w700,
            fontSize: 25
          ),
        )
      ],
    );
  }
}

Widget _buildBottomNevigationBar(){
  return Container(
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30)
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.4),
          spreadRadius: 5,
          blurRadius: 10
        )
      ]
    ),
    child: ClipRRect(
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey.shade600,
        unselectedItemColor: Colors.blueGrey.withOpacity(0.5),
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home_rounded,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Person',
            icon: Icon(
              Icons.person_rounded,
              size: 30,
            ),
          ),
        ],
      ),
    ),
  );
}