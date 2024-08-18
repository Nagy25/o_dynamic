// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostParameters _$PostParametersFromJson(Map<String, dynamic> json) =>
    PostParameters(
      apiName: json['apiName'] as String,
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$PostParametersToJson(PostParameters instance) =>
    <String, dynamic>{
      'apiName': instance.apiName,
      'userId': instance.userId,
    };
