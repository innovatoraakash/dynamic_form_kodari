import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:kodari_test/data_models/form_ui_model/form_ui_model.dart';
import 'package:kodari_test/screens/radio_button_widget.dart';

import '../data_models/form_ui_model/fields/field.dart';

class DynamicFormUi extends StatefulWidget {
  const DynamicFormUi({super.key, required this.formUiData});
  final FormUiModel formUiData;
  static const htmlSpace = "<h3> </h3>";

  @override
  State<DynamicFormUi> createState() => _DynamicFormUiState();
}

class _DynamicFormUiState extends State<DynamicFormUi> {
    var formLength = [1];
  @override
  Widget build(BuildContext context) {
    final formUiFields = widget.formUiData.fields?.first.tableDatas;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: formLength.asMap().entries
                  .map(
                    (entries) => Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: DataTable(
                          border: TableBorder.all(),
                          // datatable widget
                          columns: formUiFields?.first.map(
                                (e) {
                                  String? htmlContent2;
                                  if (e.isNotEmpty) {
                                    htmlContent2 = e.first.htmlContent;
                                  }
                                  return DataColumn(
                                    label: HtmlWidget(
                                      htmlContent2?.replaceAll("h3", "h5") ?? DynamicFormUi.htmlSpace,
                                      textStyle: Theme.of(context).textTheme.titleSmall,
                                    ),
                                  );
                                },
                              ).toList() ??
                              [],
                          rows: formUiFields
                                  ?.sublist(1)
                                  .map((rows) => DataRow(
                                          cells: rows.map(
                                        (e) {
                                          String? htmlContent2;
                                          if (e.isNotEmpty) {
                                            htmlContent2 = e.first.htmlContent;
                                            if (e.first.text == TextEnum.RADIO) {
                                              return DataCell(RadioButtonWidget(e.first.name ?? "Na",entries.key));
                                            }
                                          }
                                          return DataCell(
                                            HtmlWidget(
                                              htmlContent2?.replaceAll("h3", "h5") ?? DynamicFormUi.htmlSpace,
                                              textStyle: Theme.of(context).textTheme.titleSmall,
                                            ),
                                          );
                                        },
                                      ).toList()))
                                  .toList() ??
                              []),
                    ),
                  )
                  .toList(),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ElevatedButton(
                  onPressed: () {
                    formLength.add(Random().nextInt(1000));
                    setState(() {
                      
                    });
                  },
                  child: const Text("Add New")),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ElevatedButton(
                  onPressed: () {
                    debugPrint(radioButtonValues.map((e) => e.toString()).join("\n\n"));
                  },
                  child: const Text("Print Values")),
            )
          ],
        ),
      ),
    );
  }
}
