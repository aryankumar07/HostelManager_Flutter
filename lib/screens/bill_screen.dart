import 'package:flutter/material.dart';

class BillsScreen extends StatefulWidget{
  BillsScreen({super.key});

  @override
  State<BillsScreen> createState() {
    return _BillsScreenState();
  }
}


class _BillsScreenState extends State<BillsScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Bills page"),
    );
  }
}