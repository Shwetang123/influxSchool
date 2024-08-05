import 'package:intl/intl.dart';

class Attendance {
  List<AttMonth>? attMonths;

  Attendance({this.attMonths});

  factory Attendance.fromJson(Map<String, dynamic> json) {
    return Attendance(
      attMonths: json['attMonthsName'] != null
          ? List<AttMonth>.from(json['attMonthsName'].map((x) => AttMonth.fromJson(x)))
          : null,
    );
  }
}

class AttMonth {
  String? attMonthName;
  int? totalAttDays;
  int? totalPresentDays;
  int? totalAbsentDays;
  List<Entry>? entries;

  AttMonth({
    this.attMonthName,
    this.totalAttDays,
    this.totalPresentDays,
    this.totalAbsentDays,
    this.entries,
  });

  factory AttMonth.fromJson(Map<String, dynamic> json) {
    return AttMonth(
      attMonthName: json['AttMonthName'],
      totalAttDays: json['TotalAttDays'],
      totalPresentDays: json['TotalPresentDays'],
      totalAbsentDays: json['TotalAbsentDays'],
      entries: json['Entries'] != null
          ? List<Entry>.from(json['Entries'].map((x) => Entry.fromJson(x)))
          : null,
    );
  }
}

class Entry {
  String? srNo;
  DateTime? atDate;
  AtDay? atDay;
  AtStatus? atStatus;
  String? atRemark;

  Entry({
    this.srNo,
    this.atDate,
    this.atDay,
    this.atStatus,
    this.atRemark,
  });

  factory Entry.fromJson(Map<String, dynamic> json) {
    return Entry(
      srNo: json['SrNo'],
      atDate: DateFormat("dd-MM-yyyy").parse(json['atDate']),
      atDay: json['atDay'] != null ? AtDay.values.byName(json['atDay'].toUpperCase()) : null,
      atStatus: json['atStatus'] != null ? AtStatus.values.byName(json['atStatus'].toUpperCase()) : null,
      atRemark: json['atRemark'],
    );
  }
}

enum AtDay { FRIDAY, MONDAY, SATURDAY, SUNDAY, THURSDAY, TUESDAY, WEDNESDAY }

enum AtStatus { ABSENT, NA, PRESENT }