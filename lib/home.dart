import 'data.dart';
import 'sidebar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // app bar
    final appBar = AppBar(
      elevation: .5,
      title: Text(
        'Ngaos Novel',
        style: TextStyle(
          fontFamily: 'Cursive',
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {},
        )
      ],
    );

    /// create Novel tile hero
    createTile(Novel Novel) => Hero(
          tag: Novel.title,
          child: Material(
            elevation: 15.0,
            shadowColor: Colors.purple.shade900,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'detail/${Novel.title}');
              },
              child: Image(
                image: AssetImage(Novel.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );

    /// create Novel grid tiles
    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            childAspectRatio: 2 / 3,
            crossAxisCount: 3,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: Novels.map((Novel) => createTile(Novel)).toList(),
          ),
        )
      ],
    );

    return Scaffold(
      drawer: const SideBar(),
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar,
      body: grid,
    );
  }
}
