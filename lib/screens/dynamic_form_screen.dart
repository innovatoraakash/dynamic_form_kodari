import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:kodari_test/data_models/form_ui_model/form_ui_model.dart';
import 'package:kodari_test/screens/radio_button_widget.dart';

import '../data_models/form_ui_model/fields/field.dart';


class DynamicFormUi extends StatelessWidget {
  const DynamicFormUi({super.key, required this.formUiData});
  final FormUiModel formUiData;
  static const htmlSpace = "<h3> </h3>";
  @override
  Widget build(BuildContext context) {
    final formUiFields = formUiData.fields?.first.tableDatas;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DataTable(
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
                            htmlContent2?.replaceAll("h3", "h5") ?? htmlSpace,
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
                                    return DataCell(RadioButtonWidget(e.first.name ?? "Na"));
                                  }
                                }
                                return DataCell(
                                  HtmlWidget(
                                    htmlContent2?.replaceAll("h3", "h5") ?? htmlSpace,
                                    textStyle: Theme.of(context).textTheme.titleSmall,
                                  ),
                                );
                              },
                            ).toList()))
                        .toList() ??
                    []
           
                ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ElevatedButton(
                  onPressed: () {
                    debugPrint(radioButtonValues.toString());
                  },
                  child: const Text("Print values")),
            )
          ],
        ),
      ),
    );
  }
}
