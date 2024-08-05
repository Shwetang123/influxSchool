class Student {
  final String? SName;
  final String? studentPhotoPath;

  Student({this.SName, this.studentPhotoPath});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      SName: json['SName'] as String?,
      studentPhotoPath: json['studentphotoPath'] as String?,
    );
  }
}
