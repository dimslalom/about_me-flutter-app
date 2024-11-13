import 'package:flutter/material.dart';
import 'about_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const WorkItem(
            imagePath: 'assets/images/kahf.png',
            title: 'Kahf Fun Run',
            description: 'Researched and designed the Social Media Campaign for Kahf Fun Run 2021.',
          ),
          const WorkItem(
            imagePath: 'assets/images/itsexpo.png',
            title: 'Design Work 2',
            description: 'Lead UI/UX Designer for the ITS Expo 2024 website.',
          ),
          ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/about');
          },
          child: const Text('Go to About Page'),
        ),
          // Add more WorkItem widgets here
        ],
      ),
    );
  }
}

class WorkItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const WorkItem({
    required this.imagePath,
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 200.0, // Set the desired height
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover, // Ensure the image covers the box
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(description),
          ),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
