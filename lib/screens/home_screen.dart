import 'package:flutter/material.dart';
import '../utils/shared_prefs_helper.dart';
import '../widgets/data_list_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, String>> submittedData = [];

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final data = await loadSubmittedData();
    setState(() {
      submittedData = data;
    });
  }

  void _saveData() {
    saveSubmittedData(submittedData);
  }

  void _openForm({Map<String, String>? data, int? index}) async {
    final result = await Navigator.pushNamed(
      context,
      '/form',
      arguments: {'data': data, 'editIndex': index},
    );

    if (result is Map<String, dynamic>) {
      final name = result['name'] as String;
      final email = result['email'] as String;
      final isEdit = result['isEdit'] as bool;
      final editIndex = result['editIndex'] as int?;

      setState(() {
        if (isEdit && editIndex != null) {
          submittedData[editIndex] = {'name': name, 'email': email};
        } else {
          submittedData.add({'name': name, 'email': email});
        }
      });

      _saveData();
    }
  }

  void _deleteItem(int index) {
    setState(() {
      submittedData.removeAt(index);
    });
    _saveData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Terkirim'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: submittedData.isEmpty
          ? const Center(child: Text('Belum ada data terkirim.'))
          : ListView.builder(
              itemCount: submittedData.length,
              itemBuilder: (context, index) {
                final data = submittedData[index];
                return DataListItem(
                  index: index,
                  data: data,
                  onEdit: () => _openForm(data: data, index: index),
                  onDelete: () => _deleteItem(index),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
        onPressed: () => _openForm(),
      ),
    );
  }
}
