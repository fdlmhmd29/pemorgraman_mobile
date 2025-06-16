import 'package:flutter/material.dart';

class DataListItem extends StatelessWidget {
  final int index;
  final Map<String, String> data;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const DataListItem({
    super.key,
    required this.index,
    required this.data,
    required this.onEdit,
    required this.onDelete,
  });

  void _showDeleteConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Konfirmasi Hapus'),
        content: Text(
          'Apakah Anda yakin ingin menghapus data "${data['name']}"?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context), // batal
            style: TextButton.styleFrom(foregroundColor: Colors.black),
            child: const Text('Batal'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context); // tutup dialog
              onDelete(); // panggil fungsi hapus
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Hapus'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.green,
          child: Text(
            '${index + 1}',
            style: const TextStyle(color: Colors.white),
          ),
        ),
        title: Text('Nama: ${data['name']}'),
        subtitle: Text('Email: ${data['email']}'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.edit, color: Colors.orange),
              onPressed: onEdit,
            ),
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () => _showDeleteConfirmation(context),
            ),
          ],
        ),
      ),
    );
  }
}
