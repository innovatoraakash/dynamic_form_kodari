import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget(
    this.id, {
    super.key,
  });
  final String id;
  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  bool selectedLan = false;

  @override
  Widget build(BuildContext context) {
    bool radiovalue = false;
    final exists = radioButtonValues.containsKey(widget.id);
    if (!exists) {
      radioButtonValues.addAll({widget.id: false});
    } else {
      radiovalue = radioButtonValues[widget.id] as bool;
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        radioButton(true, "Yes",radiovalue),
        radioButton(false, "No",radiovalue),
      ],
    );
  }

  Row radioButton(bool status, String title, bool groupVal) {
    return Row(
      children: [
        Radio<bool>(
          value: status,
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          ),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          groupValue: groupVal,
          onChanged: (bool? value) {
            if (value != null) {
              groupVal = value;
              log(value.toString());
              radioButtonValues.update(widget.id, (existingVal) => value);
              setState(() {});
            }
          },
        ),
        Text(
          title,
        ),
      ],
    );
  }
}

Map<String, dynamic> radioButtonValues = {};
