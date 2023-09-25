import 'package:flutter/material.dart';

main() {
  runApp(const MyApp()); //Application
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.cyan),
        darkTheme: ThemeData(primarySwatch: Colors.pink),
        color: Colors.deepOrange,
        debugShowCheckedModeBanner: false,
        home:HomeActivity()
    );
  }
}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  MySnackBar(message, context){

    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message),)
    );

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
        titleSpacing: 10,

        toolbarHeight: 60,
        toolbarOpacity: .9,
        elevation: 6,
        backgroundColor: Colors.pink,
        actions: [
          IconButton(onPressed: (){MySnackBar("it's comment", context);}, icon: Icon(Icons.comment)),
          IconButton(onPressed: (){MySnackBar("It's search", context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("It's settings", context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar("It's email", context);}, icon: Icon(Icons.email)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.cyan,
        onPressed: (){
          MySnackBar("I'm floating action button", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (int index){
          if(index==0) {
            MySnackBar("it's home bottom menu", context);
          }
          if(index==1) {
            MySnackBar("it's contact bottom menu", context);
          }
          if(index==2) {
            MySnackBar("it's profile bottom menu", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("ABID")),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: (){MySnackBar("Home", context);},
            ),
            ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text("Contact"),
                onTap: (){MySnackBar("Contact", context);}
            ),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: (){MySnackBar("Profile", context);}
            ),
            ListTile(
                leading: Icon(Icons.email),
                title: Text("Email Abid"),
                onTap: (){MySnackBar("Home", context);}
            ),
            ListTile(
                leading: Icon(Icons.phone),
                title: Text("Phone"),
                onTap: (){MySnackBar("Home", context);}
            ),

          ],
        ),
      ),
    );
  }
}