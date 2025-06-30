import 'package:bible_quotes_app/pages/Download.dart';
import 'package:flutter/material.dart';
import 'Download.dart';
import 'ItemCard.dart';

class Listitems extends StatefulWidget {
  const Listitems({super.key});

  @override
  State<Listitems> createState() => _ListitemsState();
}

class _ListitemsState extends State<Listitems> {
  List<Download> downloads = [
    Download(title: 'Dilaw', artist: 'Maki', filesize: 10),
    Download(title: 'Salamin', artist: 'Bini', filesize: 11),
    Download(title: 'Aya', artist: 'Arthur', filesize: 12),
    Download(title: 'Hangin', artist: 'Yno', filesize: 13),
    Download(title: 'Sa Kabilang Buhay', artist: 'Bandang Pencil', filesize: 14)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Youtube Mp3 Downloader',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Downloaded',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: downloads.map((download) {
                  return Itemcard(downloads: download);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
