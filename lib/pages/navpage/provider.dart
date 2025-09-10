import 'package:fluter_utilities/config/shared/app_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatefulWidget {
  const ProviderPage({super.key});

  @override
  State<ProviderPage> createState() => _ProviderPageState();
}

class _ProviderPageState extends State<ProviderPage> {
  String email = '';
  @override
  void initState() {
    super.initState();
    email = context.read<AppData>().userEmail;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Text(email),
    );
  }
}
