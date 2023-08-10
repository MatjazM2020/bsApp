import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum UserFindStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(0)
  notfound(0),
  @JsonValue(1)
  found(1),
  @JsonValue(2)
  wrongpassword(2),
  @JsonValue(3)
  passwordmismatch(3);

  final int? value;

  const UserFindStatus(this.value);
}

enum AttachmentType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(1)
  signature(1),
  @JsonValue(2)
  media(2),
  @JsonValue(10)
  sourcedocument(10);

  final int? value;

  const AttachmentType(this.value);
}

enum DocumentStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(1)
  uploaded(1),
  @JsonValue(2)
  waitingapproval(2),
  @JsonValue(3)
  signed(3),
  @JsonValue(4)
  rejected(4),
  @JsonValue(5)
  completed(5),
  @JsonValue(6)
  undeliverable(6);

  final int? value;

  const DocumentStatus(this.value);
}

enum DocumentMetadataRequestAction {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(1)
  add(1),
  @JsonValue(2)
  edit(2),
  @JsonValue(3)
  delete(3);

  final int? value;

  const DocumentMetadataRequestAction(this.value);
}
