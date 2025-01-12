import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Komentar extends StatefulWidget {
  const Komentar({super.key});

  @override
  State<Komentar> createState() => _KomentarState();
}

class _KomentarState extends State<Komentar> {
  final List<String> _comments = [];
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadComments(); // Memuat komentar saat halaman dimuat
  }

  // Fungsi untuk memuat komentar dari SharedPreferences
  Future<void> _loadComments() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _comments.addAll(prefs.getStringList('comments') ?? []);
    });
  }

  // Fungsi untuk menyimpan komentar ke SharedPreferences
  Future<void> _saveComments() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList('comments', _comments);
  }

  void _addComment() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _comments.add(_controller.text);
        _controller.clear();
      });
      _saveComments(); // Menyimpan komentar setelah ditambahkan
    }
  }

  void _deleteComment(int index) {
    setState(() {
      _comments.removeAt(index);
    });
    _saveComments(); // Menyimpan komentar setelah dihapus
  }

  void _editComment(int index) {
    _controller.text = _comments[index];
    setState(() {
      _comments.removeAt(index);
    });
    _saveComments(); // Menyimpan komentar setelah diubah
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Komentar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Masukkan komentar',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _addComment,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: _comments.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(_comments[index]),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () => _editComment(index),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () => _deleteComment(index),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
