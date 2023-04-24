// import 'events.dart';

// class Field {
//   String? name;
//   int? span;
//   String? text;
//   String? group;
//   String? label;
//   String? append;
//   Events? events;
//   String? prepend;
//   bool? disabled;
//   bool? isUnique;
//   bool? clearable;
//   String? fieldType;
//   int? maxlength;
//   bool? isRequired;
//   int? labelWidth;
//   String? defaultValue;
//   bool? showPassword;
//   bool? showWordLimit;
//   bool? addMoreFeature;
//   bool? advancedOptions;
//   String? hasSpecialEvent;
//   bool? isHelpBlockVisible;
//   bool? isPlaceholderVisible;
//   String? value;

//   Field({
//     this.name,
//     this.span,
//     this.text,
//     this.group,
//     this.label,
//     this.append,
//     this.events,
//     this.prepend,
//     this.disabled,
//     this.isUnique,
//     this.clearable,
//     this.fieldType,
//     this.maxlength,
//     this.isRequired,
//     this.labelWidth,
//     this.defaultValue,
//     this.showPassword,
//     this.showWordLimit,
//     this.addMoreFeature,
//     this.advancedOptions,
//     this.hasSpecialEvent,
//     this.isHelpBlockVisible,
//     this.isPlaceholderVisible,
//     this.value,
//   });

//   @override
//   String toString() {
//     return 'Field(name: $name, span: $span, text: $text, group: $group, label: $label, append: $append, events: $events, prepend: $prepend, disabled: $disabled, isUnique: $isUnique, clearable: $clearable, fieldType: $fieldType, maxlength: $maxlength, isRequired: $isRequired, labelWidth: $labelWidth, defaultValue: $defaultValue, showPassword: $showPassword, showWordLimit: $showWordLimit, addMoreFeature: $addMoreFeature, advancedOptions: $advancedOptions, hasSpecialEvent: $hasSpecialEvent, isHelpBlockVisible: $isHelpBlockVisible, isPlaceholderVisible: $isPlaceholderVisible, value: $value)';
//   }

//   factory Field.fromJson(Map<String, dynamic> json) => Field(
//         name: json['name'] as String?,
//         span: json['span'] as int?,
//         text: json['text'] as String?,
//         group: json['group'] as String?,
//         label: json['label'] as String?,
//         append: json['append'] as String?,
//         events: json['events'] == null
//             ? null
//             : Events.fromJson(json['events'] as Map<String, dynamic>),
//         prepend: json['prepend'] as String?,
//         disabled: json['disabled'] as bool?,
//         isUnique: json['isUnique'] as bool?,
//         clearable: json['clearable'] as bool?,
//         fieldType: json['fieldType'] as String?,
//         maxlength: json['maxlength'] as int?,
//         isRequired: json['isRequired'] as bool?,
//         labelWidth: json['labelWidth'] as int?,
//         defaultValue: json['defaultValue'] as String?,
//         showPassword: json['showPassword'] as bool?,
//         showWordLimit: json['showWordLimit'] as bool?,
//         addMoreFeature: json['addMoreFeature'] as bool?,
//         advancedOptions: json['advancedOptions'] as bool?,
//         hasSpecialEvent: json['hasSpecialEvent'] as String?,
//         isHelpBlockVisible: json['isHelpBlockVisible'] as bool?,
//         isPlaceholderVisible: json['isPlaceholderVisible'] as bool?,
//         value: json['value'] as String?,
//       );

//   Map<String, dynamic> toJson() => {
//         'name': name,
//         'span': span,
//         'text': text,
//         'group': group,
//         'label': label,
//         'append': append,
//         'events': events?.toJson(),
//         'prepend': prepend,
//         'disabled': disabled,
//         'isUnique': isUnique,
//         'clearable': clearable,
//         'fieldType': fieldType,
//         'maxlength': maxlength,
//         'isRequired': isRequired,
//         'labelWidth': labelWidth,
//         'defaultValue': defaultValue,
//         'showPassword': showPassword,
//         'showWordLimit': showWordLimit,
//         'addMoreFeature': addMoreFeature,
//         'advancedOptions': advancedOptions,
//         'hasSpecialEvent': hasSpecialEvent,
//         'isHelpBlockVisible': isHelpBlockVisible,
//         'isPlaceholderVisible': isPlaceholderVisible,
//         'value': value,
//       };

//   Field copyWith({
//     String? name,
//     int? span,
//     String? text,
//     String? group,
//     String? label,
//     String? append,
//     Events? events,
//     String? prepend,
//     bool? disabled,
//     bool? isUnique,
//     bool? clearable,
//     String? fieldType,
//     int? maxlength,
//     bool? isRequired,
//     int? labelWidth,
//     String? defaultValue,
//     bool? showPassword,
//     bool? showWordLimit,
//     bool? addMoreFeature,
//     bool? advancedOptions,
//     String? hasSpecialEvent,
//     bool? isHelpBlockVisible,
//     bool? isPlaceholderVisible,
//     String? value,
//   }) {
//     return Field(
//       name: name ?? this.name,
//       span: span ?? this.span,
//       text: text ?? this.text,
//       group: group ?? this.group,
//       label: label ?? this.label,
//       append: append ?? this.append,
//       events: events ?? this.events,
//       prepend: prepend ?? this.prepend,
//       disabled: disabled ?? this.disabled,
//       isUnique: isUnique ?? this.isUnique,
//       clearable: clearable ?? this.clearable,
//       fieldType: fieldType ?? this.fieldType,
//       maxlength: maxlength ?? this.maxlength,
//       isRequired: isRequired ?? this.isRequired,
//       labelWidth: labelWidth ?? this.labelWidth,
//       defaultValue: defaultValue ?? this.defaultValue,
//       showPassword: showPassword ?? this.showPassword,
//       showWordLimit: showWordLimit ?? this.showWordLimit,
//       addMoreFeature: addMoreFeature ?? this.addMoreFeature,
//       advancedOptions: advancedOptions ?? this.advancedOptions,
//       hasSpecialEvent: hasSpecialEvent ?? this.hasSpecialEvent,
//       isHelpBlockVisible: isHelpBlockVisible ?? this.isHelpBlockVisible,
//       isPlaceholderVisible: isPlaceholderVisible ?? this.isPlaceholderVisible,
//       value: value ?? this.value,
//     );
//   }
// }
