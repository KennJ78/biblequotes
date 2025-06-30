import 'package:bible_quotes_app/pages/Download.dart';
import 'package:flutter/material.dart';

class Itemcard extends StatelessWidget {
  final Download downloads;
  const Itemcard({super.key, required this.downloads});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red[50],
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(Icons.music_note, color: Colors.red, size: 32),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    downloads.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Artist: ${downloads.artist}'),
                  Text('Size: ${downloads.filesize} MB'),
                ],
              ),
            ),
            Icon(Icons.download_done, color: Colors.green),
          ],
        ),
      ),
    );
  }
}
