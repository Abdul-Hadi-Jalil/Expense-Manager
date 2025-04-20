import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({super.key});

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 20),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppBar(
            backgroundColor: Colors.cyan,
            title: Text("Add Expense"),
            centerTitle: true,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 18),
        child: Column(
          spacing: 20,
          children: [
            TextFormField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                labelText: "Amount",
                labelStyle: TextStyle(color: Colors.black),
                border: InputBorder.none,
              ),
            ),
            TextFormField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                labelText: "Payee",
                labelStyle: TextStyle(color: Colors.black),
                border: InputBorder.none,
              ),
            ),
            TextFormField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                labelText: "note",
                labelStyle: TextStyle(color: Colors.black),
                border: InputBorder.none,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, top: 3),
              child: Row(
                children: [
                  Text(
                    "Date: ${DateFormat('yyyy-MM-dd').format(_selectedDate)}",
                  ),
                  SizedBox(width: 200),
                  Icon(Icons.calendar_today),
                ],
              ),
            ),
            TextFormField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                labelText: "Category",
                labelStyle: TextStyle(color: Colors.black),
                border: InputBorder.none,
              ),
            ),
            TextFormField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                labelText: "Tag",
                labelStyle: TextStyle(color: Colors.black),
                border: InputBorder.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
