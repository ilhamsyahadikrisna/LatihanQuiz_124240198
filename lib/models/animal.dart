class Animal {
  final String name;
  final String type;
  final double weight;
  final List<String> habitat;
  final double height;
  final List<String> activities;
  final String image;
  final String? habitatDistribution;
  final String? physicalCharacteristics;
  final String? conservationStatus;

  Animal({
    required this.name,
    required this.type,
    required this.weight,
    required this.habitat,
    required this.height,
    required this.activities,
    required this.image,
    this.habitatDistribution,
    this.physicalCharacteristics,
    this.conservationStatus,
  });

  factory Animal.fromJson(Map<String, dynamic> json) {
    return Animal(
      name: json['name'] as String,
      type: json['type'] as String,
      weight: (json['weight'] as num).toDouble(),
      habitat: List<String>.from(json['habitat']),
      height: (json['height'] as num).toDouble(),
      activities: List<String>.from(json['activities']),
      image: json['image'] as String,
      habitatDistribution: json['habitatDistribution'] as String?,
      physicalCharacteristics: json['physicalCharacteristics'] as String?,
      conservationStatus: json['conservationStatus'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'type': type,
      'weight': weight,
      'habitat': habitat,
      'height': height,
      'activities': activities,
      'image': image,
      'habitatDistribution': habitatDistribution,
      'physicalCharacteristics': physicalCharacteristics,
      'conservationStatus': conservationStatus,
    };
  }
}
