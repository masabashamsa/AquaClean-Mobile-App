import 'aqua_clean.dart';
import 'package:flutter/material.dart';
import 'splash_screen.dart';
// import 'remote_control_screen.dart'; // Import the new
import 'pick_and_dump.dart';
import 'Setting.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    AquaClean(), // Use AquaClean as one of the pages
    PickupDumpPage(),
    // Add more pages here
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aqua Clean App'),
        // Other app bar configurations here
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () => _onItemTapped(0),
                color: _selectedIndex == 0 ? Colors.blue : Colors.grey, // Highlight selected icon
            ),
            IconButton(
              icon: const Icon(Icons.menu),
               onPressed: () {
    Navigator.pushNamed(context, '/pick_and_dump');
  },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.pushNamed(context, '/Setting');
              },
            ),
            // Add more icons and their corresponding pages
          ],
        ),
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.blue,
        hintColor: Colors.blueAccent,
        fontFamily: 'Roboto',
        
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // Blue button color
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          ),
        ),
      ),
      home: const HomePage(),

       initialRoute: '/', // Initial route is the splash screen

      routes: {
        // '/': (context) => const SplashScreen(), // Define route for the splash screen
         '/aqua_clean': (context) => const AquaClean(), // Define route for the remote control screen
        '/pick_and_dump': (context) => PickupDumpPage(), // Define route for the pick and dump screen
        '/Setting': (context) =>  SettingsPage(),
      },
    );
  }
}

