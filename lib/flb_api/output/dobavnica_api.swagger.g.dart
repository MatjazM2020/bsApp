// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dobavnica_api.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenRenewRequest _$TokenRenewRequestFromJson(Map<String, dynamic> json) =>
    TokenRenewRequest(
      token: json['token'] as String? ?? '',
      refreshToken: json['refreshToken'] as String? ?? '',
    );

Map<String, dynamic> _$TokenRenewRequestToJson(TokenRenewRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
    };

UserTokenResponseDto _$UserTokenResponseDtoFromJson(
        Map<String, dynamic> json) =>
    UserTokenResponseDto(
      token: json['token'] as String? ?? '',
      userName: json['userName'] as String? ?? '',
      validTo: json['validTo'] == null
          ? null
          : DateTime.parse(json['validTo'] as String),
      refreshToken: json['refreshToken'] as String? ?? '',
    );

Map<String, dynamic> _$UserTokenResponseDtoToJson(
        UserTokenResponseDto instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userName': instance.userName,
      'validTo': instance.validTo?.toIso8601String(),
      'refreshToken': instance.refreshToken,
    };

ProblemDetails _$ProblemDetailsFromJson(Map<String, dynamic> json) =>
    ProblemDetails(
      type: json['type'] as String? ?? '',
      title: json['title'] as String? ?? '',
      status: json['status'] as int? ?? 0,
      detail: json['detail'] as String? ?? '',
      instance: json['instance'] as String? ?? '',
    );

Map<String, dynamic> _$ProblemDetailsToJson(ProblemDetails instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'status': instance.status,
      'detail': instance.detail,
      'instance': instance.instance,
    };

AuthenticateDto _$AuthenticateDtoFromJson(Map<String, dynamic> json) =>
    AuthenticateDto(
      email: json['email'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$AuthenticateDtoToJson(AuthenticateDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

UserAuthenticationRequestDto _$UserAuthenticationRequestDtoFromJson(
        Map<String, dynamic> json) =>
    UserAuthenticationRequestDto(
      userName: json['userName'] as String? ?? '',
      password: json['password'] as String? ?? '',
      passwordConfirm: json['passwordConfirm'] as String? ?? '',
      oldPassword: json['oldPassword'] as String? ?? '',
    );

Map<String, dynamic> _$UserAuthenticationRequestDtoToJson(
        UserAuthenticationRequestDto instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'password': instance.password,
      'passwordConfirm': instance.passwordConfirm,
      'oldPassword': instance.oldPassword,
    };

UserAuthenticationResponseDto _$UserAuthenticationResponseDtoFromJson(
        Map<String, dynamic> json) =>
    UserAuthenticationResponseDto(
      userName: json['userName'] as String? ?? '',
      message: json['message'] as String? ?? '',
      findStatus: userFindStatusFromJson(json['findStatus']),
    );

Map<String, dynamic> _$UserAuthenticationResponseDtoToJson(
        UserAuthenticationResponseDto instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'message': instance.message,
      'findStatus': userFindStatusToJson(instance.findStatus),
    };

UserResetPasswordRequestDto _$UserResetPasswordRequestDtoFromJson(
        Map<String, dynamic> json) =>
    UserResetPasswordRequestDto(
      userName: json['userName'] as String? ?? '',
      password: json['password'] as String? ?? '',
      token: json['token'] as String? ?? '',
    );

Map<String, dynamic> _$UserResetPasswordRequestDtoToJson(
        UserResetPasswordRequestDto instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'password': instance.password,
      'token': instance.token,
    };

UserResetPasswordResponseDto _$UserResetPasswordResponseDtoFromJson(
        Map<String, dynamic> json) =>
    UserResetPasswordResponseDto(
      userName: json['userName'] as String? ?? '',
      status: json['status'] as bool,
    );

Map<String, dynamic> _$UserResetPasswordResponseDtoToJson(
        UserResetPasswordResponseDto instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'status': instance.status,
    };

UserGenerateTokenRequestDto _$UserGenerateTokenRequestDtoFromJson(
        Map<String, dynamic> json) =>
    UserGenerateTokenRequestDto(
      userName: json['userName'] as String? ?? '',
    );

Map<String, dynamic> _$UserGenerateTokenRequestDtoToJson(
        UserGenerateTokenRequestDto instance) =>
    <String, dynamic>{
      'userName': instance.userName,
    };

UserGenerateTokenResponseDto _$UserGenerateTokenResponseDtoFromJson(
        Map<String, dynamic> json) =>
    UserGenerateTokenResponseDto(
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$UserGenerateTokenResponseDtoToJson(
        UserGenerateTokenResponseDto instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

UserFindRequestDto _$UserFindRequestDtoFromJson(Map<String, dynamic> json) =>
    UserFindRequestDto(
      userName: json['userName'] as String? ?? '',
    );

Map<String, dynamic> _$UserFindRequestDtoToJson(UserFindRequestDto instance) =>
    <String, dynamic>{
      'userName': instance.userName,
    };

UserFindResponseDto _$UserFindResponseDtoFromJson(Map<String, dynamic> json) =>
    UserFindResponseDto(
      id: json['id'] as String? ?? '',
      userName: json['userName'] as String? ?? '',
      email: json['email'] as String? ?? '',
      active: json['active'] as bool?,
      findStatus: userFindStatusFromJson(json['findStatus']),
    );

Map<String, dynamic> _$UserFindResponseDtoToJson(
        UserFindResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'email': instance.email,
      'active': instance.active,
      'findStatus': userFindStatusToJson(instance.findStatus),
    };

AddDocumentHandlerRequest _$AddDocumentHandlerRequestFromJson(
        Map<String, dynamic> json) =>
    AddDocumentHandlerRequest(
      documentId: json['documentId'] as String? ?? '',
      transportHandlerId: json['transportHandlerId'] as String? ?? '',
      issuerId: json['issuerId'] as String? ?? '',
    );

Map<String, dynamic> _$AddDocumentHandlerRequestToJson(
        AddDocumentHandlerRequest instance) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'transportHandlerId': instance.transportHandlerId,
      'issuerId': instance.issuerId,
    };

AddDocumentHandlerResponse _$AddDocumentHandlerResponseFromJson(
        Map<String, dynamic> json) =>
    AddDocumentHandlerResponse(
      status: json['status'] as bool?,
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$AddDocumentHandlerResponseToJson(
        AddDocumentHandlerResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

AuthorizeTransportHandlerRequest _$AuthorizeTransportHandlerRequestFromJson(
        Map<String, dynamic> json) =>
    AuthorizeTransportHandlerRequest(
      id: json['id'] as String? ?? '',
      deviceId: json['deviceId'] as String? ?? '',
    );

Map<String, dynamic> _$AuthorizeTransportHandlerRequestToJson(
        AuthorizeTransportHandlerRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deviceId': instance.deviceId,
    };

AuthorizeTransportHandlerResponse _$AuthorizeTransportHandlerResponseFromJson(
        Map<String, dynamic> json) =>
    AuthorizeTransportHandlerResponse(
      status: json['status'] as bool?,
      message: json['message'] as String? ?? '',
      token: json['token'] as String? ?? '',
      expires: json['expires'] == null
          ? null
          : DateTime.parse(json['expires'] as String),
    );

Map<String, dynamic> _$AuthorizeTransportHandlerResponseToJson(
        AuthorizeTransportHandlerResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'token': instance.token,
      'expires': instance.expires?.toIso8601String(),
    };

ClaimDocumentsRequest _$ClaimDocumentsRequestFromJson(
        Map<String, dynamic> json) =>
    ClaimDocumentsRequest(
      token: json['token'] as String? ?? '',
    );

Map<String, dynamic> _$ClaimDocumentsRequestToJson(
        ClaimDocumentsRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

Document _$DocumentFromJson(Map<String, dynamic> json) => Document(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      key: json['key'] as String? ?? '',
    );

Map<String, dynamic> _$DocumentToJson(Document instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'key': instance.key,
    };

SigningDocumentAttachment _$SigningDocumentAttachmentFromJson(
        Map<String, dynamic> json) =>
    SigningDocumentAttachment(
      attachmentType: attachmentTypeFromJson(json['attachmentType']),
      attachment: json['attachment'] == null
          ? null
          : Document.fromJson(json['attachment'] as Map<String, dynamic>),
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      entityIdentifier: json['entityIdentifier'] as String? ?? '',
      entity: json['entity'] as String? ?? '',
      key: json['key'] as String? ?? '',
    );

Map<String, dynamic> _$SigningDocumentAttachmentToJson(
        SigningDocumentAttachment instance) =>
    <String, dynamic>{
      'attachmentType': attachmentTypeToJson(instance.attachmentType),
      'attachment': instance.attachment?.toJson(),
      'created': instance.created?.toIso8601String(),
      'entityIdentifier': instance.entityIdentifier,
      'entity': instance.entity,
      'key': instance.key,
    };

SigningDocumentResource _$SigningDocumentResourceFromJson(
        Map<String, dynamic> json) =>
    SigningDocumentResource(
      id: json['id'] as String? ?? '',
      documentId: json['documentId'] as String? ?? '',
      signatoryName: json['signatoryName'] as String? ?? '',
      signatoryPhoneNo: json['signatoryPhoneNo'] as String? ?? '',
      signatoryEmail: json['signatoryEmail'] as String? ?? '',
      signatoryCountry: json['signatoryCountry'] as String? ?? '',
      signatoryPostCode: json['signatoryPostCode'] as String? ?? '',
      signatoryCity: json['signatoryCity'] as String? ?? '',
      signatoryAddress: json['signatoryAddress'] as String? ?? '',
      confirmed: json['confirmed'] as bool?,
      rejected: json['rejected'] as bool?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      externalResourceId: json['externalResourceId'] as String? ?? '',
      externalDocumentId: json['externalDocumentId'] as String? ?? '',
      key: json['key'] as String? ?? '',
    );

Map<String, dynamic> _$SigningDocumentResourceToJson(
        SigningDocumentResource instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentId': instance.documentId,
      'signatoryName': instance.signatoryName,
      'signatoryPhoneNo': instance.signatoryPhoneNo,
      'signatoryEmail': instance.signatoryEmail,
      'signatoryCountry': instance.signatoryCountry,
      'signatoryPostCode': instance.signatoryPostCode,
      'signatoryCity': instance.signatoryCity,
      'signatoryAddress': instance.signatoryAddress,
      'confirmed': instance.confirmed,
      'rejected': instance.rejected,
      'created': instance.created?.toIso8601String(),
      'externalResourceId': instance.externalResourceId,
      'externalDocumentId': instance.externalDocumentId,
      'key': instance.key,
    };

DocumentInteraction _$DocumentInteractionFromJson(Map<String, dynamic> json) =>
    DocumentInteraction(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      description: json['description'] as String? ?? '',
      type: json['type'] as String? ?? '',
      id: json['id'] as String? ?? '',
      longitude: (json['longitude'] as num?)?.toDouble(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      additionalData: json['additionalData'] as Map<String, dynamic>?,
      key: json['key'] as String? ?? '',
    );

Map<String, dynamic> _$DocumentInteractionToJson(
        DocumentInteraction instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'description': instance.description,
      'type': instance.type,
      'id': instance.id,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'additionalData': instance.additionalData,
      'key': instance.key,
    };

ClaimDocumentsResponse _$ClaimDocumentsResponseFromJson(
        Map<String, dynamic> json) =>
    ClaimDocumentsResponse(
      id: json['id'] as String? ?? '',
      documentSigningRequestId:
          json['documentSigningRequestId'] as String? ?? '',
      signatoryName: json['signatoryName'] as String? ?? '',
      signatoryPhoneNo: json['signatoryPhoneNo'] as String? ?? '',
      signatoryEmail: json['signatoryEmail'] as String? ?? '',
      signatoryCountry: json['signatoryCountry'] as String? ?? '',
      signatoryPostCode: json['signatoryPostCode'] as String? ?? '',
      signatoryCity: json['signatoryCity'] as String? ?? '',
      signatoryAddress: json['signatoryAddress'] as String? ?? '',
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) =>
                  SigningDocumentAttachment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      resources: (json['resources'] as List<dynamic>?)
              ?.map((e) =>
                  SigningDocumentResource.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      interactions: (json['interactions'] as List<dynamic>?)
              ?.map((e) =>
                  DocumentInteraction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      status: documentStatusFromJson(json['status']),
      externalDocumentId: json['externalDocumentId'] as String? ?? '',
      undeliveredReason: json['undeliveredReason'] as String? ?? '',
      numberOfRejectedImages: json['numberOfRejectedImages'] as int? ?? 0,
      issuerId: json['issuerId'] as String? ?? '',
    );

Map<String, dynamic> _$ClaimDocumentsResponseToJson(
        ClaimDocumentsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentSigningRequestId': instance.documentSigningRequestId,
      'signatoryName': instance.signatoryName,
      'signatoryPhoneNo': instance.signatoryPhoneNo,
      'signatoryEmail': instance.signatoryEmail,
      'signatoryCountry': instance.signatoryCountry,
      'signatoryPostCode': instance.signatoryPostCode,
      'signatoryCity': instance.signatoryCity,
      'signatoryAddress': instance.signatoryAddress,
      'attachments': instance.attachments?.map((e) => e.toJson()).toList(),
      'resources': instance.resources?.map((e) => e.toJson()).toList(),
      'interactions': instance.interactions?.map((e) => e.toJson()).toList(),
      'status': documentStatusToJson(instance.status),
      'externalDocumentId': instance.externalDocumentId,
      'undeliveredReason': instance.undeliveredReason,
      'numberOfRejectedImages': instance.numberOfRejectedImages,
      'issuerId': instance.issuerId,
    };

CompleteDocumentsRequest _$CompleteDocumentsRequestFromJson(
        Map<String, dynamic> json) =>
    CompleteDocumentsRequest(
      documentIds: (json['documentIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      issuerId: json['issuerId'] as String? ?? '',
    );

Map<String, dynamic> _$CompleteDocumentsRequestToJson(
        CompleteDocumentsRequest instance) =>
    <String, dynamic>{
      'documentIds': instance.documentIds,
      'issuerId': instance.issuerId,
    };

CompleteDocumentsResponse _$CompleteDocumentsResponseFromJson(
        Map<String, dynamic> json) =>
    CompleteDocumentsResponse(
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$CompleteDocumentsResponseToJson(
        CompleteDocumentsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

DocumentResourceRequest _$DocumentResourceRequestFromJson(
        Map<String, dynamic> json) =>
    DocumentResourceRequest(
      id: json['id'] as String? ?? '',
      documentId: json['documentId'] as String? ?? '',
      reason: json['reason'] as String? ?? '',
    );

Map<String, dynamic> _$DocumentResourceRequestToJson(
        DocumentResourceRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentId': instance.documentId,
      'reason': instance.reason,
    };

DocumentResourceResponse _$DocumentResourceResponseFromJson(
        Map<String, dynamic> json) =>
    DocumentResourceResponse(
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$DocumentResourceResponseToJson(
        DocumentResourceResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

DocumentSigningRequestDto _$DocumentSigningRequestDtoFromJson(
        Map<String, dynamic> json) =>
    DocumentSigningRequestDto(
      issuerId: json['issuerId'] as String? ?? '',
    );

Map<String, dynamic> _$DocumentSigningRequestDtoToJson(
        DocumentSigningRequestDto instance) =>
    <String, dynamic>{
      'issuerId': instance.issuerId,
    };

DocumentSigningLabelResponse _$DocumentSigningLabelResponseFromJson(
        Map<String, dynamic> json) =>
    DocumentSigningLabelResponse(
      issuerId: json['issuerId'] as String? ?? '',
      signingRequestId: json['signingRequestId'] as String? ?? '',
      qrCode: json['qrCode'] as String? ?? '',
      token: json['token'] as String? ?? '',
    );

Map<String, dynamic> _$DocumentSigningLabelResponseToJson(
        DocumentSigningLabelResponse instance) =>
    <String, dynamic>{
      'issuerId': instance.issuerId,
      'signingRequestId': instance.signingRequestId,
      'qrCode': instance.qrCode,
      'token': instance.token,
    };

CreateTransportHandlerModel _$CreateTransportHandlerModelFromJson(
        Map<String, dynamic> json) =>
    CreateTransportHandlerModel(
      name: json['name'] as String? ?? '',
      surname: json['surname'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      vatNo: json['vatNo'] as String? ?? '',
      vehicleNumber: json['vehicleNumber'] as String? ?? '',
      email: json['email'] as String? ?? '',
      deviceId: json['deviceId'] as String? ?? '',
    );

Map<String, dynamic> _$CreateTransportHandlerModelToJson(
        CreateTransportHandlerModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
      'phone': instance.phone,
      'vatNo': instance.vatNo,
      'vehicleNumber': instance.vehicleNumber,
      'email': instance.email,
      'deviceId': instance.deviceId,
    };

TransportHandlerModel _$TransportHandlerModelFromJson(
        Map<String, dynamic> json) =>
    TransportHandlerModel(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      surname: json['surname'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      vatNo: json['vatNo'] as String? ?? '',
      vehicleNumber: json['vehicleNumber'] as String? ?? '',
      email: json['email'] as String? ?? '',
      deviceId: json['deviceId'] as String? ?? '',
    );

Map<String, dynamic> _$TransportHandlerModelToJson(
        TransportHandlerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'phone': instance.phone,
      'vatNo': instance.vatNo,
      'vehicleNumber': instance.vehicleNumber,
      'email': instance.email,
      'deviceId': instance.deviceId,
    };

DownloadDocumentAttachmentRequest _$DownloadDocumentAttachmentRequestFromJson(
        Map<String, dynamic> json) =>
    DownloadDocumentAttachmentRequest(
      documentId: json['documentId'] as String? ?? '',
      id: json['id'] as String? ?? '',
    );

Map<String, dynamic> _$DownloadDocumentAttachmentRequestToJson(
        DownloadDocumentAttachmentRequest instance) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'id': instance.id,
    };

DownloadDocumentAttachmentResponse _$DownloadDocumentAttachmentResponseFromJson(
        Map<String, dynamic> json) =>
    DownloadDocumentAttachmentResponse(
      name: json['name'] as String? ?? '',
      b64Image: json['b64Image'] as String? ?? '',
    );

Map<String, dynamic> _$DownloadDocumentAttachmentResponseToJson(
        DownloadDocumentAttachmentResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'b64Image': instance.b64Image,
    };

GetDocumentsRequest _$GetDocumentsRequestFromJson(Map<String, dynamic> json) =>
    GetDocumentsRequest(
      issuerId: json['issuerId'] as String? ?? '',
    );

Map<String, dynamic> _$GetDocumentsRequestToJson(
        GetDocumentsRequest instance) =>
    <String, dynamic>{
      'issuerId': instance.issuerId,
    };

GetDocumentsResponse _$GetDocumentsResponseFromJson(
        Map<String, dynamic> json) =>
    GetDocumentsResponse(
      id: json['id'] as String? ?? '',
      documentSigningRequestId:
          json['documentSigningRequestId'] as String? ?? '',
      signatoryName: json['signatoryName'] as String? ?? '',
      signatoryPhoneNo: json['signatoryPhoneNo'] as String? ?? '',
      signatoryEmail: json['signatoryEmail'] as String? ?? '',
      signatoryCountry: json['signatoryCountry'] as String? ?? '',
      signatoryPostCode: json['signatoryPostCode'] as String? ?? '',
      signatoryCity: json['signatoryCity'] as String? ?? '',
      signatoryAddress: json['signatoryAddress'] as String? ?? '',
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) =>
                  SigningDocumentAttachment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      resources: (json['resources'] as List<dynamic>?)
              ?.map((e) =>
                  SigningDocumentResource.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      interactions: (json['interactions'] as List<dynamic>?)
              ?.map((e) =>
                  DocumentInteraction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      status: documentStatusFromJson(json['status']),
      externalDocumentId: json['externalDocumentId'] as String? ?? '',
      undeliveredReason: json['undeliveredReason'] as String? ?? '',
      numberOfRejectedImages: json['numberOfRejectedImages'] as int? ?? 0,
    );

Map<String, dynamic> _$GetDocumentsResponseToJson(
        GetDocumentsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentSigningRequestId': instance.documentSigningRequestId,
      'signatoryName': instance.signatoryName,
      'signatoryPhoneNo': instance.signatoryPhoneNo,
      'signatoryEmail': instance.signatoryEmail,
      'signatoryCountry': instance.signatoryCountry,
      'signatoryPostCode': instance.signatoryPostCode,
      'signatoryCity': instance.signatoryCity,
      'signatoryAddress': instance.signatoryAddress,
      'attachments': instance.attachments?.map((e) => e.toJson()).toList(),
      'resources': instance.resources?.map((e) => e.toJson()).toList(),
      'interactions': instance.interactions?.map((e) => e.toJson()).toList(),
      'status': documentStatusToJson(instance.status),
      'externalDocumentId': instance.externalDocumentId,
      'undeliveredReason': instance.undeliveredReason,
      'numberOfRejectedImages': instance.numberOfRejectedImages,
    };

GetTransportHandlerRequest _$GetTransportHandlerRequestFromJson(
        Map<String, dynamic> json) =>
    GetTransportHandlerRequest(
      id: json['id'] as String? ?? '',
    );

Map<String, dynamic> _$GetTransportHandlerRequestToJson(
        GetTransportHandlerRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

GetTransportHandlersRequest _$GetTransportHandlersRequestFromJson(
        Map<String, dynamic> json) =>
    GetTransportHandlersRequest(
      transportAuthorityId: json['transportAuthorityId'] as String? ?? '',
    );

Map<String, dynamic> _$GetTransportHandlersRequestToJson(
        GetTransportHandlersRequest instance) =>
    <String, dynamic>{
      'transportAuthorityId': instance.transportAuthorityId,
    };

ListDocuments _$ListDocumentsFromJson(Map<String, dynamic> json) =>
    ListDocuments();

Map<String, dynamic> _$ListDocumentsToJson(ListDocuments instance) =>
    <String, dynamic>{};

RejectDocumentSigningRequest _$RejectDocumentSigningRequestFromJson(
        Map<String, dynamic> json) =>
    RejectDocumentSigningRequest(
      documentId: json['documentId'] as String? ?? '',
      reason: json['reason'] as String? ?? '',
    );

Map<String, dynamic> _$RejectDocumentSigningRequestToJson(
        RejectDocumentSigningRequest instance) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'reason': instance.reason,
    };

RejectDocumentSigningResponse _$RejectDocumentSigningResponseFromJson(
        Map<String, dynamic> json) =>
    RejectDocumentSigningResponse(
      status: json['status'] as bool?,
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$RejectDocumentSigningResponseToJson(
        RejectDocumentSigningResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

RemoveDocumentHandlerRequest _$RemoveDocumentHandlerRequestFromJson(
        Map<String, dynamic> json) =>
    RemoveDocumentHandlerRequest(
      documentId: json['documentId'] as String? ?? '',
      issuerId: json['issuerId'] as String? ?? '',
    );

Map<String, dynamic> _$RemoveDocumentHandlerRequestToJson(
        RemoveDocumentHandlerRequest instance) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'issuerId': instance.issuerId,
    };

RemoveDocumentHandlerResponse _$RemoveDocumentHandlerResponseFromJson(
        Map<String, dynamic> json) =>
    RemoveDocumentHandlerResponse(
      status: json['status'] as bool?,
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$RemoveDocumentHandlerResponseToJson(
        RemoveDocumentHandlerResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

RemoveDocumentResourceRequest _$RemoveDocumentResourceRequestFromJson(
        Map<String, dynamic> json) =>
    RemoveDocumentResourceRequest(
      documentId: json['documentId'] as String? ?? '',
      resourceIds: (json['resourceIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      issuerId: json['issuerId'] as String? ?? '',
    );

Map<String, dynamic> _$RemoveDocumentResourceRequestToJson(
        RemoveDocumentResourceRequest instance) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'resourceIds': instance.resourceIds,
      'issuerId': instance.issuerId,
    };

RemoveDocumentResourceResponse _$RemoveDocumentResourceResponseFromJson(
        Map<String, dynamic> json) =>
    RemoveDocumentResourceResponse(
      status: json['status'] as bool?,
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$RemoveDocumentResourceResponseToJson(
        RemoveDocumentResourceResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

UndeliverableDocumentSigningRequest
    _$UndeliverableDocumentSigningRequestFromJson(Map<String, dynamic> json) =>
        UndeliverableDocumentSigningRequest(
          documentId: json['documentId'] as String? ?? '',
          reason: json['reason'] as String? ?? '',
        );

Map<String, dynamic> _$UndeliverableDocumentSigningRequestToJson(
        UndeliverableDocumentSigningRequest instance) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'reason': instance.reason,
    };

UndeliverableDocumentSigningResponse
    _$UndeliverableDocumentSigningResponseFromJson(Map<String, dynamic> json) =>
        UndeliverableDocumentSigningResponse(
          status: json['status'] as bool?,
          message: json['message'] as String? ?? '',
        );

Map<String, dynamic> _$UndeliverableDocumentSigningResponseToJson(
        UndeliverableDocumentSigningResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

UploadAttachmentRequest _$UploadAttachmentRequestFromJson(
        Map<String, dynamic> json) =>
    UploadAttachmentRequest(
      id: json['id'] as String? ?? '',
      documentIds: (json['documentIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      b64Image: json['b64Image'] as String? ?? '',
      dateTime: DateTime.parse(json['dateTime'] as String),
      name: json['name'] as String? ?? '',
      entityIdentifier: json['entityIdentifier'] as String? ?? '',
      entity: json['entity'] as String? ?? '',
      additionalData: json['additionalData'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$UploadAttachmentRequestToJson(
        UploadAttachmentRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentIds': instance.documentIds,
      'b64Image': instance.b64Image,
      'dateTime': instance.dateTime.toIso8601String(),
      'name': instance.name,
      'entityIdentifier': instance.entityIdentifier,
      'entity': instance.entity,
      'additionalData': instance.additionalData,
    };

ClientSignatureResponse _$ClientSignatureResponseFromJson(
        Map<String, dynamic> json) =>
    ClientSignatureResponse(
      status: json['status'] as bool?,
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$ClientSignatureResponseToJson(
        ClientSignatureResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

DocumentSigningUpload _$DocumentSigningUploadFromJson(
        Map<String, dynamic> json) =>
    DocumentSigningUpload(
      signingRequestId: json['signingRequestId'] as String? ?? '',
      signatoryName: json['signatoryName'] as String? ?? '',
      signatoryPhoneNo: json['signatoryPhoneNo'] as String? ?? '',
      signatoryEmail: json['signatoryEmail'] as String? ?? '',
      signatoryCountry: json['signatoryCountry'] as String? ?? '',
      signatoryPostCode: json['signatoryPostCode'] as String? ?? '',
      signatoryCity: json['signatoryCity'] as String? ?? '',
      signatoryAddress: json['signatoryAddress'] as String? ?? '',
      externalDocumentId: json['externalDocumentId'] as String? ?? '',
      hasResources: json['hasResources'] as bool?,
      numberOfRejectedImages: json['numberOfRejectedImages'] as int? ?? 0,
    );

Map<String, dynamic> _$DocumentSigningUploadToJson(
        DocumentSigningUpload instance) =>
    <String, dynamic>{
      'signingRequestId': instance.signingRequestId,
      'signatoryName': instance.signatoryName,
      'signatoryPhoneNo': instance.signatoryPhoneNo,
      'signatoryEmail': instance.signatoryEmail,
      'signatoryCountry': instance.signatoryCountry,
      'signatoryPostCode': instance.signatoryPostCode,
      'signatoryCity': instance.signatoryCity,
      'signatoryAddress': instance.signatoryAddress,
      'externalDocumentId': instance.externalDocumentId,
      'hasResources': instance.hasResources,
      'numberOfRejectedImages': instance.numberOfRejectedImages,
    };

DocumentSigningUploadResponse _$DocumentSigningUploadResponseFromJson(
        Map<String, dynamic> json) =>
    DocumentSigningUploadResponse(
      id: json['id'] as String? ?? '',
    );

Map<String, dynamic> _$DocumentSigningUploadResponseToJson(
        DocumentSigningUploadResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

UploadResourceRequest _$UploadResourceRequestFromJson(
        Map<String, dynamic> json) =>
    UploadResourceRequest(
      documentId: json['documentId'] as String? ?? '',
      signatoryName: json['signatoryName'] as String? ?? '',
      signatoryPhoneNo: json['signatoryPhoneNo'] as String? ?? '',
      signatoryEmail: json['signatoryEmail'] as String? ?? '',
      signatoryCountry: json['signatoryCountry'] as String? ?? '',
      signatoryPostCode: json['signatoryPostCode'] as String? ?? '',
      signatoryCity: json['signatoryCity'] as String? ?? '',
      signatoryAddress: json['signatoryAddress'] as String? ?? '',
      externalResourceId: json['externalResourceId'] as String? ?? '',
      externalDocumentId: json['externalDocumentId'] as String? ?? '',
    );

Map<String, dynamic> _$UploadResourceRequestToJson(
        UploadResourceRequest instance) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'signatoryName': instance.signatoryName,
      'signatoryPhoneNo': instance.signatoryPhoneNo,
      'signatoryEmail': instance.signatoryEmail,
      'signatoryCountry': instance.signatoryCountry,
      'signatoryPostCode': instance.signatoryPostCode,
      'signatoryCity': instance.signatoryCity,
      'signatoryAddress': instance.signatoryAddress,
      'externalResourceId': instance.externalResourceId,
      'externalDocumentId': instance.externalDocumentId,
    };

UploadResourceResponse _$UploadResourceResponseFromJson(
        Map<String, dynamic> json) =>
    UploadResourceResponse(
      id: json['id'] as String? ?? '',
      documentId: json['documentId'] as String? ?? '',
      qrCode: json['qrCode'] as String? ?? '',
      token: json['token'] as String? ?? '',
    );

Map<String, dynamic> _$UploadResourceResponseToJson(
        UploadResourceResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentId': instance.documentId,
      'qrCode': instance.qrCode,
      'token': instance.token,
    };

MetaData _$MetaDataFromJson(Map<String, dynamic> json) => MetaData(
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
      createdBy: json['createdBy'] as String? ?? '',
      updatedBy: json['updatedBy'] as String? ?? '',
    );

Map<String, dynamic> _$MetaDataToJson(MetaData instance) => <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'createdBy': instance.createdBy,
      'updatedBy': instance.updatedBy,
    };

DocumentMoveRequest _$DocumentMoveRequestFromJson(Map<String, dynamic> json) =>
    DocumentMoveRequest(
      namespace: json['namespace'] as String? ?? '',
      eTag: json['eTag'] as String? ?? '',
      id: json['id'] as String? ?? '',
      metaData: json['metaData'] == null
          ? null
          : MetaData.fromJson(json['metaData'] as Map<String, dynamic>),
      key: json['key'] as String? ?? '',
    );

Map<String, dynamic> _$DocumentMoveRequestToJson(
        DocumentMoveRequest instance) =>
    <String, dynamic>{
      'namespace': instance.namespace,
      'eTag': instance.eTag,
      'id': instance.id,
      'metaData': instance.metaData?.toJson(),
      'key': instance.key,
    };

DocumentMoveResponse _$DocumentMoveResponseFromJson(
        Map<String, dynamic> json) =>
    DocumentMoveResponse(
      status: json['status'] as bool?,
      key: json['key'] as String? ?? '',
    );

Map<String, dynamic> _$DocumentMoveResponseToJson(
        DocumentMoveResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'key': instance.key,
    };

DocumentMetadata _$DocumentMetadataFromJson(Map<String, dynamic> json) =>
    DocumentMetadata(
      name: json['name'] as String? ?? '',
      value: json['value'] as String? ?? '',
      key: json['key'] as String? ?? '',
    );

Map<String, dynamic> _$DocumentMetadataToJson(DocumentMetadata instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'key': instance.key,
    };

DocumentSearchRequest _$DocumentSearchRequestFromJson(
        Map<String, dynamic> json) =>
    DocumentSearchRequest(
      description: json['description'] as String? ?? '',
      namespace: json['namespace'] as String? ?? '',
      fileName: json['fileName'] as String? ?? '',
      mimeType: json['mimeType'] as String? ?? '',
      startingDate: json['startingDate'] == null
          ? null
          : DateTime.parse(json['startingDate'] as String),
      endingDate: json['endingDate'] == null
          ? null
          : DateTime.parse(json['endingDate'] as String),
      documentMetadata: (json['documentMetadata'] as List<dynamic>?)
              ?.map((e) => DocumentMetadata.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      eTag: json['eTag'] as String? ?? '',
      id: json['id'] as String? ?? '',
      metaData: json['metaData'] == null
          ? null
          : MetaData.fromJson(json['metaData'] as Map<String, dynamic>),
      key: json['key'] as String? ?? '',
    );

Map<String, dynamic> _$DocumentSearchRequestToJson(
        DocumentSearchRequest instance) =>
    <String, dynamic>{
      'description': instance.description,
      'namespace': instance.namespace,
      'fileName': instance.fileName,
      'mimeType': instance.mimeType,
      'startingDate': instance.startingDate?.toIso8601String(),
      'endingDate': instance.endingDate?.toIso8601String(),
      'documentMetadata':
          instance.documentMetadata?.map((e) => e.toJson()).toList(),
      'eTag': instance.eTag,
      'id': instance.id,
      'metaData': instance.metaData?.toJson(),
      'key': instance.key,
    };

DocumentGeolocation _$DocumentGeolocationFromJson(Map<String, dynamic> json) =>
    DocumentGeolocation(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DocumentGeolocationToJson(
        DocumentGeolocation instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

DocumentDownloadToken _$DocumentDownloadTokenFromJson(
        Map<String, dynamic> json) =>
    DocumentDownloadToken(
      token: json['token'] as String? ?? '',
      enabled: json['enabled'] as bool?,
      hasPersistentToken: json['hasPersistentToken'] as bool?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      validTo: json['validTo'] == null
          ? null
          : DateTime.parse(json['validTo'] as String),
      key: json['key'] as String? ?? '',
    );

Map<String, dynamic> _$DocumentDownloadTokenToJson(
        DocumentDownloadToken instance) =>
    <String, dynamic>{
      'token': instance.token,
      'enabled': instance.enabled,
      'hasPersistentToken': instance.hasPersistentToken,
      'created': instance.created?.toIso8601String(),
      'validTo': instance.validTo?.toIso8601String(),
      'key': instance.key,
    };

DocumentSearchResponseItem _$DocumentSearchResponseItemFromJson(
        Map<String, dynamic> json) =>
    DocumentSearchResponseItem(
      description: json['description'] as String? ?? '',
      namespace: json['namespace'] as String? ?? '',
      fileName: json['fileName'] as String? ?? '',
      calculatedMimeType: json['calculatedMimeType'] as String? ?? '',
      mimeType: json['mimeType'] as String? ?? '',
      encoding: json['encoding'] as String? ?? '',
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      geolocation: json['geolocation'] == null
          ? null
          : DocumentGeolocation.fromJson(
              json['geolocation'] as Map<String, dynamic>),
      downloadTokens: (json['downloadTokens'] as List<dynamic>?)
              ?.map((e) =>
                  DocumentDownloadToken.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      documentMetadata: (json['documentMetadata'] as List<dynamic>?)
              ?.map((e) => DocumentMetadata.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      eTag: json['eTag'] as String? ?? '',
      id: json['id'] as String? ?? '',
      metaData: json['metaData'] == null
          ? null
          : MetaData.fromJson(json['metaData'] as Map<String, dynamic>),
      key: json['key'] as String? ?? '',
    );

Map<String, dynamic> _$DocumentSearchResponseItemToJson(
        DocumentSearchResponseItem instance) =>
    <String, dynamic>{
      'description': instance.description,
      'namespace': instance.namespace,
      'fileName': instance.fileName,
      'calculatedMimeType': instance.calculatedMimeType,
      'mimeType': instance.mimeType,
      'encoding': instance.encoding,
      'created': instance.created?.toIso8601String(),
      'geolocation': instance.geolocation?.toJson(),
      'downloadTokens':
          instance.downloadTokens?.map((e) => e.toJson()).toList(),
      'documentMetadata':
          instance.documentMetadata?.map((e) => e.toJson()).toList(),
      'eTag': instance.eTag,
      'id': instance.id,
      'metaData': instance.metaData?.toJson(),
      'key': instance.key,
    };

DocumentSearchResponse _$DocumentSearchResponseFromJson(
        Map<String, dynamic> json) =>
    DocumentSearchResponse(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => DocumentSearchResponseItem.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$DocumentSearchResponseToJson(
        DocumentSearchResponse instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

DocumentMetadataRequest _$DocumentMetadataRequestFromJson(
        Map<String, dynamic> json) =>
    DocumentMetadataRequest(
      action: documentMetadataRequestActionFromJson(json['action']),
      documentMetadata: (json['documentMetadata'] as List<dynamic>?)
              ?.map((e) => DocumentMetadata.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      eTag: json['eTag'] as String? ?? '',
      id: json['id'] as String? ?? '',
      metaData: json['metaData'] == null
          ? null
          : MetaData.fromJson(json['metaData'] as Map<String, dynamic>),
      key: json['key'] as String? ?? '',
    );

Map<String, dynamic> _$DocumentMetadataRequestToJson(
        DocumentMetadataRequest instance) =>
    <String, dynamic>{
      'action': documentMetadataRequestActionToJson(instance.action),
      'documentMetadata':
          instance.documentMetadata?.map((e) => e.toJson()).toList(),
      'eTag': instance.eTag,
      'id': instance.id,
      'metaData': instance.metaData?.toJson(),
      'key': instance.key,
    };

DocumentMetadataResponse _$DocumentMetadataResponseFromJson(
        Map<String, dynamic> json) =>
    DocumentMetadataResponse(
      status: json['status'] as bool?,
      key: json['key'] as String? ?? '',
    );

Map<String, dynamic> _$DocumentMetadataResponseToJson(
        DocumentMetadataResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'key': instance.key,
    };

DtFormatRequest _$DtFormatRequestFromJson(Map<String, dynamic> json) =>
    DtFormatRequest(
      locale: json['locale'] as String? ?? '',
      value: json['value'] as String? ?? '',
    );

Map<String, dynamic> _$DtFormatRequestToJson(DtFormatRequest instance) =>
    <String, dynamic>{
      'locale': instance.locale,
      'value': instance.value,
    };

DtFormatResponse _$DtFormatResponseFromJson(Map<String, dynamic> json) =>
    DtFormatResponse(
      formatted: json['formatted'] as String? ?? '',
      value: json['value'] == null
          ? null
          : DateTime.parse(json['value'] as String),
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$DtFormatResponseToJson(DtFormatResponse instance) =>
    <String, dynamic>{
      'formatted': instance.formatted,
      'value': instance.value?.toIso8601String(),
      'status': instance.status,
    };
