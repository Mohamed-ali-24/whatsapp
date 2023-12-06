import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WhatsAppHome(),
  
    );
  }
}

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
 late TabController _tabController; 
  //popMenuItem
  List<String> items = ['Aderstise ', 'Business ','New Business','New broadcast','communities','setting','lists',];

  void onItemSelected(String item) {

  }
  List<String> chatList = [
 'ustaad ahmed mohamed',
    'raveria boi',
    'zeko',
     'haruun',
    'haabsade ',
    'carabka ',
     'wllka',
    'sheikh mustafe ',
    'sheikh shibil ',
     'wayeelka ',
     'carabka ',
     'wllka',
    'sheikh mustafe ',
    'sheikh shibil ',
     'wayeelka ',
    // Add more names as needed

  ];
     List<String> subtitle = [
    '10 marks nadiif leedahay ha cabsan ',
    'nin wax bartay gool ku raynaa ',
    'keep going ',
     'horay u soco sxb',
    'waa i waashay talie',
    'carabka ',
       'waraa qoftii ka waran',
     'see waaye xaalka ',
    'hi bro',
    'save me cali',
     'carabka ',
       'waraa qoftii ka waran',
     'see waaye xaalka ',
    'hi bro',
    'save me cali',
    // Add more names as needed
  ];
    List<String> trailing = [
    "10:00 am",
    '9:35 am',
    '23:11 am',
     '8:30 pm',
    '7:13 pm',
    '11:00 am',
       '7:56 am',
     '10:25 am',
    '5:00 am',
    '8:00 am',
    "10:00 am",
    '9:35 am',
    '23:11 am',
     '8:30 pm',
    '7:13 pm',
    '11:00 am',
     
    // Add more names as needed
  ];
  List<String> statusList = [
    'My status',
    'Ustaad ahmed',
    'ciilow',
      'farah dheere',
      'talie abdi',
        'af hayeenka ',
          'miisanka culus',
            'wll banaa ',
            'miisanka culus',
            'wll banaa ',
              'talie abdi',
        'af hayeenka ',
          'miisanka culus',
            'wll banaa ',
            'miisanka culus',
            'wll banaa ',
    // Add more statuses as needed
  ];
      List<String> sabststus = [
    'Today,7:34',
    'Today,9:35',
    'Today,23:11',
     'yesterday,8:30',
    'Today,7:13 ',
    '1Today,1:00 ',
       'Today,7:56 ',
     'Today,10:25',
    'Today,5:00',
    '8:00 am',
     'Today,7:56 ',
     'Today,10:25',
    'Today,5:00',
    '8:00 am',
    'Today,10:25',
    'Today,5:00',
    '8:00 am',
    // Add more names as needed
  ];
  List<String> callList = [
    'Mom',
    'father',
    'Best Friend',
      'my wife',
        'nin wax bartay',
          'wllkay jiro',
      'wllka',
    'sheikh mustafe ',
    'sheikh shibil ',
     'wayeelka ',
      'wllkay jiro',
      'wllka',
    'sheikh mustafe ',
    'sheikh shibil ',
     'wayeelka ',
    // Add more names for calls
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('WA BUSINESS'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Add search functionality
            },
          ),
          PopupMenuButton<String>(
            onSelected: onItemSelected,
            itemBuilder: (context) {
              return items.map((item) {
                return PopupMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList();
            },
          ),
        
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab( text: 'Chats'),
            Tab(text: 'Status'),
            Tab( text: 'Calls'),
            // Tab(icon: Icon(Icons.person), text: 'Profile'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Chats Tab
          ListView.builder(
            itemCount: chatList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://wallpapers.com/images/hd/cool-profile-picture-87h46gcobjl5e4xu.jpg"),
                  backgroundColor: Colors.grey,
                ),
                title: Text(chatList[index]),
                subtitle: Text(subtitle[index]),
              //  trailing: Text(trailing[index]),
               trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(trailing[index]),
                  // if (commonUnreadMessages > 0)
                  SizedBox(height: 5,),
                    Text("2",style: TextStyle(backgroundColor: Colors.green),),
                   
                ],
              ),


                onTap: () {
                  // Navigate to chat screen
                },
              );
            },
          ),

          // Status Tab
          ListView.builder(
            itemCount: statusList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://w0.peakpx.com/wallpaper/660/478/HD-wallpaper-pride-and-joy-profile-colorful-black-art-rainbow-fantasy-phill314-girl-luminos-thumbnail.jpg"),
                  backgroundColor: Colors.grey,
                ),
                title: Text(statusList[index]),
                  subtitle: Text(sabststus[index]),
              );
            },
          ),

          // Calls Tab
          ListView.builder(
            itemCount: callList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://i.pinimg.com/736x/d5/59/bd/d559bd5ffda47d35f8d5ce8de8d6f325.jpg"),
                  backgroundColor: Colors.grey,
                ),
                title: Text(callList[index]),
               subtitle: Row(
                children: [
                  Icon(Icons.call_received), // Replace with your desired icon
                  SizedBox(width: 5),
                  Text('incoming'),
                ],
              ),
                trailing: Icon(Icons.call),
              );
            },
          ),

          
         
        ],
      ),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  Widget _buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        // Add functionality for floating action button
      },
      child: Icon(Icons.message),
    );
  }
}
