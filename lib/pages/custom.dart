import 'package:flutter/material.dart';

class Custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              height: 200.0,
              color: Theme.of(context).primaryColor,
            ),
            Expanded(
              child: Container(),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Custom Events'),
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          controller: _tabController,
          onTap: (count) {
            // add function
          },
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          tabs: <Widget>[
            Tab(text: 'primero'),
            Tab(text: 'segundo'),
            Tab(text: 'tercero')
          ],
        ),
        Expanded(
            child: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Container(),
            Container(),
            Container(),
          ],
        ))
      ],
    );
  }
}
