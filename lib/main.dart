import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: TutorPage(),
));


class TutorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon : Icon(Icons.arrow_back_sharp),
          onPressed: () {},
          color: Colors.grey[300],
        ),
        title: Text(
          'Konto tutora',
          style: TextStyle(
            color: Colors.grey[300],
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo[400],
      ),
      body: Center(
        child: _tutorAvatarPage('Jakub', 'Najman', 'assets/JNajman.jpg', 'najman00@outlook.com', '570008525', 'student')
      ),
    );
  }
}

Widget _tutorAvatarPage(String name, String surname, String pathNameToAvatar, String email, String phone, String occupation)
=> Column(
  children: [
    Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 25.0),
          child: Stack(
            children: [
              Container(
                height: 312,
                width: 312,
                decoration: new BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: new BorderRadius.all(Radius.circular(150)),
                ),
                child: Text('     '),
              ),
              Container(
                margin: EdgeInsets.only(top: 7, left: 7, right: 7),
                child: CircleAvatar(
                backgroundImage: AssetImage(pathNameToAvatar),
                radius: 150,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    Card(
      child: Column(
        children: [
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.assignment_ind,
                color: Colors.indigo[300],
              ),
            ),
            title: Text(
              name +' '+ surname,
              style: TextStyle(
                fontFamily: 'Raleway',
              ),
            ),
            subtitle: Text(
              occupation,
              style: TextStyle(
                fontFamily: 'Raleway',
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.mail,
                color: Colors.indigo[300],
              ),
            ),
            title: Text(
              email,
              style: TextStyle(
                fontFamily: 'Raleway',
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.phone,
                color: Colors.indigo[300],
              ),
            ),
            title: Text(
              phone,
              style: TextStyle(
                fontFamily: 'Raleway',
              ),
            ),
          ),
        ],
      ),
    ),
  ],
);

