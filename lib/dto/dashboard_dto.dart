// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class DashboardDto {
  final double totalFixedBills;
  final double totalNoFixedBills;

  DashboardDto({
    required this.totalFixedBills,
    required this.totalNoFixedBills,
  });

  DashboardDto copyWith({
    double? totalFixedBills,
    double? totalNoFixedBills,
  }) {
    return DashboardDto(
      totalFixedBills: totalFixedBills ?? this.totalFixedBills,
      totalNoFixedBills: totalNoFixedBills ?? this.totalNoFixedBills,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalFixedBills': totalFixedBills,
      'totalNoFixedBills': totalNoFixedBills,
    };
  }

  factory DashboardDto.fromMap(Map<String, dynamic> map) {
    return DashboardDto(
      totalFixedBills: map['totalFixedBills'] as double,
      totalNoFixedBills: map['totalNoFixedBills'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory DashboardDto.fromJson(String source) =>
      DashboardDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'DashboardDto(totalFixedBills: $totalFixedBills, totalNoFixedBills: $totalNoFixedBills)';

  @override
  bool operator ==(covariant DashboardDto other) {
    if (identical(this, other)) return true;

    return other.totalFixedBills == totalFixedBills &&
        other.totalNoFixedBills == totalNoFixedBills;
  }

  @override
  int get hashCode => totalFixedBills.hashCode ^ totalNoFixedBills.hashCode;
}
