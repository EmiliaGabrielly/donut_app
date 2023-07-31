
import 'dart:ui';
import 'package:donnut_app/tab/burguer_tab.dart';
import 'package:donnut_app/tab/milkshake_tab.dart';
import 'package:donnut_app/tab/pancake_tab.dart';
import 'package:donnut_app/util/my_tabs.dart';
import 'package:flutter/material.dart';

import '../tab/donut_tab.dart';
import '../tab/pizza_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State <HomePage> createState()=> _HomePageState(); 
  }

class _HomePageState extends State<HomePage>{

  List <Widget> myTabs =  [
    //donut tab
    const MyTab (
      iconPath: 'lib/icons/donuts(2).png',
    ), 
    const MyTab (
      iconPath: 'lib/icons/hamburguer.png',
    ), 
    const MyTab (
      iconPath: 'lib/icons/milkshake.png',
    ), 
    const MyTab (
      iconPath: 'lib/icons/pancake.png',
    ), 
    const MyTab (
      iconPath: 'lib/icons/fatia-de-pizza.png',
    ), 
    
  ];   
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold (
        appBar: AppBar (
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey[800],
              size: 36,
            ),
            onPressed: () {
              //open drawer            
            },
           ), 
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right:24.0),
              child: Icon(
                Icons.person,
                color: Colors.grey[800],
                size: 36,              
              ),
            ),
          ],
        ),
        body: Column(
          children: const [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child:  Row(
                children:  [

                  Text(
                  'I want to',
                  style: TextStyle(fontSize: 24),
                  ),

                  Text(
                  'EAT',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
           const SizedBox (height: 24.0, ),

           TabBar(tabs: myTabs),

           // tab bar view 
           Expanded(
            child: TabBarView(
              children: [
                DonutTab (),

                BurguerTab (),

                MilkshakeTab (),

                PancakeTab(),

                PizzaTab (),   
              ],
              ),
            ),
          ],
        ),
      ),
    );
     
}
}