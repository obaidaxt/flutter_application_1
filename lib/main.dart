import 'package:flutter/material.dart';

void main() {
  runApp(const TraveleaApp());
}

class TraveleaApp extends StatelessWidget {
  const TraveleaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travelea',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}

// Welcome Screen// Welcome Screen
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travelea'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1564889956434-c1d5b3a4f635?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHx8&w=1000&q=80'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Explore the Beauty of Journey',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 8),
              Text(
                'Everything you can imagine is here',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text('Swipe to Explore Now'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Home Screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Travelea'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const Icon(Icons.image),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Welcome Back'),
                      Text('Ronald Richard'),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.king_bed),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, // Replace with the actual number of images
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailPhotoScreen(
                            imageUrl:
                                'https://images.unsplash.com/photo-1564889956434-c1d5b3a4f635?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHx8&w=1000&q=80',
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 200,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1564889956434-c1d5b3a4f635?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHx8&w=1000&q=80'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Popular Categories',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1564889956434-c1d5b3a4f635?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHx8&w=1000&q=80'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    const Text('Flights'),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1564889956434-c1d5b3a4f635?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHx8&w=1000&q=80'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    const Text('Hotels'),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1564889956434-c1d5b3a4f635?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHx8&w=1000&q=80'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    const Text('Transports'),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1564889956434-c1d5b3a4f635?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHx8&w=1000&q=80'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    const Text('Events'),
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Maps, Guide, 4-day 2-night, Dinner',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: const [
                  Icon(Icons.map),
                  SizedBox(width: 8),
                  Text('Guide'),
                  Spacer(),
                  Icon(Icons.star),
                  SizedBox(width: 4),
                  Text('4.7 (9 reviews)'),
                  Spacer(),
                  Icon(Icons.directions),
                  SizedBox(width: 8),
                  Text('Map Direction'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: const [
                  Text(
                    'Mount Bromo',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.star),
                  SizedBox(width: 4),
                  Text('4.7 (9 reviews)'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Detail Photo Screen
class DetailPhotoScreen extends StatelessWidget {
  final String imageUrl;

  const DetailPhotoScreen({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Details'),
      ),
      body: Center(
        child: Image.network(imageUrl),
      ),
    );
  }
}
