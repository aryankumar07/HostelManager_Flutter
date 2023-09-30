import 'package:flutter/material.dart';
import 'package:hostelmanager/screens/bill_screen.dart';
import 'package:hostelmanager/screens/profile_screen.dart';

class TabScreen extends StatefulWidget{

  TabScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return  _TabScreenState();
  }
}

class _TabScreenState extends State<TabScreen>{

  int currentPageIndex = 0;


  void _selectPage(int index){
    setState(() {
      currentPageIndex = index;
      print(currentPageIndex);
    });
  }

  @override
  Widget build(BuildContext context) {

    String PageTitle = "Bills";

    Widget activePage = BillsScreen();

    if(currentPageIndex==1){
      PageTitle = "Profile";
      activePage =  ProfileScreen();
    }


    return Scaffold(
      appBar: AppBar(
        title: Text(PageTitle),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: currentPageIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.account_balance),label: "Bills"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ]),
    );
  }
}