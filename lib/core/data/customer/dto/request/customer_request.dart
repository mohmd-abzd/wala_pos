import 'package:json_annotation/json_annotation.dart';

part 'customer_request.g.dart';

@JsonSerializable()
class CustomerRequest {
  // If you needed query params you could add them here.
  CustomerRequest();

  factory CustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$CustomerRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CustomerRequestToJson(this);
}
