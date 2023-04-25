import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget(
    this.id,
    this.index, {
    super.key,
  });
  final String id;
  final int index;
  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  bool selectedLan = false;

  @override
  Widget build(BuildContext context) {
    bool radiovalue = false;
    Map<String, dynamic> radioButtonValue = {};
    if (radioButtonValues.length > widget.index) {
      radioButtonValue = radioButtonValues[widget.index];
    } else {
      radioButtonValues.add({});
    }
    final exists = radioButtonValue.containsKey(widget.id);
    if (!exists) {
      radioButtonValue.addAll({widget.id: false});
    } else {
      radiovalue = radioButtonValue[widget.id] as bool;
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        radioButton(true, "Yes", radiovalue),
        radioButton(false, "No", radiovalue),
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
              radioButtonValues[widget.index].update(widget.id, (existingVal) => value);
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

List<Map<String, dynamic>> radioButtonValues = [{}];
