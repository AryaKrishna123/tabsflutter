import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar"),
          bottom:  TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(20)),
            onTap: (value) {
              print(value);
            },
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,fontSize:20,color: Colors.pink
            ),
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: TextStyle(fontSize: 10),
            dividerColor: Colors.transparent,
            tabs: [
               
          Tab(
            icon: Icon(Icons.favorite),
              text: "likes"),
          Tab(
            icon: Icon(Icons.person),
              text: "profile"),
              Tab(
             icon: Icon(Icons.home),
               text: "home"),
          Tab(
            icon: Icon(Icons.favorite),
              text: "likes"),
          Tab(
            icon: Icon(Icons.person),
              text: "profile"),],),
            
          ),
        
        body: TabBarView(children: [
            
            Container(color: Colors.red,),
            Container(color: Colors.blue,),
            Container(color: Colors.green),
             Container(color: Colors.red,),
            Container(color: Colors.blue,),
            Container(color: Colors.green,)
          ],),
      ),
      );
    
  
  }
}