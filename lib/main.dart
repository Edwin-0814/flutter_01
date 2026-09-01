import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Student Profile'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            WelcomeSection(),
            SizedBox(height: 16),
            SectionHeader(
              title: 'Column',
              subtitle: 'Student details arranged vertically',
            ),
            ProfileInfo(),
            SizedBox(height: 16),
            SectionHeader(
              title: 'Container',
              subtitle: 'A decorated container with padding and margin',
            ),
            ContainerSection(),
            SizedBox(height: 16),
            SectionHeader(
              title: 'Row',
              subtitle: 'Icons aligned horizontally with even spacing',
            ),
            ActionRow(),
            SizedBox(height: 16),
            SectionHeader(
              title: 'Expanded',
              subtitle: 'Two cards sharing the available row width',
            ),
            ExpandedInfoRow(),
            SizedBox(height: 16),
            SectionHeader(
              title: 'Card',
              subtitle: 'A course tile built with ListTile inside Card',
            ),
            CourseCard(),
            SizedBox(height: 16),
            SectionHeader(
              title: 'ListView',
              subtitle: 'Multiple items displayed in a scrollable list',
            ),
            CourseList(),
          ],
        ),
      ),
    );
  }
}

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.indigo.shade700, Colors.indigo.shade400],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome to Flutter',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Experiment 1: Widgets and Layouts',
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          subtitle,
          style: TextStyle(color: Colors.grey.shade700),
        ),
      ],
    );
  }
}

class ContainerSection extends StatelessWidget {
  const ContainerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 4),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue.shade200),
      ),
      child: const Center(
        child: Text(
          'Student Profile',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Edwin Paul',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text('Computer Science and Engineering'),
        SizedBox(height: 4),
        Text('Flutter Laboratory'),
      ],
    );
  }
}

class ActionRow extends StatelessWidget {
  const ActionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Icon(Icons.home, size: 32, color: Colors.blue),
        Icon(Icons.person, size: 32, color: Colors.blue),
        Icon(Icons.settings, size: 32, color: Colors.blue),
      ],
    );
  }
}

class ExpandedInfoRow extends StatelessWidget {
  const ExpandedInfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.orange.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.school, color: Colors.orange),
                SizedBox(height: 8),
                Text('Semester 5'),
              ],
            ),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.green.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.star, color: Colors.green),
                SizedBox(height: 8),
                Text('CGPA 8.7'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CourseCard extends StatelessWidget {
  const CourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: const Icon(Icons.book),
        title: const Text('Flutter'),
        subtitle: const Text('Mobile Application Development'),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}

class CourseList extends StatelessWidget {
  const CourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 172,
          child: ListView(
            children: const [
              ListTile(
                leading: Icon(Icons.book),
                title: Text('Flutter'),
              ),
              ListTile(
                leading: Icon(Icons.cloud),
                title: Text('Cloud Computing'),
              ),
              ListTile(
                leading: Icon(Icons.code),
                title: Text('Programming'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}