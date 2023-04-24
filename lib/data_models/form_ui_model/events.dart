class Events {
  List<dynamic>? values;
  String? listens;
  String? triggers;

  Events({this.values, this.listens, this.triggers});

  @override
  String toString() {
    return 'Events(values: $values, listens: $listens, triggers: $triggers)';
  }

  factory Events.fromJson(Map<String, dynamic> json) => Events(
        values: json['values'] as List<dynamic>?,
        listens: json['listens'] as String?,
        triggers: json['triggers'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'values': values,
        'listens': listens,
        'triggers': triggers,
      };

  Events copyWith({
    List<dynamic>? values,
    String? listens,
    String? triggers,
  }) {
    return Events(
      values: values ?? this.values,
      listens: listens ?? this.listens,
      triggers: triggers ?? this.triggers,
    );
  }
}
