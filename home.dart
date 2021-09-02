import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Contacts'),
      ),
      body: Center(
        child: ListView(
          children: [
            ContactCard(name: 'Muhamed',mail: 'M@whatever.com',phone: '0156156156',),
            ContactCard(name: 'Fatimah',mail: 'fatimah@temp.com',phone: '0216515615',),
            ContactCard2(name: 'mazen',mail: 'fatimah@temp.com',phone: '0216515615',),
          ],
        ) ,
      ),
    );
  }
}

class ContactCard extends StatelessWidget {


  final String name,mail,phone;
  ContactCard({required this.name,required this.mail,required this.phone});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 130.0,
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: Colors.black,
          width: 0.5,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 40.0,
              backgroundImage: NetworkImage('https://cdn1.vectorstock.com/i/1000x1000/50/30/user-icon-male-person-symbol-profile-avatar-vector-20715030.jpg'),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,style: TextStyle(fontWeight: FontWeight.bold,),),
                Row(
                  children: [
                    Icon(Icons.mail,),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(mail),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(CupertinoIcons.phone_solid,),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(phone),
                    ),
                  ],
                ),
            Row(
              children: [
                Icon(CupertinoIcons.suit_heart_fill,color: Colors.red,),
                Icon(CupertinoIcons.suit_heart_fill,color: Colors.red,),
                Icon(CupertinoIcons.suit_heart_fill,color: Colors.red,),
                Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Icon(CupertinoIcons.tag_fill,color: Colors.limeAccent),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text("boss"),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Icon(CupertinoIcons.trash),
                ),

                ]
            )
              ],
            ) ,
          ),
        ],
      ),
    );
  }
}
class ContactCard2 extends StatelessWidget {


  final String name,mail,phone;
  ContactCard2({required this.name,required this.mail,required this.phone});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 130.0,
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: Colors.black,
          width: 0.5,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 40.0,
              backgroundImage: NetworkImage('https://cdn1.vectorstock.com/i/1000x1000/50/30/user-icon-male-person-symbol-profile-avatar-vector-20715030.jpg'),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,style: TextStyle(fontWeight: FontWeight.bold,),),
                Row(
                  children: [
                    Icon(Icons.mail,),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(mail),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(CupertinoIcons.phone_solid,),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(phone),
                    ),
                  ],
                ),
                Row(
                    children: [
                      Icon(CupertinoIcons.suit_heart_fill,color: Colors.red,),
                      Icon(CupertinoIcons.suit_heart_fill,color: Colors.red,),
                      Icon(CupertinoIcons.suit_heart_fill,color: Colors.red,),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Icon(CupertinoIcons.tag_fill,color: Colors.limeAccent),
                      ),
                      Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 5.0),
                              child: Text("maybe"),
                            ),
                            Text("boss")
                      ]
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 7.0),
                        child: Icon(CupertinoIcons.trash),
                      ),

                    ]
                )
              ],
            ) ,
          ),
        ],
      ),
    );
  }
}
