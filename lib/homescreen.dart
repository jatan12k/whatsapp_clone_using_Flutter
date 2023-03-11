import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  static const String id = 'homescreen';
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp'),
            actions: [
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  itemBuilder: (context,) =>
                      [
                        PopupMenuItem(value: '1', child: Text('New Group')),
                        PopupMenuItem(value: '2', child: Text('Setting')),
                        PopupMenuItem(value: '3', child: Text('LogOut'))
                      ]),
              SizedBox(
                width: 10,
              )
            ],
            backgroundColor: Colors.teal,
            bottom: TabBar(
              tabs: [
                Tab(child: Icon(Icons.camera_alt)),
                Tab(child: Text('Chats')),
                Tab(child: Text('Status')),
                Tab(child: Text('Calls')),
              ],
            ),
          ),
          body: TabBarView(

            children: [
              Text("Camera"),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('image/jatin.jpg'),
                      ),
                      title: Text('Jatin Khatri'),
                      subtitle: Text("Here I build Whatsapp UI"),
                      trailing: Text('11:00pm'),
                    );
                  }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(

                      leading: Container(
                        decoration: BoxDecoration( shape: BoxShape.circle, border:
                        Border.all(color: Colors.green, width: 3)),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://img.icons8.com/windows/512/flutter.png'),
                        ),
                      ),
                      title: Text('Flutter_Status'),
                      subtitle: Text("Here I Set My WhatsApp Status"),
                      trailing: Text('12:00pm'),
                    );
                  }),
             ListView.builder(itemCount: 100,
                 itemBuilder: (context, index){
               return ListTile(
                 leading: CircleAvatar(
                   backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/47206155?v=4'),
                 ),
                 title: Text('Asif Taj'),
                 subtitle: Text('You Missed a video Call'),
                 trailing: Text('9:00 pm'),
               );

                 })
            ],
          ),
        ));
  }
}
