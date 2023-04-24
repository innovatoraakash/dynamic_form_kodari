import 'package:flutter/material.dart';
import 'package:kodari_test/screens/dynamic_form_screen.dart';

import '../service/api_service.dart';

class HomePageTest extends StatelessWidget {
  const HomePageTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              final formUiData = await ApiService.getDataFromServer();
              if (formUiData != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => DynamicFormUi(
                      formUiData: formUiData,
                    ),
                  ),
                );
              }
            },
            child: const Text("Fill The Form")),
      ),
    );
  }
}
