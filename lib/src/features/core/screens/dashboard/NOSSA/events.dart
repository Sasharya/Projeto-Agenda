class Event {
  final String title;

  Event(this.title);

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(json['title']);
  }

  Map<String, dynamic> toJson() {
    return {'title': title};
  }

  @override
  String toString() {
    return title;
  }
}