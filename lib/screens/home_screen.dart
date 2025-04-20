import 'package:expense_manager/screens/add_expense_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Expense Tracker"),
          centerTitle: true,
          backgroundColor: Colors.cyan,
          foregroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [Tab(text: "By Date"), Tab(text: 'By Category')],
          ),
        ),
        drawer: Drawer(),
        body: TabBarView(
          children: [
            Center(child: Text('Date Content')),
            Center(child: Text('Category Content')),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddExpenseScreen()),
            );
          },
          backgroundColor: Colors.cyan[300],
          child: Icon(Icons.add, color: Colors.black),
        ),
      ),
    );
  }
}
