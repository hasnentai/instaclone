import 'package:flutter/material.dart';
import 'package:instagram_clone/insta_icons_icons.dart';

class HomePage extends StatelessWidget {
  Widget instaStroies(BuildContext context) {
    return Container(
      height: 95.0,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            if (i == 0) {
              return Column(
                children: <Widget>[
                  Container(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(2.0),
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(75.0),
                              image: DecorationImage(
                                  image: AssetImage("img/instauser-min.jpeg"))),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.blue),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    margin: EdgeInsets.only(right: 8.0),
                    height: 75.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            stops: [
                              0.1,
                              0.25,
                              0.50,
                              0.75,
                              1
                            ],
                            colors: [
                              Color(0xfff09433),
                              Color(0xffe6683c),
                              Color(0xffdc2743),
                              Color(0xffcc2366),
                              Color(0xffbc1888),
                            ]),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(75.0)),
                  ),
                  Text("Virat Kohli")
                ],
              );
            } else {
              return Column(
                children: <Widget>[
                  Container(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(2.0),
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(75.0),
                              image: DecorationImage(
                                  image: AssetImage("img/instauser-min.jpeg"))),
                        ),
                      ],
                    ),
                    margin: EdgeInsets.only(right: 8.0),
                    height: 75.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            stops: [
                              0.1,
                              0.25,
                              0.50,
                              0.75,
                              1
                            ],
                            colors: [
                              Color(0xfff09433),
                              Color(0xffe6683c),
                              Color(0xffdc2743),
                              Color(0xffcc2366),
                              Color(0xffbc1888),
                            ]),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(75.0)),
                  ),
                  Text("Virat Kohli")
                ],
              );
            }
          }),
    );
  }

  Widget instaPost(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Container(
                    height: 40.0,
                    width: 40.0,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(60.0),
                        child: Image(
                          image: NetworkImage(
                              "https://www.venable.com/-/media/images/professionals/bio-images/o/oneillmichaellow.jpg"),
                          fit: BoxFit.cover,
                        ))),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  "_void_nen_",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                Spacer(),
                Icon(Icons.more_horiz)
              ],
            ),
          ),
          Container(
            height: 400.0,
            width: double.infinity,
            child: Image(
              image: NetworkImage(
                  "https://www.venable.com/-/media/images/professionals/bio-images/o/oneillmichaellow.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(InstaIcons.heart),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(InstaIcons.comment),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(InstaIcons.mesagge),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(InstaIcons.bookmark),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "120 Likes",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "We are createing Amazing Stuff #Coolthings #greatwork",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "23 Min Ago",
              style: TextStyle(color: Colors.black54, fontSize: 12.0),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(InstaIcons.home), title: Text('sdfsd')),
            BottomNavigationBarItem(
                icon: Icon(InstaIcons.search), title: Text('asdf')),
            BottomNavigationBarItem(
                icon: Icon(InstaIcons.add), title: Text('dsf')),
            BottomNavigationBarItem(
                icon: Icon(InstaIcons.heart), title: Text('sdf')),
            BottomNavigationBarItem(
                icon: Icon(InstaIcons.profile), title: Text('sdf'))
          ]),
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(InstaIcons.photo),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(InstaIcons.mesagge),
          )
        ],
        title: Image(
          height: 50.0,
          image: AssetImage("img/logo.png"),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: PreferredSize(
          child: Container(
            color: Colors.grey[300],
            height: 1.0,
          ),
          preferredSize: Size.fromHeight(1.0),
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
            instaStroies(context),
            instaPost(context),
            instaPost(context),
            instaPost(context),
            instaPost(context),
            instaPost(context),
            instaPost(context),
            instaPost(context),
            instaPost(context),
            instaPost(context),
            
          ]))
        ],
      ),
    );
  }
}
