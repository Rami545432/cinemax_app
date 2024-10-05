class Cast {
  bool? adult;
  num? gender;
  num? id;
  String? knownForDepartment;
  String? name;
  String? originalName;
  double? popularity;
  String? profilePath;
  String? character;
  String? creditId;
  num? order;

  Cast({
    this.adult,
    this.gender,
    this.id,
    this.knownForDepartment,
    this.name,
    this.originalName,
    this.popularity,
    this.profilePath,
    this.character,
    this.creditId,
    this.order,
  });

  factory Cast.fromJson(Map<String, dynamic> json) => Cast(
        adult: json['adult'] as bool?,
        gender: json['gender'] as num?,
        id: json['id'] as num?,
        knownForDepartment: json['known_for_department'] as String?,
        name: json['name'] as String?,
        originalName: json['original_name'] as String?,
        popularity: (json['popularity'] as num?)?.toDouble(),
        profilePath: json['profile_path'] as String?,
        character: json['character'] as String?,
        creditId: json['credit_id'] as String?,
        order: json['order'] as num?,
      );

  Map<String, dynamic> toJson() => {
        'adult': adult,
        'gender': gender,
        'id': id,
        'known_for_department': knownForDepartment,
        'name': name,
        'original_name': originalName,
        'popularity': popularity,
        'profile_path': profilePath,
        'character': character,
        'credit_id': creditId,
        'order': order,
      };
}
