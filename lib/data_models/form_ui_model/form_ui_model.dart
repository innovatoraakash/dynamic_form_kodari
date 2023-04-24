import 'field.dart';
import 'fields/field.dart';

class FormUiModel {
  String? title;
  List<Field>? fields;
  bool? canDelete;

  FormUiModel({this.title, this.fields, this.canDelete});

  @override
  String toString() {
    return 'FormUiModel(title: $title, fields: $fields, canDelete: $canDelete)';
  }

  factory FormUiModel.fromJson(Map<String, dynamic> json) => FormUiModel(
        title: json['title'] as String?,
        fields: (json['fields'] as List<dynamic>?)
            ?.map((e) => Field.fromJson(e as Map<String, dynamic>))
            .toList(),
        canDelete: json['canDelete'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'fields': fields?.map((e) => e.toJson()).toList(),
        'canDelete': canDelete,
      };

  FormUiModel copyWith({
    String? title,
    List<Field>? fields,
    bool? canDelete,
  }) {
    return FormUiModel(
      title: title ?? this.title,
      fields: fields ?? this.fields,
      canDelete: canDelete ?? this.canDelete,
    );
  }
}
