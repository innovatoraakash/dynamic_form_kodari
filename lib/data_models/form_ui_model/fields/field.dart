// To parse this JSON data, do
//
//     final field = fieldFromJson(jsonString);

import 'dart:convert';

Field fieldFromJson(String str) => Field.fromJson(json.decode(str));

String fieldToJson(Field data) => json.encode(data.toJson());

class Field {
    Field({
        this.name,
        this.span,
        this.text,
        this.group,
        this.events,
        this.disabled,
        this.isUnique,
        this.fieldType,
        this.tableDatas,
        this.tableColumns,
        this.addMoreFeature,
        this.showTableLabel,
        this.hasSpecialEvent,
    });

    String? name;
    int? span;
    String? text;
    Group? group;
    Events? events;
    bool? disabled;
    bool? isUnique;
    String? fieldType;
    List<List<List<TableDatum>>>? tableDatas;
    List<TableColumn>? tableColumns;
    bool? addMoreFeature;
    bool? showTableLabel;
    String? hasSpecialEvent;

    Field copyWith({
        String? name,
        int? span,
        String? text,
        Group? group,
        String? label,
        Events? events,
        bool? disabled,
        bool? isUnique,
        String? fieldType,
        List<List<List<TableDatum>>>? tableDatas,
        List<TableColumn>? tableColumns,
        bool? addMoreFeature,
        bool? showTableLabel,
        String? hasSpecialEvent,
    }) => 
        Field(
            name: name ?? this.name,
            span: span ?? this.span,
            text: text ?? this.text,
            group: group ?? this.group,
            events: events ?? this.events,
            disabled: disabled ?? this.disabled,
            isUnique: isUnique ?? this.isUnique,
            fieldType: fieldType ?? this.fieldType,
            tableDatas: tableDatas ?? this.tableDatas,
            tableColumns: tableColumns ?? this.tableColumns,
            addMoreFeature: addMoreFeature ?? this.addMoreFeature,
            showTableLabel: showTableLabel ?? this.showTableLabel,
            hasSpecialEvent: hasSpecialEvent ?? this.hasSpecialEvent,
        );

    factory Field.fromJson(Map<String, dynamic> json) => Field(
        name: json["name"],
        span: json["span"],
        text: json["text"],
        events: json["events"] == null ? null : Events.fromJson(json["events"]),
        disabled: json["disabled"],
        isUnique: json["isUnique"],
        fieldType: json["fieldType"],
        tableDatas: json["tableDatas"] == null ? [] : List<List<List<TableDatum>>>.from(json["tableDatas"]!.map((x) => List<List<TableDatum>>.from(x.map((x) => List<TableDatum>.from(x.map((x) => TableDatum.fromJson(x))))))),
        tableColumns: json["tableColumns"] == null ? [] : List<TableColumn>.from(json["tableColumns"]!.map((x) => TableColumn.fromJson(x))),
        addMoreFeature: json["addMoreFeature"],
        showTableLabel: json["showTableLabel"],
        hasSpecialEvent: json["hasSpecialEvent"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "span": span,
        "text": text,
        "group": groupValues.reverse[group],
        "events": events?.toJson(),
        "disabled": disabled,
        "isUnique": isUnique,
        "fieldType": fieldType,
        "tableDatas": tableDatas == null ? [] : List<dynamic>.from(tableDatas!.map((x) => List<dynamic>.from(x.map((x) => List<dynamic>.from(x.map((x) => x.toJson())))))),
        "tableColumns": tableColumns == null ? [] : List<dynamic>.from(tableColumns!.map((x) => x.toJson())),
        "addMoreFeature": addMoreFeature,
        "showTableLabel": showTableLabel,
        "hasSpecialEvent": hasSpecialEvent,
    };
}

class Events {
    Events({
        this.values,
        this.listens,
        this.triggers,
    });

    List<dynamic>? values;
    String? listens;
    String? triggers;

    Events copyWith({
        List<dynamic>? values,
        String? listens,
        String? triggers,
    }) => 
        Events(
            values: values ?? this.values,
            listens: listens ?? this.listens,
            triggers: triggers ?? this.triggers,
        );

    factory Events.fromJson(Map<String, dynamic> json) => Events(
        values: json["values"] == null ? [] : List<dynamic>.from(json["values"]!.map((x) => x)),
        listens: json["listens"],
        triggers: json["triggers"],
    );

    Map<String, dynamic> toJson() => {
        "values": values == null ? [] : List<dynamic>.from(values!.map((x) => x)),
        "listens": listens,
        "triggers": triggers,
    };
}

enum Group { STATIC, FORM }

final groupValues = EnumValues({
    "form": Group.FORM,
    "static": Group.STATIC
});

class TableColumn {
    TableColumn({
        this.prop,
        this.label,
        this.width,
    });

    String? prop;
    String? label;
    int? width;

    TableColumn copyWith({
        String? prop,
        String? label,
        int? width,
    }) => 
        TableColumn(
            prop: prop ?? this.prop,
            label: label ?? this.label,
            width: width ?? this.width,
        );

    factory TableColumn.fromJson(Map<String, dynamic> json) => TableColumn(
        prop: json["prop"],
        label: json["label"],
        width: json["width"],
    );

    Map<String, dynamic> toJson() => {
        "prop": prop,
        "label": label,
        "width": width,
    };
}

class TableDatum {
    TableDatum({
        this.name,
        this.span,
        this.text,
        this.group,
        this.events,
        this.disabled,
        this.isUnique,
        this.fieldType,
        this.htmlContent,
        this.defaultValue,
        this.addMoreFeature,
        this.advancedOptions,
        this.hasSpecialEvent,
        this.label,
        this.value,
        this.dataUrl,
        this.options,
        this.isFaulty,
        this.isFromUrl,
        this.isRequired,
        this.labelField,
        this.labelWidth,
        this.valueField,
        this.isHelpBlockVisible,
        this.isPlaceholderVisible,
        this.showRoleTitle,
        this.isRoleSpecific,
        this.showLoggedInUser,
        this.isSignature,
    });

    String? name;
    int? span;
    TextEnum? text;
    Group? group;
    Events? events;
    bool? disabled;
    bool? isUnique;
    FieldType? fieldType;
    String? htmlContent;
    dynamic defaultValue;
    bool? addMoreFeature;
    dynamic advancedOptions;
    String? hasSpecialEvent;
    Label? label;
    DefaultValue? value;
    String? dataUrl;
    List<DefaultValue>? options;
    bool? isFaulty;
    bool? isFromUrl;
    bool? isRequired;
    LabelField? labelField;
    int? labelWidth;
    ValueField? valueField;
    bool? isHelpBlockVisible;
    bool? isPlaceholderVisible;
    bool? showRoleTitle;
    bool? isRoleSpecific;
    bool? showLoggedInUser;
    bool? isSignature;

    TableDatum copyWith({
        String? name,
        int? span,
        TextEnum? text,
        Group? group,
        Events? events,
        bool? disabled,
        bool? isUnique,
        FieldType? fieldType,
        String? htmlContent,
        dynamic defaultValue,
        bool? addMoreFeature,
        dynamic advancedOptions,
        String? hasSpecialEvent,
        Label? label,
        DefaultValue? value,
        String? dataUrl,
        List<DefaultValue>? options,
        bool? isFaulty,
        bool? isFromUrl,
        bool? isRequired,
        LabelField? labelField,
        int? labelWidth,
        ValueField? valueField,
        bool? isHelpBlockVisible,
        bool? isPlaceholderVisible,
        bool? showRoleTitle,
        bool? isRoleSpecific,
        bool? showLoggedInUser,
        bool? isSignature,
    }) => 
        TableDatum(
            name: name ?? this.name,
            span: span ?? this.span,
            text: text ?? this.text,
            group: group ?? this.group,
            events: events ?? this.events,
            disabled: disabled ?? this.disabled,
            isUnique: isUnique ?? this.isUnique,
            fieldType: fieldType ?? this.fieldType,
            htmlContent: htmlContent ?? this.htmlContent,
            defaultValue: defaultValue ?? this.defaultValue,
            addMoreFeature: addMoreFeature ?? this.addMoreFeature,
            advancedOptions: advancedOptions ?? this.advancedOptions,
            hasSpecialEvent: hasSpecialEvent ?? this.hasSpecialEvent,
            label: label ?? this.label,
            value: value ?? this.value,
            dataUrl: dataUrl ?? this.dataUrl,
            options: options ?? this.options,
            isFaulty: isFaulty ?? this.isFaulty,
            isFromUrl: isFromUrl ?? this.isFromUrl,
            isRequired: isRequired ?? this.isRequired,
            labelField: labelField ?? this.labelField,
            labelWidth: labelWidth ?? this.labelWidth,
            valueField: valueField ?? this.valueField,
            isHelpBlockVisible: isHelpBlockVisible ?? this.isHelpBlockVisible,
            isPlaceholderVisible: isPlaceholderVisible ?? this.isPlaceholderVisible,
            showRoleTitle: showRoleTitle ?? this.showRoleTitle,
            isRoleSpecific: isRoleSpecific ?? this.isRoleSpecific,
            showLoggedInUser: showLoggedInUser ?? this.showLoggedInUser,
            isSignature: isSignature ?? this.isSignature,
        );

    factory TableDatum.fromJson(Map<String, dynamic> json) => TableDatum(
        name: json["name"],
        span: json["span"],
        text: textValues.map[json["text"]]!,
        group: groupValues.map[json["group"]]!,
        events: json["events"] == null ? null : Events.fromJson(json["events"]),
        disabled: json["disabled"],
        isUnique: json["isUnique"],
        fieldType: fieldTypeValues.map[json["fieldType"]]!,
        htmlContent: json["htmlContent"],
        defaultValue: json["defaultValue"],
        addMoreFeature: json["addMoreFeature"],
        advancedOptions: json["advancedOptions"],
        hasSpecialEvent: json["hasSpecialEvent"],
        value: json["value"] == null ? null : DefaultValue.fromJson(json["value"]),
        dataUrl: json["dataUrl"],
        options: json["options"] == null ? [] : List<DefaultValue>.from(json["options"]!.map((x) => DefaultValue.fromJson(x))),
        isFaulty: json["isFaulty"],
        isFromUrl: json["isFromUrl"],
        isRequired: json["isRequired"],
        labelWidth: json["labelWidth"],
        isHelpBlockVisible: json["isHelpBlockVisible"],
        isPlaceholderVisible: json["isPlaceholderVisible"],
        showRoleTitle: json["showRoleTitle"],
        isRoleSpecific: json["isRoleSpecific"],
        showLoggedInUser: json["showLoggedInUser"],
        isSignature: json["isSignature"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "span": span,
        "text": textValues.reverse[text],
        "group": groupValues.reverse[group],
        "events": events?.toJson(),
        "disabled": disabled,
        "isUnique": isUnique,
        "fieldType": fieldTypeValues.reverse[fieldType],
        "htmlContent": htmlContent,
        "defaultValue": defaultValue,
        "addMoreFeature": addMoreFeature,
        "advancedOptions": advancedOptions,
        "hasSpecialEvent": hasSpecialEvent,
        "label": labelValues.reverse[label],
        "value": value?.toJson(),
        "dataUrl": dataUrl,
        "options": options == null ? [] : List<dynamic>.from(options!.map((x) => x.toJson())),
        "isFaulty": isFaulty,
        "isFromUrl": isFromUrl,
        "isRequired": isRequired,
        "labelField": labelFieldValues.reverse[labelField],
        "labelWidth": labelWidth,
        "valueField": valueFieldValues.reverse[valueField],
        "isHelpBlockVisible": isHelpBlockVisible,
        "isPlaceholderVisible": isPlaceholderVisible,
        "showRoleTitle": showRoleTitle,
        "isRoleSpecific": isRoleSpecific,
        "showLoggedInUser": showLoggedInUser,
        "isSignature": isSignature,
    };
}

class DefaultValue {
    DefaultValue({
        this.color,
        this.isFaulty,
        this.autoCheck,
        this.optionLabel,
        this.optionValue,
    });

    Color? color;
    bool? isFaulty;
    bool? autoCheck;
    Option? optionLabel;
    Option? optionValue;

    DefaultValue copyWith({
        Color? color,
        bool? isFaulty,
        bool? autoCheck,
        Option? optionLabel,
        Option? optionValue,
    }) => 
        DefaultValue(
            color: color ?? this.color,
            isFaulty: isFaulty ?? this.isFaulty,
            autoCheck: autoCheck ?? this.autoCheck,
            optionLabel: optionLabel ?? this.optionLabel,
            optionValue: optionValue ?? this.optionValue,
        );

    factory DefaultValue.fromJson(Map<String, dynamic> json) => DefaultValue(
        color: colorValues.map[json["color"]]!,
        isFaulty: json["is_faulty"],
        autoCheck: json["auto_check"],
        optionLabel: optionValues.map[json["optionLabel"]]!,
        optionValue: optionValues.map[json["optionValue"]]!,
    );

    Map<String, dynamic> toJson() => {
        "color": colorValues.reverse[color],
        "is_faulty": isFaulty,
        "auto_check": autoCheck,
        "optionLabel": optionValues.reverse[optionLabel],
        "optionValue": optionValues.reverse[optionValue],
    };
}

enum Color { FFFFFF }

final colorValues = EnumValues({
    "#FFFFFF": Color.FFFFFF
});

enum Option { NO, YES }

final optionValues = EnumValues({
    "NO": Option.NO,
    "YES": Option.YES
});

enum FieldType { HTML_COMPONENT, RADIO_BUTTON, FORM_ELEMENT_USER_DROPDOWN, FORM_ELEMENT_SIGNATURE }

final fieldTypeValues = EnumValues({
    "FormElementSignature": FieldType.FORM_ELEMENT_SIGNATURE,
    "FormElementUserDropdown": FieldType.FORM_ELEMENT_USER_DROPDOWN,
    "HtmlComponent": FieldType.HTML_COMPONENT,
    "RadioButton": FieldType.RADIO_BUTTON
});

enum Label { EMPTY, USER, SIGNATURE }

final labelValues = EnumValues({
    "": Label.EMPTY,
    "Signature": Label.SIGNATURE,
    "User": Label.USER
});

enum LabelField { LABEL }

final labelFieldValues = EnumValues({
    "label": LabelField.LABEL
});

enum TextEnum { HTML, RADIO, USER_DROPDOWN, SIGNATURE }

final textValues = EnumValues({
    "Html": TextEnum.HTML,
    "Radio": TextEnum.RADIO,
    "Signature": TextEnum.SIGNATURE,
    "User Dropdown": TextEnum.USER_DROPDOWN
});

enum ValueField { VALUE }

final valueFieldValues = EnumValues({
    "value": ValueField.VALUE
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
