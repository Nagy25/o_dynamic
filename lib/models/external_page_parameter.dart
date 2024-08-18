import 'package:json_annotation/json_annotation.dart';

part 'external_page_parameter.g.dart'; // This is where the generated code will be

@JsonSerializable()
class ExternalPageParameter {
  final String url;

  ExternalPageParameter({
    required this.url,
  });

  // Factory method to create an ExternalPageParameter from JSON
  factory ExternalPageParameter.fromJson(Map<String, dynamic> json) =>
      _$ExternalPageParameterFromJson(json);

  // Method to convert an ExternalPageParameter to JSON
  Map<String, dynamic> toJson() => _$ExternalPageParameterToJson(this);
}
