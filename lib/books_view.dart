// File: books_view.dart
import 'package:flutter/material.dart';
import 'detail_buku.dart'; // Import the detail page

class BooksView extends StatefulWidget {
  const BooksView({super.key});

  @override
  State<BooksView> createState() => _BooksViewState();
}

class _BooksViewState extends State<BooksView> {
  bool isGridView = false; // Toggle between ListView and GridView

  // Dummy list of favorite books with image paths
  final List<Map<String, String>> favoriteBooks = [
    {
      'title': 'The Power of Habit',
      'image': 'assets/images/The Power of Habit.jpg'
    },
    {
      'title': 'Sebuah Seni untuk Bersikap Bodo Amat',
      'image': 'assets/images/Sebuah Seni untuk Bersikap Bodo Amat.jpg'
    },
    {'title': 'Atomic Habits', 'image': 'assets/images/Atomic Habits.jpg'},
    {'title': 'Grit', 'image': 'assets/images/Grit.jpg'},
    {
      'title': 'Berani Tidak Disukai',
      'image': 'assets/images/Berani Tidak Disukai.png'
    },
    {'title': 'Filosofi Teras', 'image': 'assets/images/Filosofi Teras.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Books'),
        actions: [
          IconButton(
            icon: Icon(isGridView ? Icons.list : Icons.grid_view),
            onPressed: () {
              setState(() {
                isGridView = !isGridView; // Toggle view mode
              });
            },
          ),
        ],
      ),
      body: isGridView
          ? GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 3 / 4, // Aspect ratio for items
              ),
              itemCount: favoriteBooks.length,
              itemBuilder: (context, index) {
                final book = favoriteBooks[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailBukuScreen(
                          title: book['title']!,
                          image: book['image']!,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 4.0,
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            book['image']!,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            book['title']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          : ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: favoriteBooks.length,
              itemBuilder: (context, index) {
                final book = favoriteBooks[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailBukuScreen(
                          title: book['title']!,
                          image: book['image']!,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 4.0,
                    child: ListTile(
                      leading: Image.asset(
                        book['image']!,
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      ),
                      title: Text(book['title']!),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
