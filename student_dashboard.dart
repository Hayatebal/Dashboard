import 'package:flutter/material.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Dashboard"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              print("Logout clicked");
            },
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Add Subject Clicked!");
        },
        child: const Icon(Icons.add),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Profile Header
            Row(
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                    "https://i.pravatar.cc/150?img=47",
                  ),
                ),

                const SizedBox(width: 16),

                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Marian Balila-on",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "ID: 555-252",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "BSIT 3RD YEAR",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 25),

            /// Student Information
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("balilaon123@gmail.com"),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("+63 912 345 6789"),
                  ),
                  Divider(height: 1),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Matina, Davao City, Philippines"),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Subjects",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const ListTile(
                title: Text("Mobile App Development"),
                subtitle: Text(
                  "Instructor: Mr. Smith\nSchedule: Mon/Wed 10:00 - 11:30 AM",
                ),
              ),
            ),

            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const ListTile(
                title: Text("Database Systems"),
                subtitle: Text(
                  "Instructor: Mrs. Garcia\nSchedule: Tue/Thu 1:00 - 2:30 PM",
                ),
              ),
            ),

            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const ListTile(
                title: Text("Operating Systems"),
                subtitle: Text(
                  "Instructor: Dr. Lee\nSchedule: Fri 8:00 - 11:00 AM",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
