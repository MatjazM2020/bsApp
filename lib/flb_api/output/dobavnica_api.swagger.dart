// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:chopper/chopper.dart' as chopper;
import 'dobavnica_api.enums.swagger.dart' as enums;
export 'dobavnica_api.enums.swagger.dart';

part 'dobavnica_api.swagger.chopper.dart';
part 'dobavnica_api.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class DobavnicaApi extends ChopperService{
  static DobavnicaApi create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$DobavnicaApi(client);
    }

    final newClient = ChopperClient(
        services: [_$DobavnicaApi()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        client: httpClient,
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$DobavnicaApi(newClient);
  }

  ///
  ///@param tenant
  Future<chopper.Response<UserTokenResponseDto>> apiTenantAccountRenewPost({
    required String? tenant,
    required TokenRenewRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        UserTokenResponseDto, () => UserTokenResponseDto.fromJsonFactory);

    return _apiTenantAccountRenewPost(tenant: tenant, body: body);
  }

  ///
  ///@param tenant
  @Post(
    path: '/api/{tenant}/Account/Renew',
    optionalBody: true,
  )
  Future<chopper.Response<UserTokenResponseDto>> _apiTenantAccountRenewPost({
    @Path('tenant') required String? tenant,
    @Body() required TokenRenewRequest? body,
  });

  ///
  ///@param tenant
  Future<chopper.Response<UserTokenResponseDto>>
      apiTenantAccountAuthenticatePost({
    required String? tenant,
    required AuthenticateDto? body,
  }) {
    generatedMapping.putIfAbsent(
        UserTokenResponseDto, () => UserTokenResponseDto.fromJsonFactory);

    return _apiTenantAccountAuthenticatePost(tenant: tenant, body: body);
  }

  ///
  ///@param tenant
  @Post(
    path: '/api/{tenant}/Account/Authenticate',
    optionalBody: true,
  )
  Future<chopper.Response<UserTokenResponseDto>>
      _apiTenantAccountAuthenticatePost({
    @Path('tenant') required String? tenant,
    @Body() required AuthenticateDto? body,
  });

  ///
  ///@param tenant
  Future<chopper.Response<UserAuthenticationResponseDto>>
      apiTenantAccountChangePasswordPost({
    required String? tenant,
    required UserAuthenticationRequestDto? body,
  }) {
    generatedMapping.putIfAbsent(UserAuthenticationResponseDto,
        () => UserAuthenticationResponseDto.fromJsonFactory);

    return _apiTenantAccountChangePasswordPost(tenant: tenant, body: body);
  }

  ///
  ///@param tenant
  @Post(
    path: '/api/{tenant}/Account/ChangePassword',
    optionalBody: true,
  )
  Future<chopper.Response<UserAuthenticationResponseDto>>
      _apiTenantAccountChangePasswordPost({
    @Path('tenant') required String? tenant,
    @Body() required UserAuthenticationRequestDto? body,
  });

  ///
  ///@param tenant
  Future<chopper.Response<UserResetPasswordResponseDto>>
      apiTenantAccountResetPasswordPost({
    required String? tenant,
    required UserResetPasswordRequestDto? body,
  }) {
    generatedMapping.putIfAbsent(UserResetPasswordResponseDto,
        () => UserResetPasswordResponseDto.fromJsonFactory);

    return _apiTenantAccountResetPasswordPost(tenant: tenant, body: body);
  }

  ///
  ///@param tenant
  @Post(
    path: '/api/{tenant}/Account/ResetPassword',
    optionalBody: true,
  )
  Future<chopper.Response<UserResetPasswordResponseDto>>
      _apiTenantAccountResetPasswordPost({
    @Path('tenant') required String? tenant,
    @Body() required UserResetPasswordRequestDto? body,
  });

  ///
  ///@param tenant
  ///@param version
  ///@param company
  Future<chopper.Response<UserGenerateTokenResponseDto>>
      apiTenantVersionCompanyAccountSendPasswordResetTokenPost({
    required String? tenant,
    required String? version,
    required String? company,
    required UserGenerateTokenRequestDto? body,
  }) {
    generatedMapping.putIfAbsent(UserGenerateTokenResponseDto,
        () => UserGenerateTokenResponseDto.fromJsonFactory);

    return _apiTenantVersionCompanyAccountSendPasswordResetTokenPost(
        tenant: tenant, version: version, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param version
  ///@param company
  @Post(
    path: '/api/{tenant}/{version}/{company}/Account/SendPasswordResetToken',
    optionalBody: true,
  )
  Future<chopper.Response<UserGenerateTokenResponseDto>>
      _apiTenantVersionCompanyAccountSendPasswordResetTokenPost({
    @Path('tenant') required String? tenant,
    @Path('version') required String? version,
    @Path('company') required String? company,
    @Body() required UserGenerateTokenRequestDto? body,
  });

  ///
  ///@param tenant
  Future<chopper.Response<UserFindResponseDto>> apiTenantAccountFindUserPost({
    required String? tenant,
    required UserFindRequestDto? body,
  }) {
    generatedMapping.putIfAbsent(
        UserFindResponseDto, () => UserFindResponseDto.fromJsonFactory);

    return _apiTenantAccountFindUserPost(tenant: tenant, body: body);
  }

  ///
  ///@param tenant
  @Post(
    path: '/api/{tenant}/Account/FindUser',
    optionalBody: true,
  )
  Future<chopper.Response<UserFindResponseDto>> _apiTenantAccountFindUserPost({
    @Path('tenant') required String? tenant,
    @Body() required UserFindRequestDto? body,
  });

  ///
  ///@param company
  ///@param key
  ///@param token
  ///@param tenant
  ///@param version
  Future<chopper.Response>
      apiAnonymousTenantVersionCompanyDocumentsStreamVideoGet({
    required String? company,
    String? key,
    String? token,
    required String? tenant,
    required String? version,
  }) {
    return _apiAnonymousTenantVersionCompanyDocumentsStreamVideoGet(
        company: company,
        key: key,
        token: token,
        tenant: tenant,
        version: version);
  }

  ///
  ///@param company
  ///@param key
  ///@param token
  ///@param tenant
  ///@param version
  @Get(
      path: '/api/anonymous/{tenant}/{version}/{company}/Documents/StreamVideo')
  Future<chopper.Response>
      _apiAnonymousTenantVersionCompanyDocumentsStreamVideoGet({
    @Path('company') required String? company,
    @Query('key') String? key,
    @Query('token') String? token,
    @Path('tenant') required String? tenant,
    @Path('version') required String? version,
  });

  ///
  ///@param company
  ///@param key
  ///@param token
  ///@param noFileName
  ///@param htmlContent
  ///@param tenant
  ///@param version
  Future<chopper.Response> apiAnonymousTenantVersionCompanyDocumentsGet({
    required String? company,
    String? key,
    String? token,
    bool? noFileName,
    bool? htmlContent,
    required String? tenant,
    required String? version,
  }) {
    return _apiAnonymousTenantVersionCompanyDocumentsGet(
        company: company,
        key: key,
        token: token,
        noFileName: noFileName,
        htmlContent: htmlContent,
        tenant: tenant,
        version: version);
  }

  ///
  ///@param company
  ///@param key
  ///@param token
  ///@param noFileName
  ///@param htmlContent
  ///@param tenant
  ///@param version
  @Get(path: '/api/anonymous/{tenant}/{version}/{company}/Documents')
  Future<chopper.Response> _apiAnonymousTenantVersionCompanyDocumentsGet({
    @Path('company') required String? company,
    @Query('key') String? key,
    @Query('token') String? token,
    @Query('noFileName') bool? noFileName,
    @Query('htmlContent') bool? htmlContent,
    @Path('tenant') required String? tenant,
    @Path('version') required String? version,
  });

  ///
  ///@param gfsFileId
  ///@param noFileName
  ///@param tenant
  ///@param version
  ///@param company
  Future<chopper.Response> apiGfsTenantVersionCompanyGet({
    String? gfsFileId,
    bool? noFileName,
    required String? tenant,
    required String? version,
    required String? company,
  }) {
    return _apiGfsTenantVersionCompanyGet(
        gfsFileId: gfsFileId,
        noFileName: noFileName,
        tenant: tenant,
        version: version,
        company: company);
  }

  ///
  ///@param gfsFileId
  ///@param noFileName
  ///@param tenant
  ///@param version
  ///@param company
  @Get(path: '/api/gfs/{tenant}/{version}/{company}')
  Future<chopper.Response> _apiGfsTenantVersionCompanyGet({
    @Query('gfsFileId') String? gfsFileId,
    @Query('noFileName') bool? noFileName,
    @Path('tenant') required String? tenant,
    @Path('version') required String? version,
    @Path('company') required String? company,
  });

  ///
  ///@param key
  ///@param noFileName
  ///@param htmlContent
  ///@param tenant
  ///@param version
  ///@param company
  Future<chopper.Response> apiPublicTenantVersionCompanyDocumentsKeyGet({
    required String? key,
    bool? noFileName,
    bool? htmlContent,
    required String? tenant,
    required String? version,
    required String? company,
  }) {
    return _apiPublicTenantVersionCompanyDocumentsKeyGet(
        key: key,
        noFileName: noFileName,
        htmlContent: htmlContent,
        tenant: tenant,
        version: version,
        company: company);
  }

  ///
  ///@param key
  ///@param noFileName
  ///@param htmlContent
  ///@param tenant
  ///@param version
  ///@param company
  @Get(path: '/api/public/{tenant}/{version}/{company}/Documents/{key}')
  Future<chopper.Response> _apiPublicTenantVersionCompanyDocumentsKeyGet({
    @Path('key') required String? key,
    @Query('noFileName') bool? noFileName,
    @Query('htmlContent') bool? htmlContent,
    @Path('tenant') required String? tenant,
    @Path('version') required String? version,
    @Path('company') required String? company,
  });

  ///
  ///@param key
  ///@param tenant
  ///@param version
  ///@param company
  Future<chopper.Response> apiPublicTenantVersionCompanyDocumentsKeyDelete({
    required String? key,
    required String? tenant,
    required String? version,
    required String? company,
  }) {
    return _apiPublicTenantVersionCompanyDocumentsKeyDelete(
        key: key, tenant: tenant, version: version, company: company);
  }

  ///
  ///@param key
  ///@param tenant
  ///@param version
  ///@param company
  @Delete(path: '/api/public/{tenant}/{version}/{company}/Documents/{key}')
  Future<chopper.Response> _apiPublicTenantVersionCompanyDocumentsKeyDelete({
    @Path('key') required String? key,
    @Path('tenant') required String? tenant,
    @Path('version') required String? version,
    @Path('company') required String? company,
  });

  ///
  ///@param tenant
  ///@param version
  ///@param company
  Future<chopper.Response> apiPublicTenantVersionCompanyDocumentsPost({
    required String? tenant,
    required String? version,
    required String? company,
  }) {
    return _apiPublicTenantVersionCompanyDocumentsPost(
        tenant: tenant, version: version, company: company);
  }

  ///
  ///@param tenant
  ///@param version
  ///@param company
  @Post(
    path: '/api/public/{tenant}/{version}/{company}/Documents',
    optionalBody: true,
  )
  Future<chopper.Response> _apiPublicTenantVersionCompanyDocumentsPost({
    @Path('tenant') required String? tenant,
    @Path('version') required String? version,
    @Path('company') required String? company,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<AddDocumentHandlerResponse>>
      apiPublicTenantPubCompanyDocumentSigningClientAddDocumentHandlerPost({
    required Object? tenant,
    required Object? company,
    required AddDocumentHandlerRequest? body,
  }) {
    generatedMapping.putIfAbsent(AddDocumentHandlerResponse,
        () => AddDocumentHandlerResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentSigningClientAddDocumentHandlerPost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/public/{tenant}/pub/{company}/DocumentSigningClient/AddDocumentHandler',
    optionalBody: true,
  )
  Future<chopper.Response<AddDocumentHandlerResponse>>
      _apiPublicTenantPubCompanyDocumentSigningClientAddDocumentHandlerPost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required AddDocumentHandlerRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<AuthorizeTransportHandlerResponse>>
      apiAnonymousTenantPubCompanyDocumentSigningDeviceAuthorizeDevicePost({
    required Object? tenant,
    required Object? company,
    required AuthorizeTransportHandlerRequest? body,
  }) {
    generatedMapping.putIfAbsent(AuthorizeTransportHandlerResponse,
        () => AuthorizeTransportHandlerResponse.fromJsonFactory);

    return _apiAnonymousTenantPubCompanyDocumentSigningDeviceAuthorizeDevicePost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/anonymous/{tenant}/pub/{company}/DocumentSigningDevice/AuthorizeDevice',
    optionalBody: true,
  )
  Future<chopper.Response<AuthorizeTransportHandlerResponse>>
      _apiAnonymousTenantPubCompanyDocumentSigningDeviceAuthorizeDevicePost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required AuthorizeTransportHandlerRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<List<ClaimDocumentsResponse>>>
      apiPublicTenantPubCompanyDocumentSigningDeviceClaimDocumentsPost({
    required Object? tenant,
    required Object? company,
    required ClaimDocumentsRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        ClaimDocumentsResponse, () => ClaimDocumentsResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentSigningDeviceClaimDocumentsPost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/public/{tenant}/pub/{company}/DocumentSigningDevice/ClaimDocuments',
    optionalBody: true,
  )
  Future<chopper.Response<List<ClaimDocumentsResponse>>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceClaimDocumentsPost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required ClaimDocumentsRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<CompleteDocumentsResponse>>
      apiPublicTenantPubCompanyDocumentSigningClientCompleteDocumentSigningPost({
    required Object? tenant,
    required Object? company,
    required CompleteDocumentsRequest? body,
  }) {
    generatedMapping.putIfAbsent(CompleteDocumentsResponse,
        () => CompleteDocumentsResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentSigningClientCompleteDocumentSigningPost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/public/{tenant}/pub/{company}/DocumentSigningClient/CompleteDocumentSigning',
    optionalBody: true,
  )
  Future<chopper.Response<CompleteDocumentsResponse>>
      _apiPublicTenantPubCompanyDocumentSigningClientCompleteDocumentSigningPost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required CompleteDocumentsRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<DocumentResourceResponse>>
      apiPublicTenantPubCompanyDocumentSigningDeviceConfirmDocumentResourcePost({
    required Object? tenant,
    required Object? company,
    required DocumentResourceRequest? body,
  }) {
    generatedMapping.putIfAbsent(DocumentResourceResponse,
        () => DocumentResourceResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentSigningDeviceConfirmDocumentResourcePost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/public/{tenant}/pub/{company}/DocumentSigningDevice/ConfirmDocumentResource',
    optionalBody: true,
  )
  Future<chopper.Response<DocumentResourceResponse>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceConfirmDocumentResourcePost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required DocumentResourceRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<DocumentSigningLabelResponse>>
      apiPublicTenantPubCompanyDocumentSigningClientCreateNewSigningRequestPost({
    required Object? tenant,
    required Object? company,
    required DocumentSigningRequestDto? body,
  }) {
    generatedMapping.putIfAbsent(DocumentSigningLabelResponse,
        () => DocumentSigningLabelResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentSigningClientCreateNewSigningRequestPost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/public/{tenant}/pub/{company}/DocumentSigningClient/CreateNewSigningRequest',
    optionalBody: true,
  )
  Future<chopper.Response<DocumentSigningLabelResponse>>
      _apiPublicTenantPubCompanyDocumentSigningClientCreateNewSigningRequestPost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required DocumentSigningRequestDto? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<TransportHandlerModel>>
      apiAnonymousTenantPubCompanyDocumentSigningDeviceCreateNewHandlerPost({
    required Object? tenant,
    required Object? company,
    required CreateTransportHandlerModel? body,
  }) {
    generatedMapping.putIfAbsent(
        TransportHandlerModel, () => TransportHandlerModel.fromJsonFactory);

    return _apiAnonymousTenantPubCompanyDocumentSigningDeviceCreateNewHandlerPost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/anonymous/{tenant}/pub/{company}/DocumentSigningDevice/CreateNewHandler',
    optionalBody: true,
  )
  Future<chopper.Response<TransportHandlerModel>>
      _apiAnonymousTenantPubCompanyDocumentSigningDeviceCreateNewHandlerPost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required CreateTransportHandlerModel? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<DownloadDocumentAttachmentResponse>>
      apiPublicTenantPubCompanyDocumentSigningDeviceDownloadDocumentAttachmentPost({
    required Object? tenant,
    required Object? company,
    required DownloadDocumentAttachmentRequest? body,
  }) {
    generatedMapping.putIfAbsent(DownloadDocumentAttachmentResponse,
        () => DownloadDocumentAttachmentResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentSigningDeviceDownloadDocumentAttachmentPost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/public/{tenant}/pub/{company}/DocumentSigningDevice/DownloadDocumentAttachment',
    optionalBody: true,
  )
  Future<chopper.Response<DownloadDocumentAttachmentResponse>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceDownloadDocumentAttachmentPost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required DownloadDocumentAttachmentRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<List<GetDocumentsResponse>>>
      apiPublicTenantPubCompanyDocumentSigningClientGetDocumentsSigningPost({
    required Object? tenant,
    required Object? company,
    required GetDocumentsRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        GetDocumentsResponse, () => GetDocumentsResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentSigningClientGetDocumentsSigningPost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/public/{tenant}/pub/{company}/DocumentSigningClient/GetDocumentsSigning',
    optionalBody: true,
  )
  Future<chopper.Response<List<GetDocumentsResponse>>>
      _apiPublicTenantPubCompanyDocumentSigningClientGetDocumentsSigningPost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required GetDocumentsRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<TransportHandlerModel>>
      apiPublicTenantPubCompanyDocumentSigningDeviceGetTransportHandlerInfoPost({
    required Object? tenant,
    required Object? company,
    required GetTransportHandlerRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        TransportHandlerModel, () => TransportHandlerModel.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentSigningDeviceGetTransportHandlerInfoPost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/public/{tenant}/pub/{company}/DocumentSigningDevice/GetTransportHandlerInfo',
    optionalBody: true,
  )
  Future<chopper.Response<TransportHandlerModel>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceGetTransportHandlerInfoPost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required GetTransportHandlerRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<List<TransportHandlerModel>>>
      apiPublicTenantPubCompanyDocumentSigningClientGetTransportHandlersPost({
    required Object? tenant,
    required Object? company,
    required GetTransportHandlersRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        TransportHandlerModel, () => TransportHandlerModel.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentSigningClientGetTransportHandlersPost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/public/{tenant}/pub/{company}/DocumentSigningClient/GetTransportHandlers',
    optionalBody: true,
  )
  Future<chopper.Response<List<TransportHandlerModel>>>
      _apiPublicTenantPubCompanyDocumentSigningClientGetTransportHandlersPost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required GetTransportHandlersRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<List<ClaimDocumentsResponse>>>
      apiPublicTenantPubCompanyDocumentSigningDeviceListDocumentsPost({
    required Object? tenant,
    required Object? company,
    required ListDocuments? body,
  }) {
    generatedMapping.putIfAbsent(
        ClaimDocumentsResponse, () => ClaimDocumentsResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentSigningDeviceListDocumentsPost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/public/{tenant}/pub/{company}/DocumentSigningDevice/ListDocuments',
    optionalBody: true,
  )
  Future<chopper.Response<List<ClaimDocumentsResponse>>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceListDocumentsPost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required ListDocuments? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<RejectDocumentSigningResponse>>
      apiPublicTenantPubCompanyDocumentSigningDeviceRejectDocumentPost({
    required Object? tenant,
    required Object? company,
    required RejectDocumentSigningRequest? body,
  }) {
    generatedMapping.putIfAbsent(RejectDocumentSigningResponse,
        () => RejectDocumentSigningResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentSigningDeviceRejectDocumentPost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/public/{tenant}/pub/{company}/DocumentSigningDevice/RejectDocument',
    optionalBody: true,
  )
  Future<chopper.Response<RejectDocumentSigningResponse>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceRejectDocumentPost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required RejectDocumentSigningRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<DocumentResourceResponse>>
      apiPublicTenantPubCompanyDocumentSigningDeviceRejectDocumentResourcePost({
    required Object? tenant,
    required Object? company,
    required DocumentResourceRequest? body,
  }) {
    generatedMapping.putIfAbsent(DocumentResourceResponse,
        () => DocumentResourceResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentSigningDeviceRejectDocumentResourcePost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/public/{tenant}/pub/{company}/DocumentSigningDevice/RejectDocumentResource',
    optionalBody: true,
  )
  Future<chopper.Response<DocumentResourceResponse>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceRejectDocumentResourcePost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required DocumentResourceRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<RemoveDocumentHandlerResponse>>
      apiPublicTenantPubCompanyDocumentSigningDeviceRemoveDocumentHandlerPost({
    required Object? tenant,
    required Object? company,
    required RemoveDocumentHandlerRequest? body,
  }) {
    generatedMapping.putIfAbsent(RemoveDocumentHandlerResponse,
        () => RemoveDocumentHandlerResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentSigningDeviceRemoveDocumentHandlerPost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/public/{tenant}/pub/{company}/DocumentSigningDevice/RemoveDocumentHandler',
    optionalBody: true,
  )
  Future<chopper.Response<RemoveDocumentHandlerResponse>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceRemoveDocumentHandlerPost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required RemoveDocumentHandlerRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<RemoveDocumentResourceResponse>>
      apiPublicTenantPubCompanyDocumentSigningClientRemoveDocumentResourcePost({
    required Object? tenant,
    required Object? company,
    required RemoveDocumentResourceRequest? body,
  }) {
    generatedMapping.putIfAbsent(RemoveDocumentResourceResponse,
        () => RemoveDocumentResourceResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentSigningClientRemoveDocumentResourcePost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/public/{tenant}/pub/{company}/DocumentSigningClient/RemoveDocumentResource',
    optionalBody: true,
  )
  Future<chopper.Response<RemoveDocumentResourceResponse>>
      _apiPublicTenantPubCompanyDocumentSigningClientRemoveDocumentResourcePost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required RemoveDocumentResourceRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<UndeliverableDocumentSigningResponse>>
      apiPublicTenantPubCompanyDocumentSigningDeviceUndeliverableDocumentPost({
    required Object? tenant,
    required Object? company,
    required UndeliverableDocumentSigningRequest? body,
  }) {
    generatedMapping.putIfAbsent(UndeliverableDocumentSigningResponse,
        () => UndeliverableDocumentSigningResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentSigningDeviceUndeliverableDocumentPost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/public/{tenant}/pub/{company}/DocumentSigningDevice/UndeliverableDocument',
    optionalBody: true,
  )
  Future<chopper.Response<UndeliverableDocumentSigningResponse>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceUndeliverableDocumentPost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required UndeliverableDocumentSigningRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<ClientSignatureResponse>>
      apiPublicTenantPubCompanyDocumentSigningClientUploadAttachmentPost({
    required Object? tenant,
    required Object? company,
    required UploadAttachmentRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        ClientSignatureResponse, () => ClientSignatureResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentSigningClientUploadAttachmentPost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/public/{tenant}/pub/{company}/DocumentSigningClient/UploadAttachment',
    optionalBody: true,
  )
  Future<chopper.Response<ClientSignatureResponse>>
      _apiPublicTenantPubCompanyDocumentSigningClientUploadAttachmentPost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required UploadAttachmentRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<ClientSignatureResponse>>
      apiPublicTenantPubCompanyDocumentSigningDeviceUploadClientSignaturePost({
    required Object? tenant,
    required Object? company,
    required UploadAttachmentRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        ClientSignatureResponse, () => ClientSignatureResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentSigningDeviceUploadClientSignaturePost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/public/{tenant}/pub/{company}/DocumentSigningDevice/UploadClientSignature',
    optionalBody: true,
  )
  Future<chopper.Response<ClientSignatureResponse>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceUploadClientSignaturePost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required UploadAttachmentRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<ClientSignatureResponse>>
      apiPublicTenantPubCompanyDocumentSigningDeviceUploadClientSignatureMultiplePost({
    required Object? tenant,
    required Object? company,
    required UploadAttachmentRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        ClientSignatureResponse, () => ClientSignatureResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentSigningDeviceUploadClientSignatureMultiplePost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/public/{tenant}/pub/{company}/DocumentSigningDevice/UploadClientSignatureMultiple',
    optionalBody: true,
  )
  Future<chopper.Response<ClientSignatureResponse>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceUploadClientSignatureMultiplePost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required UploadAttachmentRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<DocumentSigningUploadResponse>>
      apiPublicTenantPubCompanyDocumentSigningClientUploadDocumentForSigningPost({
    required Object? tenant,
    required Object? company,
    required DocumentSigningUpload? body,
  }) {
    generatedMapping.putIfAbsent(DocumentSigningUploadResponse,
        () => DocumentSigningUploadResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentSigningClientUploadDocumentForSigningPost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/public/{tenant}/pub/{company}/DocumentSigningClient/UploadDocumentForSigning',
    optionalBody: true,
  )
  Future<chopper.Response<DocumentSigningUploadResponse>>
      _apiPublicTenantPubCompanyDocumentSigningClientUploadDocumentForSigningPost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required DocumentSigningUpload? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<ClientSignatureResponse>>
      apiPublicTenantPubCompanyDocumentSigningDeviceUploadDocumentImagePost({
    required Object? tenant,
    required Object? company,
    required UploadAttachmentRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        ClientSignatureResponse, () => ClientSignatureResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentSigningDeviceUploadDocumentImagePost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/public/{tenant}/pub/{company}/DocumentSigningDevice/UploadDocumentImage',
    optionalBody: true,
  )
  Future<chopper.Response<ClientSignatureResponse>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceUploadDocumentImagePost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required UploadAttachmentRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<UploadResourceResponse>>
      apiPublicTenantPubCompanyDocumentSigningClientUploadDocumentResourcePost({
    required Object? tenant,
    required Object? company,
    required UploadResourceRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        UploadResourceResponse, () => UploadResourceResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentSigningClientUploadDocumentResourcePost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/public/{tenant}/pub/{company}/DocumentSigningClient/UploadDocumentResource',
    optionalBody: true,
  )
  Future<chopper.Response<UploadResourceResponse>>
      _apiPublicTenantPubCompanyDocumentSigningClientUploadDocumentResourcePost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required UploadResourceRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<ClientSignatureResponse>>
      apiPublicTenantPubCompanyDocumentSigningDeviceUploadIssuerSignaturePost({
    required Object? tenant,
    required Object? company,
    required UploadAttachmentRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        ClientSignatureResponse, () => ClientSignatureResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentSigningDeviceUploadIssuerSignaturePost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path:
        '/api/public/{tenant}/pub/{company}/DocumentSigningDevice/UploadIssuerSignature',
    optionalBody: true,
  )
  Future<chopper.Response<ClientSignatureResponse>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceUploadIssuerSignaturePost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required UploadAttachmentRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<DocumentMoveResponse>>
      apiPublicTenantPubCompanyDocumentsDocumentMovePost({
    required Object? tenant,
    required Object? company,
    required DocumentMoveRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        DocumentMoveResponse, () => DocumentMoveResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentsDocumentMovePost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path: '/api/public/{tenant}/pub/{company}/Documents/DocumentMove',
    optionalBody: true,
  )
  Future<chopper.Response<DocumentMoveResponse>>
      _apiPublicTenantPubCompanyDocumentsDocumentMovePost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required DocumentMoveRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<DocumentSearchResponse>>
      apiPublicTenantPubCompanyDocumentsDocumentSearchPost({
    required Object? tenant,
    required Object? company,
    required DocumentSearchRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        DocumentSearchResponse, () => DocumentSearchResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentsDocumentSearchPost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path: '/api/public/{tenant}/pub/{company}/Documents/DocumentSearch',
    optionalBody: true,
  )
  Future<chopper.Response<DocumentSearchResponse>>
      _apiPublicTenantPubCompanyDocumentsDocumentSearchPost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required DocumentSearchRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<DocumentMetadataResponse>>
      apiPublicTenantPubCompanyDocumentsDocumentUpdateMetadataPost({
    required Object? tenant,
    required Object? company,
    required DocumentMetadataRequest? body,
  }) {
    generatedMapping.putIfAbsent(DocumentMetadataResponse,
        () => DocumentMetadataResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyDocumentsDocumentUpdateMetadataPost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path: '/api/public/{tenant}/pub/{company}/Documents/DocumentUpdateMetadata',
    optionalBody: true,
  )
  Future<chopper.Response<DocumentMetadataResponse>>
      _apiPublicTenantPubCompanyDocumentsDocumentUpdateMetadataPost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required DocumentMetadataRequest? body,
  });

  ///
  ///@param tenant
  ///@param company
  Future<chopper.Response<DtFormatResponse>>
      apiPublicTenantPubCompanyApiDateTimeConvertPost({
    required Object? tenant,
    required Object? company,
    required DtFormatRequest? body,
  }) {
    generatedMapping.putIfAbsent(
        DtFormatResponse, () => DtFormatResponse.fromJsonFactory);

    return _apiPublicTenantPubCompanyApiDateTimeConvertPost(
        tenant: tenant, company: company, body: body);
  }

  ///
  ///@param tenant
  ///@param company
  @Post(
    path: '/api/public/{tenant}/pub/{company}/Api/DateTimeConvert',
    optionalBody: true,
  )
  Future<chopper.Response<DtFormatResponse>>
      _apiPublicTenantPubCompanyApiDateTimeConvertPost({
    @Path('tenant') required Object? tenant,
    @Path('company') required Object? company,
    @Body() required DtFormatRequest? body,
  });
}

@JsonSerializable(explicitToJson: true)
class TokenRenewRequest {
  TokenRenewRequest({
    required this.token,
    required this.refreshToken,
  });

  factory TokenRenewRequest.fromJson(Map<String, dynamic> json) =>
      _$TokenRenewRequestFromJson(json);

  static const toJsonFactory = _$TokenRenewRequestToJson;
  Map<String, dynamic> toJson() => _$TokenRenewRequestToJson(this);

  @JsonKey(name: 'token', defaultValue: '')
  final String token;
  @JsonKey(name: 'refreshToken', defaultValue: '')
  final String refreshToken;
  static const fromJsonFactory = _$TokenRenewRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TokenRenewRequest &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      runtimeType.hashCode;
}

extension $TokenRenewRequestExtension on TokenRenewRequest {
  TokenRenewRequest copyWith({String? token, String? refreshToken}) {
    return TokenRenewRequest(
        token: token ?? this.token,
        refreshToken: refreshToken ?? this.refreshToken);
  }

  TokenRenewRequest copyWithWrapped(
      {Wrapped<String>? token, Wrapped<String>? refreshToken}) {
    return TokenRenewRequest(
        token: (token != null ? token.value : this.token),
        refreshToken:
            (refreshToken != null ? refreshToken.value : this.refreshToken));
  }
}

@JsonSerializable(explicitToJson: true)
class UserTokenResponseDto {
  UserTokenResponseDto({
    this.token,
    this.userName,
    this.validTo,
    this.refreshToken,
  });

  factory UserTokenResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UserTokenResponseDtoFromJson(json);

  static const toJsonFactory = _$UserTokenResponseDtoToJson;
  Map<String, dynamic> toJson() => _$UserTokenResponseDtoToJson(this);

  @JsonKey(name: 'token', defaultValue: '')
  final String? token;
  @JsonKey(name: 'userName', defaultValue: '')
  final String? userName;
  @JsonKey(name: 'validTo')
  final DateTime? validTo;
  @JsonKey(name: 'refreshToken', defaultValue: '')
  final String? refreshToken;
  static const fromJsonFactory = _$UserTokenResponseDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserTokenResponseDto &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.validTo, validTo) ||
                const DeepCollectionEquality()
                    .equals(other.validTo, validTo)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(validTo) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      runtimeType.hashCode;
}

extension $UserTokenResponseDtoExtension on UserTokenResponseDto {
  UserTokenResponseDto copyWith(
      {String? token,
      String? userName,
      DateTime? validTo,
      String? refreshToken}) {
    return UserTokenResponseDto(
        token: token ?? this.token,
        userName: userName ?? this.userName,
        validTo: validTo ?? this.validTo,
        refreshToken: refreshToken ?? this.refreshToken);
  }

  UserTokenResponseDto copyWithWrapped(
      {Wrapped<String?>? token,
      Wrapped<String?>? userName,
      Wrapped<DateTime?>? validTo,
      Wrapped<String?>? refreshToken}) {
    return UserTokenResponseDto(
        token: (token != null ? token.value : this.token),
        userName: (userName != null ? userName.value : this.userName),
        validTo: (validTo != null ? validTo.value : this.validTo),
        refreshToken:
            (refreshToken != null ? refreshToken.value : this.refreshToken));
  }
}

@JsonSerializable(explicitToJson: true)
class ProblemDetails {
  ProblemDetails({
    this.type,
    this.title,
    this.status,
    this.detail,
    this.instance,
  });

  factory ProblemDetails.fromJson(Map<String, dynamic> json) =>
      _$ProblemDetailsFromJson(json);

  static const toJsonFactory = _$ProblemDetailsToJson;
  Map<String, dynamic> toJson() => _$ProblemDetailsToJson(this);

  @JsonKey(name: 'type', defaultValue: '')
  final String? type;
  @JsonKey(name: 'title', defaultValue: '')
  final String? title;
  @JsonKey(name: 'status', defaultValue: 0)
  final int? status;
  @JsonKey(name: 'detail', defaultValue: '')
  final String? detail;
  @JsonKey(name: 'instance', defaultValue: '')
  final String? instance;
  static const fromJsonFactory = _$ProblemDetailsFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProblemDetails &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.instance, instance) ||
                const DeepCollectionEquality()
                    .equals(other.instance, instance)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(instance) ^
      runtimeType.hashCode;
}

extension $ProblemDetailsExtension on ProblemDetails {
  ProblemDetails copyWith(
      {String? type,
      String? title,
      int? status,
      String? detail,
      String? instance}) {
    return ProblemDetails(
        type: type ?? this.type,
        title: title ?? this.title,
        status: status ?? this.status,
        detail: detail ?? this.detail,
        instance: instance ?? this.instance);
  }

  ProblemDetails copyWithWrapped(
      {Wrapped<String?>? type,
      Wrapped<String?>? title,
      Wrapped<int?>? status,
      Wrapped<String?>? detail,
      Wrapped<String?>? instance}) {
    return ProblemDetails(
        type: (type != null ? type.value : this.type),
        title: (title != null ? title.value : this.title),
        status: (status != null ? status.value : this.status),
        detail: (detail != null ? detail.value : this.detail),
        instance: (instance != null ? instance.value : this.instance));
  }
}

@JsonSerializable(explicitToJson: true)
class AuthenticateDto {
  AuthenticateDto({
    required this.email,
    required this.password,
  });

  factory AuthenticateDto.fromJson(Map<String, dynamic> json) =>
      _$AuthenticateDtoFromJson(json);

  static const toJsonFactory = _$AuthenticateDtoToJson;
  Map<String, dynamic> toJson() => _$AuthenticateDtoToJson(this);

  @JsonKey(name: 'email', defaultValue: '')
  final String email;
  @JsonKey(name: 'password', defaultValue: '')
  final String password;
  static const fromJsonFactory = _$AuthenticateDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthenticateDto &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      runtimeType.hashCode;
}

extension $AuthenticateDtoExtension on AuthenticateDto {
  AuthenticateDto copyWith({String? email, String? password}) {
    return AuthenticateDto(
        email: email ?? this.email, password: password ?? this.password);
  }

  AuthenticateDto copyWithWrapped(
      {Wrapped<String>? email, Wrapped<String>? password}) {
    return AuthenticateDto(
        email: (email != null ? email.value : this.email),
        password: (password != null ? password.value : this.password));
  }
}

@JsonSerializable(explicitToJson: true)
class UserAuthenticationRequestDto {
  UserAuthenticationRequestDto({
    required this.userName,
    this.password,
    this.passwordConfirm,
    this.oldPassword,
  });

  factory UserAuthenticationRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UserAuthenticationRequestDtoFromJson(json);

  static const toJsonFactory = _$UserAuthenticationRequestDtoToJson;
  Map<String, dynamic> toJson() => _$UserAuthenticationRequestDtoToJson(this);

  @JsonKey(name: 'userName', defaultValue: '')
  final String userName;
  @JsonKey(name: 'password', defaultValue: '')
  final String? password;
  @JsonKey(name: 'passwordConfirm', defaultValue: '')
  final String? passwordConfirm;
  @JsonKey(name: 'oldPassword', defaultValue: '')
  final String? oldPassword;
  static const fromJsonFactory = _$UserAuthenticationRequestDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserAuthenticationRequestDto &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.passwordConfirm, passwordConfirm) ||
                const DeepCollectionEquality()
                    .equals(other.passwordConfirm, passwordConfirm)) &&
            (identical(other.oldPassword, oldPassword) ||
                const DeepCollectionEquality()
                    .equals(other.oldPassword, oldPassword)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(passwordConfirm) ^
      const DeepCollectionEquality().hash(oldPassword) ^
      runtimeType.hashCode;
}

extension $UserAuthenticationRequestDtoExtension
    on UserAuthenticationRequestDto {
  UserAuthenticationRequestDto copyWith(
      {String? userName,
      String? password,
      String? passwordConfirm,
      String? oldPassword}) {
    return UserAuthenticationRequestDto(
        userName: userName ?? this.userName,
        password: password ?? this.password,
        passwordConfirm: passwordConfirm ?? this.passwordConfirm,
        oldPassword: oldPassword ?? this.oldPassword);
  }

  UserAuthenticationRequestDto copyWithWrapped(
      {Wrapped<String>? userName,
      Wrapped<String?>? password,
      Wrapped<String?>? passwordConfirm,
      Wrapped<String?>? oldPassword}) {
    return UserAuthenticationRequestDto(
        userName: (userName != null ? userName.value : this.userName),
        password: (password != null ? password.value : this.password),
        passwordConfirm: (passwordConfirm != null
            ? passwordConfirm.value
            : this.passwordConfirm),
        oldPassword:
            (oldPassword != null ? oldPassword.value : this.oldPassword));
  }
}

@JsonSerializable(explicitToJson: true)
class UserAuthenticationResponseDto {
  UserAuthenticationResponseDto({
    required this.userName,
    this.message,
    this.findStatus,
  });

  factory UserAuthenticationResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UserAuthenticationResponseDtoFromJson(json);

  static const toJsonFactory = _$UserAuthenticationResponseDtoToJson;
  Map<String, dynamic> toJson() => _$UserAuthenticationResponseDtoToJson(this);

  @JsonKey(name: 'userName', defaultValue: '')
  final String userName;
  @JsonKey(name: 'message', defaultValue: '')
  final String? message;
  @JsonKey(
    name: 'findStatus',
    toJson: userFindStatusToJson,
    fromJson: userFindStatusFromJson,
  )
  final enums.UserFindStatus? findStatus;
  static const fromJsonFactory = _$UserAuthenticationResponseDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserAuthenticationResponseDto &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.findStatus, findStatus) ||
                const DeepCollectionEquality()
                    .equals(other.findStatus, findStatus)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(findStatus) ^
      runtimeType.hashCode;
}

extension $UserAuthenticationResponseDtoExtension
    on UserAuthenticationResponseDto {
  UserAuthenticationResponseDto copyWith(
      {String? userName, String? message, enums.UserFindStatus? findStatus}) {
    return UserAuthenticationResponseDto(
        userName: userName ?? this.userName,
        message: message ?? this.message,
        findStatus: findStatus ?? this.findStatus);
  }

  UserAuthenticationResponseDto copyWithWrapped(
      {Wrapped<String>? userName,
      Wrapped<String?>? message,
      Wrapped<enums.UserFindStatus?>? findStatus}) {
    return UserAuthenticationResponseDto(
        userName: (userName != null ? userName.value : this.userName),
        message: (message != null ? message.value : this.message),
        findStatus: (findStatus != null ? findStatus.value : this.findStatus));
  }
}

@JsonSerializable(explicitToJson: true)
class UserResetPasswordRequestDto {
  UserResetPasswordRequestDto({
    required this.userName,
    required this.password,
    required this.token,
  });

  factory UserResetPasswordRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UserResetPasswordRequestDtoFromJson(json);

  static const toJsonFactory = _$UserResetPasswordRequestDtoToJson;
  Map<String, dynamic> toJson() => _$UserResetPasswordRequestDtoToJson(this);

  @JsonKey(name: 'userName', defaultValue: '')
  final String userName;
  @JsonKey(name: 'password', defaultValue: '')
  final String password;
  @JsonKey(name: 'token', defaultValue: '')
  final String token;
  static const fromJsonFactory = _$UserResetPasswordRequestDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserResetPasswordRequestDto &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(token) ^
      runtimeType.hashCode;
}

extension $UserResetPasswordRequestDtoExtension on UserResetPasswordRequestDto {
  UserResetPasswordRequestDto copyWith(
      {String? userName, String? password, String? token}) {
    return UserResetPasswordRequestDto(
        userName: userName ?? this.userName,
        password: password ?? this.password,
        token: token ?? this.token);
  }

  UserResetPasswordRequestDto copyWithWrapped(
      {Wrapped<String>? userName,
      Wrapped<String>? password,
      Wrapped<String>? token}) {
    return UserResetPasswordRequestDto(
        userName: (userName != null ? userName.value : this.userName),
        password: (password != null ? password.value : this.password),
        token: (token != null ? token.value : this.token));
  }
}

@JsonSerializable(explicitToJson: true)
class UserResetPasswordResponseDto {
  UserResetPasswordResponseDto({
    required this.userName,
    required this.status,
  });

  factory UserResetPasswordResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UserResetPasswordResponseDtoFromJson(json);

  static const toJsonFactory = _$UserResetPasswordResponseDtoToJson;
  Map<String, dynamic> toJson() => _$UserResetPasswordResponseDtoToJson(this);

  @JsonKey(name: 'userName', defaultValue: '')
  final String userName;
  @JsonKey(name: 'status')
  final bool status;
  static const fromJsonFactory = _$UserResetPasswordResponseDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserResetPasswordResponseDto &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $UserResetPasswordResponseDtoExtension
    on UserResetPasswordResponseDto {
  UserResetPasswordResponseDto copyWith({String? userName, bool? status}) {
    return UserResetPasswordResponseDto(
        userName: userName ?? this.userName, status: status ?? this.status);
  }

  UserResetPasswordResponseDto copyWithWrapped(
      {Wrapped<String>? userName, Wrapped<bool>? status}) {
    return UserResetPasswordResponseDto(
        userName: (userName != null ? userName.value : this.userName),
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class UserGenerateTokenRequestDto {
  UserGenerateTokenRequestDto({
    required this.userName,
  });

  factory UserGenerateTokenRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UserGenerateTokenRequestDtoFromJson(json);

  static const toJsonFactory = _$UserGenerateTokenRequestDtoToJson;
  Map<String, dynamic> toJson() => _$UserGenerateTokenRequestDtoToJson(this);

  @JsonKey(name: 'userName', defaultValue: '')
  final String userName;
  static const fromJsonFactory = _$UserGenerateTokenRequestDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserGenerateTokenRequestDto &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userName) ^ runtimeType.hashCode;
}

extension $UserGenerateTokenRequestDtoExtension on UserGenerateTokenRequestDto {
  UserGenerateTokenRequestDto copyWith({String? userName}) {
    return UserGenerateTokenRequestDto(userName: userName ?? this.userName);
  }

  UserGenerateTokenRequestDto copyWithWrapped({Wrapped<String>? userName}) {
    return UserGenerateTokenRequestDto(
        userName: (userName != null ? userName.value : this.userName));
  }
}

@JsonSerializable(explicitToJson: true)
class UserGenerateTokenResponseDto {
  UserGenerateTokenResponseDto({
    this.status,
  });

  factory UserGenerateTokenResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UserGenerateTokenResponseDtoFromJson(json);

  static const toJsonFactory = _$UserGenerateTokenResponseDtoToJson;
  Map<String, dynamic> toJson() => _$UserGenerateTokenResponseDtoToJson(this);

  @JsonKey(name: 'status')
  final bool? status;
  static const fromJsonFactory = _$UserGenerateTokenResponseDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserGenerateTokenResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^ runtimeType.hashCode;
}

extension $UserGenerateTokenResponseDtoExtension
    on UserGenerateTokenResponseDto {
  UserGenerateTokenResponseDto copyWith({bool? status}) {
    return UserGenerateTokenResponseDto(status: status ?? this.status);
  }

  UserGenerateTokenResponseDto copyWithWrapped({Wrapped<bool?>? status}) {
    return UserGenerateTokenResponseDto(
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class UserFindRequestDto {
  UserFindRequestDto({
    required this.userName,
  });

  factory UserFindRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UserFindRequestDtoFromJson(json);

  static const toJsonFactory = _$UserFindRequestDtoToJson;
  Map<String, dynamic> toJson() => _$UserFindRequestDtoToJson(this);

  @JsonKey(name: 'userName', defaultValue: '')
  final String userName;
  static const fromJsonFactory = _$UserFindRequestDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserFindRequestDto &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userName) ^ runtimeType.hashCode;
}

extension $UserFindRequestDtoExtension on UserFindRequestDto {
  UserFindRequestDto copyWith({String? userName}) {
    return UserFindRequestDto(userName: userName ?? this.userName);
  }

  UserFindRequestDto copyWithWrapped({Wrapped<String>? userName}) {
    return UserFindRequestDto(
        userName: (userName != null ? userName.value : this.userName));
  }
}

@JsonSerializable(explicitToJson: true)
class UserFindResponseDto {
  UserFindResponseDto({
    this.id,
    this.userName,
    this.email,
    this.active,
    this.findStatus,
  });

  factory UserFindResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UserFindResponseDtoFromJson(json);

  static const toJsonFactory = _$UserFindResponseDtoToJson;
  Map<String, dynamic> toJson() => _$UserFindResponseDtoToJson(this);

  @JsonKey(name: 'id', defaultValue: '')
  final String? id;
  @JsonKey(name: 'userName', defaultValue: '')
  final String? userName;
  @JsonKey(name: 'email', defaultValue: '')
  final String? email;
  @JsonKey(name: 'active')
  final bool? active;
  @JsonKey(
    name: 'findStatus',
    toJson: userFindStatusToJson,
    fromJson: userFindStatusFromJson,
  )
  final enums.UserFindStatus? findStatus;
  static const fromJsonFactory = _$UserFindResponseDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserFindResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)) &&
            (identical(other.findStatus, findStatus) ||
                const DeepCollectionEquality()
                    .equals(other.findStatus, findStatus)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(active) ^
      const DeepCollectionEquality().hash(findStatus) ^
      runtimeType.hashCode;
}

extension $UserFindResponseDtoExtension on UserFindResponseDto {
  UserFindResponseDto copyWith(
      {String? id,
      String? userName,
      String? email,
      bool? active,
      enums.UserFindStatus? findStatus}) {
    return UserFindResponseDto(
        id: id ?? this.id,
        userName: userName ?? this.userName,
        email: email ?? this.email,
        active: active ?? this.active,
        findStatus: findStatus ?? this.findStatus);
  }

  UserFindResponseDto copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? userName,
      Wrapped<String?>? email,
      Wrapped<bool?>? active,
      Wrapped<enums.UserFindStatus?>? findStatus}) {
    return UserFindResponseDto(
        id: (id != null ? id.value : this.id),
        userName: (userName != null ? userName.value : this.userName),
        email: (email != null ? email.value : this.email),
        active: (active != null ? active.value : this.active),
        findStatus: (findStatus != null ? findStatus.value : this.findStatus));
  }
}

@JsonSerializable(explicitToJson: true)
class AddDocumentHandlerRequest {
  AddDocumentHandlerRequest({
    this.documentId,
    this.transportHandlerId,
    this.issuerId,
  });

  factory AddDocumentHandlerRequest.fromJson(Map<String, dynamic> json) =>
      _$AddDocumentHandlerRequestFromJson(json);

  static const toJsonFactory = _$AddDocumentHandlerRequestToJson;
  Map<String, dynamic> toJson() => _$AddDocumentHandlerRequestToJson(this);

  @JsonKey(name: 'documentId', defaultValue: '')
  final String? documentId;
  @JsonKey(name: 'transportHandlerId', defaultValue: '')
  final String? transportHandlerId;
  @JsonKey(name: 'issuerId', defaultValue: '')
  final String? issuerId;
  static const fromJsonFactory = _$AddDocumentHandlerRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddDocumentHandlerRequest &&
            (identical(other.documentId, documentId) ||
                const DeepCollectionEquality()
                    .equals(other.documentId, documentId)) &&
            (identical(other.transportHandlerId, transportHandlerId) ||
                const DeepCollectionEquality()
                    .equals(other.transportHandlerId, transportHandlerId)) &&
            (identical(other.issuerId, issuerId) ||
                const DeepCollectionEquality()
                    .equals(other.issuerId, issuerId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(documentId) ^
      const DeepCollectionEquality().hash(transportHandlerId) ^
      const DeepCollectionEquality().hash(issuerId) ^
      runtimeType.hashCode;
}

extension $AddDocumentHandlerRequestExtension on AddDocumentHandlerRequest {
  AddDocumentHandlerRequest copyWith(
      {String? documentId, String? transportHandlerId, String? issuerId}) {
    return AddDocumentHandlerRequest(
        documentId: documentId ?? this.documentId,
        transportHandlerId: transportHandlerId ?? this.transportHandlerId,
        issuerId: issuerId ?? this.issuerId);
  }

  AddDocumentHandlerRequest copyWithWrapped(
      {Wrapped<String?>? documentId,
      Wrapped<String?>? transportHandlerId,
      Wrapped<String?>? issuerId}) {
    return AddDocumentHandlerRequest(
        documentId: (documentId != null ? documentId.value : this.documentId),
        transportHandlerId: (transportHandlerId != null
            ? transportHandlerId.value
            : this.transportHandlerId),
        issuerId: (issuerId != null ? issuerId.value : this.issuerId));
  }
}

@JsonSerializable(explicitToJson: true)
class AddDocumentHandlerResponse {
  AddDocumentHandlerResponse({
    this.status,
    this.message,
  });

  factory AddDocumentHandlerResponse.fromJson(Map<String, dynamic> json) =>
      _$AddDocumentHandlerResponseFromJson(json);

  static const toJsonFactory = _$AddDocumentHandlerResponseToJson;
  Map<String, dynamic> toJson() => _$AddDocumentHandlerResponseToJson(this);

  @JsonKey(name: 'status')
  final bool? status;
  @JsonKey(name: 'message', defaultValue: '')
  final String? message;
  static const fromJsonFactory = _$AddDocumentHandlerResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddDocumentHandlerResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $AddDocumentHandlerResponseExtension on AddDocumentHandlerResponse {
  AddDocumentHandlerResponse copyWith({bool? status, String? message}) {
    return AddDocumentHandlerResponse(
        status: status ?? this.status, message: message ?? this.message);
  }

  AddDocumentHandlerResponse copyWithWrapped(
      {Wrapped<bool?>? status, Wrapped<String?>? message}) {
    return AddDocumentHandlerResponse(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class AuthorizeTransportHandlerRequest {
  AuthorizeTransportHandlerRequest({
    required this.id,
    required this.deviceId,
  });

  factory AuthorizeTransportHandlerRequest.fromJson(
          Map<String, dynamic> json) =>
      _$AuthorizeTransportHandlerRequestFromJson(json);

  static const toJsonFactory = _$AuthorizeTransportHandlerRequestToJson;
  Map<String, dynamic> toJson() =>
      _$AuthorizeTransportHandlerRequestToJson(this);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'deviceId', defaultValue: '')
  final String deviceId;
  static const fromJsonFactory = _$AuthorizeTransportHandlerRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthorizeTransportHandlerRequest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(deviceId) ^
      runtimeType.hashCode;
}

extension $AuthorizeTransportHandlerRequestExtension
    on AuthorizeTransportHandlerRequest {
  AuthorizeTransportHandlerRequest copyWith({String? id, String? deviceId}) {
    return AuthorizeTransportHandlerRequest(
        id: id ?? this.id, deviceId: deviceId ?? this.deviceId);
  }

  AuthorizeTransportHandlerRequest copyWithWrapped(
      {Wrapped<String>? id, Wrapped<String>? deviceId}) {
    return AuthorizeTransportHandlerRequest(
        id: (id != null ? id.value : this.id),
        deviceId: (deviceId != null ? deviceId.value : this.deviceId));
  }
}

@JsonSerializable(explicitToJson: true)
class AuthorizeTransportHandlerResponse {
  AuthorizeTransportHandlerResponse({
    this.status,
    this.message,
    this.token,
    this.expires,
  });

  factory AuthorizeTransportHandlerResponse.fromJson(
          Map<String, dynamic> json) =>
      _$AuthorizeTransportHandlerResponseFromJson(json);

  static const toJsonFactory = _$AuthorizeTransportHandlerResponseToJson;
  Map<String, dynamic> toJson() =>
      _$AuthorizeTransportHandlerResponseToJson(this);

  @JsonKey(name: 'status')
  final bool? status;
  @JsonKey(name: 'message', defaultValue: '')
  final String? message;
  @JsonKey(name: 'token', defaultValue: '')
  final String? token;
  @JsonKey(name: 'expires')
  final DateTime? expires;
  static const fromJsonFactory = _$AuthorizeTransportHandlerResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthorizeTransportHandlerResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.expires, expires) ||
                const DeepCollectionEquality().equals(other.expires, expires)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(expires) ^
      runtimeType.hashCode;
}

extension $AuthorizeTransportHandlerResponseExtension
    on AuthorizeTransportHandlerResponse {
  AuthorizeTransportHandlerResponse copyWith(
      {bool? status, String? message, String? token, DateTime? expires}) {
    return AuthorizeTransportHandlerResponse(
        status: status ?? this.status,
        message: message ?? this.message,
        token: token ?? this.token,
        expires: expires ?? this.expires);
  }

  AuthorizeTransportHandlerResponse copyWithWrapped(
      {Wrapped<bool?>? status,
      Wrapped<String?>? message,
      Wrapped<String?>? token,
      Wrapped<DateTime?>? expires}) {
    return AuthorizeTransportHandlerResponse(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message),
        token: (token != null ? token.value : this.token),
        expires: (expires != null ? expires.value : this.expires));
  }
}

@JsonSerializable(explicitToJson: true)
class ClaimDocumentsRequest {
  ClaimDocumentsRequest({
    this.token,
  });

  factory ClaimDocumentsRequest.fromJson(Map<String, dynamic> json) =>
      _$ClaimDocumentsRequestFromJson(json);

  static const toJsonFactory = _$ClaimDocumentsRequestToJson;
  Map<String, dynamic> toJson() => _$ClaimDocumentsRequestToJson(this);

  @JsonKey(name: 'token', defaultValue: '')
  final String? token;
  static const fromJsonFactory = _$ClaimDocumentsRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClaimDocumentsRequest &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(token) ^ runtimeType.hashCode;
}

extension $ClaimDocumentsRequestExtension on ClaimDocumentsRequest {
  ClaimDocumentsRequest copyWith({String? token}) {
    return ClaimDocumentsRequest(token: token ?? this.token);
  }

  ClaimDocumentsRequest copyWithWrapped({Wrapped<String?>? token}) {
    return ClaimDocumentsRequest(
        token: (token != null ? token.value : this.token));
  }
}

@JsonSerializable(explicitToJson: true)
class Document {
  Document({
    this.id,
    this.name,
    this.key,
  });

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);

  static const toJsonFactory = _$DocumentToJson;
  Map<String, dynamic> toJson() => _$DocumentToJson(this);

  @JsonKey(name: 'id', defaultValue: '')
  final String? id;
  @JsonKey(name: 'name', defaultValue: '')
  final String? name;
  @JsonKey(name: 'key', defaultValue: '')
  final String? key;
  static const fromJsonFactory = _$DocumentFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Document &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(key) ^
      runtimeType.hashCode;
}

extension $DocumentExtension on Document {
  Document copyWith({String? id, String? name, String? key}) {
    return Document(
        id: id ?? this.id, name: name ?? this.name, key: key ?? this.key);
  }

  Document copyWithWrapped(
      {Wrapped<String?>? id, Wrapped<String?>? name, Wrapped<String?>? key}) {
    return Document(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        key: (key != null ? key.value : this.key));
  }
}

@JsonSerializable(explicitToJson: true)
class SigningDocumentAttachment {
  SigningDocumentAttachment({
    this.attachmentType,
    this.attachment,
    this.created,
    this.entityIdentifier,
    this.entity,
    this.key,
  });

  factory SigningDocumentAttachment.fromJson(Map<String, dynamic> json) =>
      _$SigningDocumentAttachmentFromJson(json);

  static const toJsonFactory = _$SigningDocumentAttachmentToJson;
  Map<String, dynamic> toJson() => _$SigningDocumentAttachmentToJson(this);

  @JsonKey(
    name: 'attachmentType',
    toJson: attachmentTypeToJson,
    fromJson: attachmentTypeFromJson,
  )
  final enums.AttachmentType? attachmentType;
  @JsonKey(name: 'attachment')
  final Document? attachment;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'entityIdentifier', defaultValue: '')
  final String? entityIdentifier;
  @JsonKey(name: 'entity', defaultValue: '')
  final String? entity;
  @JsonKey(name: 'key', defaultValue: '')
  final String? key;
  static const fromJsonFactory = _$SigningDocumentAttachmentFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SigningDocumentAttachment &&
            (identical(other.attachmentType, attachmentType) ||
                const DeepCollectionEquality()
                    .equals(other.attachmentType, attachmentType)) &&
            (identical(other.attachment, attachment) ||
                const DeepCollectionEquality()
                    .equals(other.attachment, attachment)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.entityIdentifier, entityIdentifier) ||
                const DeepCollectionEquality()
                    .equals(other.entityIdentifier, entityIdentifier)) &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(attachmentType) ^
      const DeepCollectionEquality().hash(attachment) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(entityIdentifier) ^
      const DeepCollectionEquality().hash(entity) ^
      const DeepCollectionEquality().hash(key) ^
      runtimeType.hashCode;
}

extension $SigningDocumentAttachmentExtension on SigningDocumentAttachment {
  SigningDocumentAttachment copyWith(
      {enums.AttachmentType? attachmentType,
      Document? attachment,
      DateTime? created,
      String? entityIdentifier,
      String? entity,
      String? key}) {
    return SigningDocumentAttachment(
        attachmentType: attachmentType ?? this.attachmentType,
        attachment: attachment ?? this.attachment,
        created: created ?? this.created,
        entityIdentifier: entityIdentifier ?? this.entityIdentifier,
        entity: entity ?? this.entity,
        key: key ?? this.key);
  }

  SigningDocumentAttachment copyWithWrapped(
      {Wrapped<enums.AttachmentType?>? attachmentType,
      Wrapped<Document?>? attachment,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? entityIdentifier,
      Wrapped<String?>? entity,
      Wrapped<String?>? key}) {
    return SigningDocumentAttachment(
        attachmentType: (attachmentType != null
            ? attachmentType.value
            : this.attachmentType),
        attachment: (attachment != null ? attachment.value : this.attachment),
        created: (created != null ? created.value : this.created),
        entityIdentifier: (entityIdentifier != null
            ? entityIdentifier.value
            : this.entityIdentifier),
        entity: (entity != null ? entity.value : this.entity),
        key: (key != null ? key.value : this.key));
  }
}

@JsonSerializable(explicitToJson: true)
class SigningDocumentResource {
  SigningDocumentResource({
    required this.id,
    this.documentId,
    this.signatoryName,
    this.signatoryPhoneNo,
    this.signatoryEmail,
    this.signatoryCountry,
    this.signatoryPostCode,
    this.signatoryCity,
    this.signatoryAddress,
    this.confirmed,
    this.rejected,
    this.created,
    this.externalResourceId,
    this.externalDocumentId,
    this.key,
  });

  factory SigningDocumentResource.fromJson(Map<String, dynamic> json) =>
      _$SigningDocumentResourceFromJson(json);

  static const toJsonFactory = _$SigningDocumentResourceToJson;
  Map<String, dynamic> toJson() => _$SigningDocumentResourceToJson(this);

  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @JsonKey(name: 'documentId', defaultValue: '')
  final String? documentId;
  @JsonKey(name: 'signatoryName', defaultValue: '')
  final String? signatoryName;
  @JsonKey(name: 'signatoryPhoneNo', defaultValue: '')
  final String? signatoryPhoneNo;
  @JsonKey(name: 'signatoryEmail', defaultValue: '')
  final String? signatoryEmail;
  @JsonKey(name: 'signatoryCountry', defaultValue: '')
  final String? signatoryCountry;
  @JsonKey(name: 'signatoryPostCode', defaultValue: '')
  final String? signatoryPostCode;
  @JsonKey(name: 'signatoryCity', defaultValue: '')
  final String? signatoryCity;
  @JsonKey(name: 'signatoryAddress', defaultValue: '')
  final String? signatoryAddress;
  @JsonKey(name: 'confirmed')
  final bool? confirmed;
  @JsonKey(name: 'rejected')
  final bool? rejected;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'externalResourceId', defaultValue: '')
  final String? externalResourceId;
  @JsonKey(name: 'externalDocumentId', defaultValue: '')
  final String? externalDocumentId;
  @JsonKey(name: 'key', defaultValue: '')
  final String? key;
  static const fromJsonFactory = _$SigningDocumentResourceFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SigningDocumentResource &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.documentId, documentId) ||
                const DeepCollectionEquality()
                    .equals(other.documentId, documentId)) &&
            (identical(other.signatoryName, signatoryName) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryName, signatoryName)) &&
            (identical(other.signatoryPhoneNo, signatoryPhoneNo) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryPhoneNo, signatoryPhoneNo)) &&
            (identical(other.signatoryEmail, signatoryEmail) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryEmail, signatoryEmail)) &&
            (identical(other.signatoryCountry, signatoryCountry) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryCountry, signatoryCountry)) &&
            (identical(other.signatoryPostCode, signatoryPostCode) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryPostCode, signatoryPostCode)) &&
            (identical(other.signatoryCity, signatoryCity) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryCity, signatoryCity)) &&
            (identical(other.signatoryAddress, signatoryAddress) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryAddress, signatoryAddress)) &&
            (identical(other.confirmed, confirmed) ||
                const DeepCollectionEquality()
                    .equals(other.confirmed, confirmed)) &&
            (identical(other.rejected, rejected) ||
                const DeepCollectionEquality()
                    .equals(other.rejected, rejected)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.externalResourceId, externalResourceId) ||
                const DeepCollectionEquality()
                    .equals(other.externalResourceId, externalResourceId)) &&
            (identical(other.externalDocumentId, externalDocumentId) ||
                const DeepCollectionEquality()
                    .equals(other.externalDocumentId, externalDocumentId)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(documentId) ^
      const DeepCollectionEquality().hash(signatoryName) ^
      const DeepCollectionEquality().hash(signatoryPhoneNo) ^
      const DeepCollectionEquality().hash(signatoryEmail) ^
      const DeepCollectionEquality().hash(signatoryCountry) ^
      const DeepCollectionEquality().hash(signatoryPostCode) ^
      const DeepCollectionEquality().hash(signatoryCity) ^
      const DeepCollectionEquality().hash(signatoryAddress) ^
      const DeepCollectionEquality().hash(confirmed) ^
      const DeepCollectionEquality().hash(rejected) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(externalResourceId) ^
      const DeepCollectionEquality().hash(externalDocumentId) ^
      const DeepCollectionEquality().hash(key) ^
      runtimeType.hashCode;
}

extension $SigningDocumentResourceExtension on SigningDocumentResource {
  SigningDocumentResource copyWith(
      {String? id,
      String? documentId,
      String? signatoryName,
      String? signatoryPhoneNo,
      String? signatoryEmail,
      String? signatoryCountry,
      String? signatoryPostCode,
      String? signatoryCity,
      String? signatoryAddress,
      bool? confirmed,
      bool? rejected,
      DateTime? created,
      String? externalResourceId,
      String? externalDocumentId,
      String? key}) {
    return SigningDocumentResource(
        id: id ?? this.id,
        documentId: documentId ?? this.documentId,
        signatoryName: signatoryName ?? this.signatoryName,
        signatoryPhoneNo: signatoryPhoneNo ?? this.signatoryPhoneNo,
        signatoryEmail: signatoryEmail ?? this.signatoryEmail,
        signatoryCountry: signatoryCountry ?? this.signatoryCountry,
        signatoryPostCode: signatoryPostCode ?? this.signatoryPostCode,
        signatoryCity: signatoryCity ?? this.signatoryCity,
        signatoryAddress: signatoryAddress ?? this.signatoryAddress,
        confirmed: confirmed ?? this.confirmed,
        rejected: rejected ?? this.rejected,
        created: created ?? this.created,
        externalResourceId: externalResourceId ?? this.externalResourceId,
        externalDocumentId: externalDocumentId ?? this.externalDocumentId,
        key: key ?? this.key);
  }

  SigningDocumentResource copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String?>? documentId,
      Wrapped<String?>? signatoryName,
      Wrapped<String?>? signatoryPhoneNo,
      Wrapped<String?>? signatoryEmail,
      Wrapped<String?>? signatoryCountry,
      Wrapped<String?>? signatoryPostCode,
      Wrapped<String?>? signatoryCity,
      Wrapped<String?>? signatoryAddress,
      Wrapped<bool?>? confirmed,
      Wrapped<bool?>? rejected,
      Wrapped<DateTime?>? created,
      Wrapped<String?>? externalResourceId,
      Wrapped<String?>? externalDocumentId,
      Wrapped<String?>? key}) {
    return SigningDocumentResource(
        id: (id != null ? id.value : this.id),
        documentId: (documentId != null ? documentId.value : this.documentId),
        signatoryName:
            (signatoryName != null ? signatoryName.value : this.signatoryName),
        signatoryPhoneNo: (signatoryPhoneNo != null
            ? signatoryPhoneNo.value
            : this.signatoryPhoneNo),
        signatoryEmail: (signatoryEmail != null
            ? signatoryEmail.value
            : this.signatoryEmail),
        signatoryCountry: (signatoryCountry != null
            ? signatoryCountry.value
            : this.signatoryCountry),
        signatoryPostCode: (signatoryPostCode != null
            ? signatoryPostCode.value
            : this.signatoryPostCode),
        signatoryCity:
            (signatoryCity != null ? signatoryCity.value : this.signatoryCity),
        signatoryAddress: (signatoryAddress != null
            ? signatoryAddress.value
            : this.signatoryAddress),
        confirmed: (confirmed != null ? confirmed.value : this.confirmed),
        rejected: (rejected != null ? rejected.value : this.rejected),
        created: (created != null ? created.value : this.created),
        externalResourceId: (externalResourceId != null
            ? externalResourceId.value
            : this.externalResourceId),
        externalDocumentId: (externalDocumentId != null
            ? externalDocumentId.value
            : this.externalDocumentId),
        key: (key != null ? key.value : this.key));
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentInteraction {
  DocumentInteraction({
    this.date,
    this.description,
    this.type,
    this.id,
    this.longitude,
    this.latitude,
    this.additionalData,
    this.key,
  });

  factory DocumentInteraction.fromJson(Map<String, dynamic> json) =>
      _$DocumentInteractionFromJson(json);

  static const toJsonFactory = _$DocumentInteractionToJson;
  Map<String, dynamic> toJson() => _$DocumentInteractionToJson(this);

  @JsonKey(name: 'date')
  final DateTime? date;
  @JsonKey(name: 'description', defaultValue: '')
  final String? description;
  @JsonKey(name: 'type', defaultValue: '')
  final String? type;
  @JsonKey(name: 'id', defaultValue: '')
  final String? id;
  @JsonKey(name: 'longitude')
  final double? longitude;
  @JsonKey(name: 'latitude')
  final double? latitude;
  @JsonKey(name: 'additionalData')
  final Map<String, dynamic>? additionalData;
  @JsonKey(name: 'key', defaultValue: '')
  final String? key;
  static const fromJsonFactory = _$DocumentInteractionFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentInteraction &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.additionalData, additionalData) ||
                const DeepCollectionEquality()
                    .equals(other.additionalData, additionalData)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(additionalData) ^
      const DeepCollectionEquality().hash(key) ^
      runtimeType.hashCode;
}

extension $DocumentInteractionExtension on DocumentInteraction {
  DocumentInteraction copyWith(
      {DateTime? date,
      String? description,
      String? type,
      String? id,
      double? longitude,
      double? latitude,
      Map<String, dynamic>? additionalData,
      String? key}) {
    return DocumentInteraction(
        date: date ?? this.date,
        description: description ?? this.description,
        type: type ?? this.type,
        id: id ?? this.id,
        longitude: longitude ?? this.longitude,
        latitude: latitude ?? this.latitude,
        additionalData: additionalData ?? this.additionalData,
        key: key ?? this.key);
  }

  DocumentInteraction copyWithWrapped(
      {Wrapped<DateTime?>? date,
      Wrapped<String?>? description,
      Wrapped<String?>? type,
      Wrapped<String?>? id,
      Wrapped<double?>? longitude,
      Wrapped<double?>? latitude,
      Wrapped<Map<String, dynamic>?>? additionalData,
      Wrapped<String?>? key}) {
    return DocumentInteraction(
        date: (date != null ? date.value : this.date),
        description:
            (description != null ? description.value : this.description),
        type: (type != null ? type.value : this.type),
        id: (id != null ? id.value : this.id),
        longitude: (longitude != null ? longitude.value : this.longitude),
        latitude: (latitude != null ? latitude.value : this.latitude),
        additionalData: (additionalData != null
            ? additionalData.value
            : this.additionalData),
        key: (key != null ? key.value : this.key));
  }
}

@JsonSerializable(explicitToJson: true)
class ClaimDocumentsResponse {
  ClaimDocumentsResponse({
    this.id,
    this.documentSigningRequestId,
    this.signatoryName,
    this.signatoryPhoneNo,
    this.signatoryEmail,
    this.signatoryCountry,
    this.signatoryPostCode,
    this.signatoryCity,
    this.signatoryAddress,
    this.attachments,
    this.resources,
    this.interactions,
    this.status,
    this.externalDocumentId,
    this.undeliveredReason,
    this.numberOfRejectedImages,
    this.issuerId,
  });

  factory ClaimDocumentsResponse.fromJson(Map<String, dynamic> json) =>
      _$ClaimDocumentsResponseFromJson(json);

  static const toJsonFactory = _$ClaimDocumentsResponseToJson;
  Map<String, dynamic> toJson() => _$ClaimDocumentsResponseToJson(this);

  @JsonKey(name: 'id', defaultValue: '')
  final String? id;
  @JsonKey(name: 'documentSigningRequestId', defaultValue: '')
  final String? documentSigningRequestId;
  @JsonKey(name: 'signatoryName', defaultValue: '')
  final String? signatoryName;
  @JsonKey(name: 'signatoryPhoneNo', defaultValue: '')
  final String? signatoryPhoneNo;
  @JsonKey(name: 'signatoryEmail', defaultValue: '')
  final String? signatoryEmail;
  @JsonKey(name: 'signatoryCountry', defaultValue: '')
  final String? signatoryCountry;
  @JsonKey(name: 'signatoryPostCode', defaultValue: '')
  final String? signatoryPostCode;
  @JsonKey(name: 'signatoryCity', defaultValue: '')
  final String? signatoryCity;
  @JsonKey(name: 'signatoryAddress', defaultValue: '')
  final String? signatoryAddress;
  @JsonKey(name: 'attachments', defaultValue: <SigningDocumentAttachment>[])
  final List<SigningDocumentAttachment>? attachments;
  @JsonKey(name: 'resources', defaultValue: <SigningDocumentResource>[])
  final List<SigningDocumentResource>? resources;
  @JsonKey(name: 'interactions', defaultValue: <DocumentInteraction>[])
  final List<DocumentInteraction>? interactions;
  @JsonKey(
    name: 'status',
    toJson: documentStatusToJson,
    fromJson: documentStatusFromJson,
  )
  final enums.DocumentStatus? status;
  @JsonKey(name: 'externalDocumentId', defaultValue: '')
  final String? externalDocumentId;
  @JsonKey(name: 'undeliveredReason', defaultValue: '')
  final String? undeliveredReason;
  @JsonKey(name: 'numberOfRejectedImages', defaultValue: 0)
  final int? numberOfRejectedImages;
  @JsonKey(name: 'issuerId', defaultValue: '')
  final String? issuerId;
  static const fromJsonFactory = _$ClaimDocumentsResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClaimDocumentsResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.documentSigningRequestId, documentSigningRequestId) ||
                const DeepCollectionEquality().equals(
                    other.documentSigningRequestId,
                    documentSigningRequestId)) &&
            (identical(other.signatoryName, signatoryName) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryName, signatoryName)) &&
            (identical(other.signatoryPhoneNo, signatoryPhoneNo) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryPhoneNo, signatoryPhoneNo)) &&
            (identical(other.signatoryEmail, signatoryEmail) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryEmail, signatoryEmail)) &&
            (identical(other.signatoryCountry, signatoryCountry) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryCountry, signatoryCountry)) &&
            (identical(other.signatoryPostCode, signatoryPostCode) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryPostCode, signatoryPostCode)) &&
            (identical(other.signatoryCity, signatoryCity) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryCity, signatoryCity)) &&
            (identical(other.signatoryAddress, signatoryAddress) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryAddress, signatoryAddress)) &&
            (identical(other.attachments, attachments) ||
                const DeepCollectionEquality()
                    .equals(other.attachments, attachments)) &&
            (identical(other.resources, resources) ||
                const DeepCollectionEquality()
                    .equals(other.resources, resources)) &&
            (identical(other.interactions, interactions) ||
                const DeepCollectionEquality()
                    .equals(other.interactions, interactions)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.externalDocumentId, externalDocumentId) ||
                const DeepCollectionEquality()
                    .equals(other.externalDocumentId, externalDocumentId)) &&
            (identical(other.undeliveredReason, undeliveredReason) ||
                const DeepCollectionEquality()
                    .equals(other.undeliveredReason, undeliveredReason)) &&
            (identical(other.numberOfRejectedImages, numberOfRejectedImages) ||
                const DeepCollectionEquality().equals(
                    other.numberOfRejectedImages, numberOfRejectedImages)) &&
            (identical(other.issuerId, issuerId) ||
                const DeepCollectionEquality()
                    .equals(other.issuerId, issuerId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(documentSigningRequestId) ^
      const DeepCollectionEquality().hash(signatoryName) ^
      const DeepCollectionEquality().hash(signatoryPhoneNo) ^
      const DeepCollectionEquality().hash(signatoryEmail) ^
      const DeepCollectionEquality().hash(signatoryCountry) ^
      const DeepCollectionEquality().hash(signatoryPostCode) ^
      const DeepCollectionEquality().hash(signatoryCity) ^
      const DeepCollectionEquality().hash(signatoryAddress) ^
      const DeepCollectionEquality().hash(attachments) ^
      const DeepCollectionEquality().hash(resources) ^
      const DeepCollectionEquality().hash(interactions) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(externalDocumentId) ^
      const DeepCollectionEquality().hash(undeliveredReason) ^
      const DeepCollectionEquality().hash(numberOfRejectedImages) ^
      const DeepCollectionEquality().hash(issuerId) ^
      runtimeType.hashCode;
}

extension $ClaimDocumentsResponseExtension on ClaimDocumentsResponse {
  ClaimDocumentsResponse copyWith(
      {String? id,
      String? documentSigningRequestId,
      String? signatoryName,
      String? signatoryPhoneNo,
      String? signatoryEmail,
      String? signatoryCountry,
      String? signatoryPostCode,
      String? signatoryCity,
      String? signatoryAddress,
      List<SigningDocumentAttachment>? attachments,
      List<SigningDocumentResource>? resources,
      List<DocumentInteraction>? interactions,
      enums.DocumentStatus? status,
      String? externalDocumentId,
      String? undeliveredReason,
      int? numberOfRejectedImages,
      String? issuerId}) {
    return ClaimDocumentsResponse(
        id: id ?? this.id,
        documentSigningRequestId:
            documentSigningRequestId ?? this.documentSigningRequestId,
        signatoryName: signatoryName ?? this.signatoryName,
        signatoryPhoneNo: signatoryPhoneNo ?? this.signatoryPhoneNo,
        signatoryEmail: signatoryEmail ?? this.signatoryEmail,
        signatoryCountry: signatoryCountry ?? this.signatoryCountry,
        signatoryPostCode: signatoryPostCode ?? this.signatoryPostCode,
        signatoryCity: signatoryCity ?? this.signatoryCity,
        signatoryAddress: signatoryAddress ?? this.signatoryAddress,
        attachments: attachments ?? this.attachments,
        resources: resources ?? this.resources,
        interactions: interactions ?? this.interactions,
        status: status ?? this.status,
        externalDocumentId: externalDocumentId ?? this.externalDocumentId,
        undeliveredReason: undeliveredReason ?? this.undeliveredReason,
        numberOfRejectedImages:
            numberOfRejectedImages ?? this.numberOfRejectedImages,
        issuerId: issuerId ?? this.issuerId);
  }

  ClaimDocumentsResponse copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? documentSigningRequestId,
      Wrapped<String?>? signatoryName,
      Wrapped<String?>? signatoryPhoneNo,
      Wrapped<String?>? signatoryEmail,
      Wrapped<String?>? signatoryCountry,
      Wrapped<String?>? signatoryPostCode,
      Wrapped<String?>? signatoryCity,
      Wrapped<String?>? signatoryAddress,
      Wrapped<List<SigningDocumentAttachment>?>? attachments,
      Wrapped<List<SigningDocumentResource>?>? resources,
      Wrapped<List<DocumentInteraction>?>? interactions,
      Wrapped<enums.DocumentStatus?>? status,
      Wrapped<String?>? externalDocumentId,
      Wrapped<String?>? undeliveredReason,
      Wrapped<int?>? numberOfRejectedImages,
      Wrapped<String?>? issuerId}) {
    return ClaimDocumentsResponse(
        id: (id != null ? id.value : this.id),
        documentSigningRequestId: (documentSigningRequestId != null
            ? documentSigningRequestId.value
            : this.documentSigningRequestId),
        signatoryName:
            (signatoryName != null ? signatoryName.value : this.signatoryName),
        signatoryPhoneNo: (signatoryPhoneNo != null
            ? signatoryPhoneNo.value
            : this.signatoryPhoneNo),
        signatoryEmail: (signatoryEmail != null
            ? signatoryEmail.value
            : this.signatoryEmail),
        signatoryCountry: (signatoryCountry != null
            ? signatoryCountry.value
            : this.signatoryCountry),
        signatoryPostCode: (signatoryPostCode != null
            ? signatoryPostCode.value
            : this.signatoryPostCode),
        signatoryCity:
            (signatoryCity != null ? signatoryCity.value : this.signatoryCity),
        signatoryAddress: (signatoryAddress != null
            ? signatoryAddress.value
            : this.signatoryAddress),
        attachments:
            (attachments != null ? attachments.value : this.attachments),
        resources: (resources != null ? resources.value : this.resources),
        interactions:
            (interactions != null ? interactions.value : this.interactions),
        status: (status != null ? status.value : this.status),
        externalDocumentId: (externalDocumentId != null
            ? externalDocumentId.value
            : this.externalDocumentId),
        undeliveredReason: (undeliveredReason != null
            ? undeliveredReason.value
            : this.undeliveredReason),
        numberOfRejectedImages: (numberOfRejectedImages != null
            ? numberOfRejectedImages.value
            : this.numberOfRejectedImages),
        issuerId: (issuerId != null ? issuerId.value : this.issuerId));
  }
}

@JsonSerializable(explicitToJson: true)
class CompleteDocumentsRequest {
  CompleteDocumentsRequest({
    this.documentIds,
    this.issuerId,
  });

  factory CompleteDocumentsRequest.fromJson(Map<String, dynamic> json) =>
      _$CompleteDocumentsRequestFromJson(json);

  static const toJsonFactory = _$CompleteDocumentsRequestToJson;
  Map<String, dynamic> toJson() => _$CompleteDocumentsRequestToJson(this);

  @JsonKey(name: 'documentIds', defaultValue: <String>[])
  final List<String>? documentIds;
  @JsonKey(name: 'issuerId', defaultValue: '')
  final String? issuerId;
  static const fromJsonFactory = _$CompleteDocumentsRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompleteDocumentsRequest &&
            (identical(other.documentIds, documentIds) ||
                const DeepCollectionEquality()
                    .equals(other.documentIds, documentIds)) &&
            (identical(other.issuerId, issuerId) ||
                const DeepCollectionEquality()
                    .equals(other.issuerId, issuerId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(documentIds) ^
      const DeepCollectionEquality().hash(issuerId) ^
      runtimeType.hashCode;
}

extension $CompleteDocumentsRequestExtension on CompleteDocumentsRequest {
  CompleteDocumentsRequest copyWith(
      {List<String>? documentIds, String? issuerId}) {
    return CompleteDocumentsRequest(
        documentIds: documentIds ?? this.documentIds,
        issuerId: issuerId ?? this.issuerId);
  }

  CompleteDocumentsRequest copyWithWrapped(
      {Wrapped<List<String>?>? documentIds, Wrapped<String?>? issuerId}) {
    return CompleteDocumentsRequest(
        documentIds:
            (documentIds != null ? documentIds.value : this.documentIds),
        issuerId: (issuerId != null ? issuerId.value : this.issuerId));
  }
}

@JsonSerializable(explicitToJson: true)
class CompleteDocumentsResponse {
  CompleteDocumentsResponse({
    this.status,
  });

  factory CompleteDocumentsResponse.fromJson(Map<String, dynamic> json) =>
      _$CompleteDocumentsResponseFromJson(json);

  static const toJsonFactory = _$CompleteDocumentsResponseToJson;
  Map<String, dynamic> toJson() => _$CompleteDocumentsResponseToJson(this);

  @JsonKey(name: 'status')
  final bool? status;
  static const fromJsonFactory = _$CompleteDocumentsResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CompleteDocumentsResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^ runtimeType.hashCode;
}

extension $CompleteDocumentsResponseExtension on CompleteDocumentsResponse {
  CompleteDocumentsResponse copyWith({bool? status}) {
    return CompleteDocumentsResponse(status: status ?? this.status);
  }

  CompleteDocumentsResponse copyWithWrapped({Wrapped<bool?>? status}) {
    return CompleteDocumentsResponse(
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentResourceRequest {
  DocumentResourceRequest({
    this.id,
    this.documentId,
    this.reason,
  });

  factory DocumentResourceRequest.fromJson(Map<String, dynamic> json) =>
      _$DocumentResourceRequestFromJson(json);

  static const toJsonFactory = _$DocumentResourceRequestToJson;
  Map<String, dynamic> toJson() => _$DocumentResourceRequestToJson(this);

  @JsonKey(name: 'id', defaultValue: '')
  final String? id;
  @JsonKey(name: 'documentId', defaultValue: '')
  final String? documentId;
  @JsonKey(name: 'reason', defaultValue: '')
  final String? reason;
  static const fromJsonFactory = _$DocumentResourceRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentResourceRequest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.documentId, documentId) ||
                const DeepCollectionEquality()
                    .equals(other.documentId, documentId)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(documentId) ^
      const DeepCollectionEquality().hash(reason) ^
      runtimeType.hashCode;
}

extension $DocumentResourceRequestExtension on DocumentResourceRequest {
  DocumentResourceRequest copyWith(
      {String? id, String? documentId, String? reason}) {
    return DocumentResourceRequest(
        id: id ?? this.id,
        documentId: documentId ?? this.documentId,
        reason: reason ?? this.reason);
  }

  DocumentResourceRequest copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? documentId,
      Wrapped<String?>? reason}) {
    return DocumentResourceRequest(
        id: (id != null ? id.value : this.id),
        documentId: (documentId != null ? documentId.value : this.documentId),
        reason: (reason != null ? reason.value : this.reason));
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentResourceResponse {
  DocumentResourceResponse({
    this.status,
  });

  factory DocumentResourceResponse.fromJson(Map<String, dynamic> json) =>
      _$DocumentResourceResponseFromJson(json);

  static const toJsonFactory = _$DocumentResourceResponseToJson;
  Map<String, dynamic> toJson() => _$DocumentResourceResponseToJson(this);

  @JsonKey(name: 'status')
  final bool? status;
  static const fromJsonFactory = _$DocumentResourceResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentResourceResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^ runtimeType.hashCode;
}

extension $DocumentResourceResponseExtension on DocumentResourceResponse {
  DocumentResourceResponse copyWith({bool? status}) {
    return DocumentResourceResponse(status: status ?? this.status);
  }

  DocumentResourceResponse copyWithWrapped({Wrapped<bool?>? status}) {
    return DocumentResourceResponse(
        status: (status != null ? status.value : this.status));
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentSigningRequestDto {
  DocumentSigningRequestDto({
    this.issuerId,
  });

  factory DocumentSigningRequestDto.fromJson(Map<String, dynamic> json) =>
      _$DocumentSigningRequestDtoFromJson(json);

  static const toJsonFactory = _$DocumentSigningRequestDtoToJson;
  Map<String, dynamic> toJson() => _$DocumentSigningRequestDtoToJson(this);

  @JsonKey(name: 'issuerId', defaultValue: '')
  final String? issuerId;
  static const fromJsonFactory = _$DocumentSigningRequestDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentSigningRequestDto &&
            (identical(other.issuerId, issuerId) ||
                const DeepCollectionEquality()
                    .equals(other.issuerId, issuerId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(issuerId) ^ runtimeType.hashCode;
}

extension $DocumentSigningRequestDtoExtension on DocumentSigningRequestDto {
  DocumentSigningRequestDto copyWith({String? issuerId}) {
    return DocumentSigningRequestDto(issuerId: issuerId ?? this.issuerId);
  }

  DocumentSigningRequestDto copyWithWrapped({Wrapped<String?>? issuerId}) {
    return DocumentSigningRequestDto(
        issuerId: (issuerId != null ? issuerId.value : this.issuerId));
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentSigningLabelResponse {
  DocumentSigningLabelResponse({
    this.issuerId,
    this.signingRequestId,
    this.qrCode,
    this.token,
  });

  factory DocumentSigningLabelResponse.fromJson(Map<String, dynamic> json) =>
      _$DocumentSigningLabelResponseFromJson(json);

  static const toJsonFactory = _$DocumentSigningLabelResponseToJson;
  Map<String, dynamic> toJson() => _$DocumentSigningLabelResponseToJson(this);

  @JsonKey(name: 'issuerId', defaultValue: '')
  final String? issuerId;
  @JsonKey(name: 'signingRequestId', defaultValue: '')
  final String? signingRequestId;
  @JsonKey(name: 'qrCode', defaultValue: '')
  final String? qrCode;
  @JsonKey(name: 'token', defaultValue: '')
  final String? token;
  static const fromJsonFactory = _$DocumentSigningLabelResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentSigningLabelResponse &&
            (identical(other.issuerId, issuerId) ||
                const DeepCollectionEquality()
                    .equals(other.issuerId, issuerId)) &&
            (identical(other.signingRequestId, signingRequestId) ||
                const DeepCollectionEquality()
                    .equals(other.signingRequestId, signingRequestId)) &&
            (identical(other.qrCode, qrCode) ||
                const DeepCollectionEquality().equals(other.qrCode, qrCode)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(issuerId) ^
      const DeepCollectionEquality().hash(signingRequestId) ^
      const DeepCollectionEquality().hash(qrCode) ^
      const DeepCollectionEquality().hash(token) ^
      runtimeType.hashCode;
}

extension $DocumentSigningLabelResponseExtension
    on DocumentSigningLabelResponse {
  DocumentSigningLabelResponse copyWith(
      {String? issuerId,
      String? signingRequestId,
      String? qrCode,
      String? token}) {
    return DocumentSigningLabelResponse(
        issuerId: issuerId ?? this.issuerId,
        signingRequestId: signingRequestId ?? this.signingRequestId,
        qrCode: qrCode ?? this.qrCode,
        token: token ?? this.token);
  }

  DocumentSigningLabelResponse copyWithWrapped(
      {Wrapped<String?>? issuerId,
      Wrapped<String?>? signingRequestId,
      Wrapped<String?>? qrCode,
      Wrapped<String?>? token}) {
    return DocumentSigningLabelResponse(
        issuerId: (issuerId != null ? issuerId.value : this.issuerId),
        signingRequestId: (signingRequestId != null
            ? signingRequestId.value
            : this.signingRequestId),
        qrCode: (qrCode != null ? qrCode.value : this.qrCode),
        token: (token != null ? token.value : this.token));
  }
}

@JsonSerializable(explicitToJson: true)
class CreateTransportHandlerModel {
  CreateTransportHandlerModel({
    required this.name,
    required this.surname,
    this.phone,
    required this.vatNo,
    required this.vehicleNumber,
    this.email,
    required this.deviceId,
  });

  factory CreateTransportHandlerModel.fromJson(Map<String, dynamic> json) =>
      _$CreateTransportHandlerModelFromJson(json);

  static const toJsonFactory = _$CreateTransportHandlerModelToJson;
  Map<String, dynamic> toJson() => _$CreateTransportHandlerModelToJson(this);

  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @JsonKey(name: 'surname', defaultValue: '')
  final String surname;
  @JsonKey(name: 'phone', defaultValue: '')
  final String? phone;
  @JsonKey(name: 'vatNo', defaultValue: '')
  final String vatNo;
  @JsonKey(name: 'vehicleNumber', defaultValue: '')
  final String vehicleNumber;
  @JsonKey(name: 'email', defaultValue: '')
  final String? email;
  @JsonKey(name: 'deviceId', defaultValue: '')
  final String deviceId;
  static const fromJsonFactory = _$CreateTransportHandlerModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CreateTransportHandlerModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality()
                    .equals(other.surname, surname)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.vatNo, vatNo) ||
                const DeepCollectionEquality().equals(other.vatNo, vatNo)) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleNumber, vehicleNumber)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(surname) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(vatNo) ^
      const DeepCollectionEquality().hash(vehicleNumber) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(deviceId) ^
      runtimeType.hashCode;
}

extension $CreateTransportHandlerModelExtension on CreateTransportHandlerModel {
  CreateTransportHandlerModel copyWith(
      {String? name,
      String? surname,
      String? phone,
      String? vatNo,
      String? vehicleNumber,
      String? email,
      String? deviceId}) {
    return CreateTransportHandlerModel(
        name: name ?? this.name,
        surname: surname ?? this.surname,
        phone: phone ?? this.phone,
        vatNo: vatNo ?? this.vatNo,
        vehicleNumber: vehicleNumber ?? this.vehicleNumber,
        email: email ?? this.email,
        deviceId: deviceId ?? this.deviceId);
  }

  CreateTransportHandlerModel copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<String>? surname,
      Wrapped<String?>? phone,
      Wrapped<String>? vatNo,
      Wrapped<String>? vehicleNumber,
      Wrapped<String?>? email,
      Wrapped<String>? deviceId}) {
    return CreateTransportHandlerModel(
        name: (name != null ? name.value : this.name),
        surname: (surname != null ? surname.value : this.surname),
        phone: (phone != null ? phone.value : this.phone),
        vatNo: (vatNo != null ? vatNo.value : this.vatNo),
        vehicleNumber:
            (vehicleNumber != null ? vehicleNumber.value : this.vehicleNumber),
        email: (email != null ? email.value : this.email),
        deviceId: (deviceId != null ? deviceId.value : this.deviceId));
  }
}

@JsonSerializable(explicitToJson: true)
class TransportHandlerModel {
  TransportHandlerModel({
    this.id,
    this.name,
    this.surname,
    this.phone,
    this.vatNo,
    this.vehicleNumber,
    this.email,
    this.deviceId,
  });

  factory TransportHandlerModel.fromJson(Map<String, dynamic> json) =>
      _$TransportHandlerModelFromJson(json);

  static const toJsonFactory = _$TransportHandlerModelToJson;
  Map<String, dynamic> toJson() => _$TransportHandlerModelToJson(this);

  @JsonKey(name: 'id', defaultValue: '')
  final String? id;
  @JsonKey(name: 'name', defaultValue: '')
  final String? name;
  @JsonKey(name: 'surname', defaultValue: '')
  final String? surname;
  @JsonKey(name: 'phone', defaultValue: '')
  final String? phone;
  @JsonKey(name: 'vatNo', defaultValue: '')
  final String? vatNo;
  @JsonKey(name: 'vehicleNumber', defaultValue: '')
  final String? vehicleNumber;
  @JsonKey(name: 'email', defaultValue: '')
  final String? email;
  @JsonKey(name: 'deviceId', defaultValue: '')
  final String? deviceId;
  static const fromJsonFactory = _$TransportHandlerModelFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransportHandlerModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.surname, surname) ||
                const DeepCollectionEquality()
                    .equals(other.surname, surname)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.vatNo, vatNo) ||
                const DeepCollectionEquality().equals(other.vatNo, vatNo)) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleNumber, vehicleNumber)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(surname) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(vatNo) ^
      const DeepCollectionEquality().hash(vehicleNumber) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(deviceId) ^
      runtimeType.hashCode;
}

extension $TransportHandlerModelExtension on TransportHandlerModel {
  TransportHandlerModel copyWith(
      {String? id,
      String? name,
      String? surname,
      String? phone,
      String? vatNo,
      String? vehicleNumber,
      String? email,
      String? deviceId}) {
    return TransportHandlerModel(
        id: id ?? this.id,
        name: name ?? this.name,
        surname: surname ?? this.surname,
        phone: phone ?? this.phone,
        vatNo: vatNo ?? this.vatNo,
        vehicleNumber: vehicleNumber ?? this.vehicleNumber,
        email: email ?? this.email,
        deviceId: deviceId ?? this.deviceId);
  }

  TransportHandlerModel copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? surname,
      Wrapped<String?>? phone,
      Wrapped<String?>? vatNo,
      Wrapped<String?>? vehicleNumber,
      Wrapped<String?>? email,
      Wrapped<String?>? deviceId}) {
    return TransportHandlerModel(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        surname: (surname != null ? surname.value : this.surname),
        phone: (phone != null ? phone.value : this.phone),
        vatNo: (vatNo != null ? vatNo.value : this.vatNo),
        vehicleNumber:
            (vehicleNumber != null ? vehicleNumber.value : this.vehicleNumber),
        email: (email != null ? email.value : this.email),
        deviceId: (deviceId != null ? deviceId.value : this.deviceId));
  }
}

@JsonSerializable(explicitToJson: true)
class DownloadDocumentAttachmentRequest {
  DownloadDocumentAttachmentRequest({
    this.documentId,
    this.id,
  });

  factory DownloadDocumentAttachmentRequest.fromJson(
          Map<String, dynamic> json) =>
      _$DownloadDocumentAttachmentRequestFromJson(json);

  static const toJsonFactory = _$DownloadDocumentAttachmentRequestToJson;
  Map<String, dynamic> toJson() =>
      _$DownloadDocumentAttachmentRequestToJson(this);

  @JsonKey(name: 'documentId', defaultValue: '')
  final String? documentId;
  @JsonKey(name: 'id', defaultValue: '')
  final String? id;
  static const fromJsonFactory = _$DownloadDocumentAttachmentRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DownloadDocumentAttachmentRequest &&
            (identical(other.documentId, documentId) ||
                const DeepCollectionEquality()
                    .equals(other.documentId, documentId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(documentId) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $DownloadDocumentAttachmentRequestExtension
    on DownloadDocumentAttachmentRequest {
  DownloadDocumentAttachmentRequest copyWith({String? documentId, String? id}) {
    return DownloadDocumentAttachmentRequest(
        documentId: documentId ?? this.documentId, id: id ?? this.id);
  }

  DownloadDocumentAttachmentRequest copyWithWrapped(
      {Wrapped<String?>? documentId, Wrapped<String?>? id}) {
    return DownloadDocumentAttachmentRequest(
        documentId: (documentId != null ? documentId.value : this.documentId),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class DownloadDocumentAttachmentResponse {
  DownloadDocumentAttachmentResponse({
    this.name,
    this.b64Image,
  });

  factory DownloadDocumentAttachmentResponse.fromJson(
          Map<String, dynamic> json) =>
      _$DownloadDocumentAttachmentResponseFromJson(json);

  static const toJsonFactory = _$DownloadDocumentAttachmentResponseToJson;
  Map<String, dynamic> toJson() =>
      _$DownloadDocumentAttachmentResponseToJson(this);

  @JsonKey(name: 'name', defaultValue: '')
  final String? name;
  @JsonKey(name: 'b64Image', defaultValue: '')
  final String? b64Image;
  static const fromJsonFactory = _$DownloadDocumentAttachmentResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DownloadDocumentAttachmentResponse &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.b64Image, b64Image) ||
                const DeepCollectionEquality()
                    .equals(other.b64Image, b64Image)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(b64Image) ^
      runtimeType.hashCode;
}

extension $DownloadDocumentAttachmentResponseExtension
    on DownloadDocumentAttachmentResponse {
  DownloadDocumentAttachmentResponse copyWith(
      {String? name, String? b64Image}) {
    return DownloadDocumentAttachmentResponse(
        name: name ?? this.name, b64Image: b64Image ?? this.b64Image);
  }

  DownloadDocumentAttachmentResponse copyWithWrapped(
      {Wrapped<String?>? name, Wrapped<String?>? b64Image}) {
    return DownloadDocumentAttachmentResponse(
        name: (name != null ? name.value : this.name),
        b64Image: (b64Image != null ? b64Image.value : this.b64Image));
  }
}

@JsonSerializable(explicitToJson: true)
class GetDocumentsRequest {
  GetDocumentsRequest({
    required this.issuerId,
  });

  factory GetDocumentsRequest.fromJson(Map<String, dynamic> json) =>
      _$GetDocumentsRequestFromJson(json);

  static const toJsonFactory = _$GetDocumentsRequestToJson;
  Map<String, dynamic> toJson() => _$GetDocumentsRequestToJson(this);

  @JsonKey(name: 'issuerId', defaultValue: '')
  final String issuerId;
  static const fromJsonFactory = _$GetDocumentsRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetDocumentsRequest &&
            (identical(other.issuerId, issuerId) ||
                const DeepCollectionEquality()
                    .equals(other.issuerId, issuerId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(issuerId) ^ runtimeType.hashCode;
}

extension $GetDocumentsRequestExtension on GetDocumentsRequest {
  GetDocumentsRequest copyWith({String? issuerId}) {
    return GetDocumentsRequest(issuerId: issuerId ?? this.issuerId);
  }

  GetDocumentsRequest copyWithWrapped({Wrapped<String>? issuerId}) {
    return GetDocumentsRequest(
        issuerId: (issuerId != null ? issuerId.value : this.issuerId));
  }
}

@JsonSerializable(explicitToJson: true)
class GetDocumentsResponse {
  GetDocumentsResponse({
    this.id,
    this.documentSigningRequestId,
    this.signatoryName,
    this.signatoryPhoneNo,
    this.signatoryEmail,
    this.signatoryCountry,
    this.signatoryPostCode,
    this.signatoryCity,
    this.signatoryAddress,
    this.attachments,
    this.resources,
    this.interactions,
    this.status,
    this.externalDocumentId,
    this.undeliveredReason,
    this.numberOfRejectedImages,
  });

  factory GetDocumentsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetDocumentsResponseFromJson(json);

  static const toJsonFactory = _$GetDocumentsResponseToJson;
  Map<String, dynamic> toJson() => _$GetDocumentsResponseToJson(this);

  @JsonKey(name: 'id', defaultValue: '')
  final String? id;
  @JsonKey(name: 'documentSigningRequestId', defaultValue: '')
  final String? documentSigningRequestId;
  @JsonKey(name: 'signatoryName', defaultValue: '')
  final String? signatoryName;
  @JsonKey(name: 'signatoryPhoneNo', defaultValue: '')
  final String? signatoryPhoneNo;
  @JsonKey(name: 'signatoryEmail', defaultValue: '')
  final String? signatoryEmail;
  @JsonKey(name: 'signatoryCountry', defaultValue: '')
  final String? signatoryCountry;
  @JsonKey(name: 'signatoryPostCode', defaultValue: '')
  final String? signatoryPostCode;
  @JsonKey(name: 'signatoryCity', defaultValue: '')
  final String? signatoryCity;
  @JsonKey(name: 'signatoryAddress', defaultValue: '')
  final String? signatoryAddress;
  @JsonKey(name: 'attachments', defaultValue: <SigningDocumentAttachment>[])
  final List<SigningDocumentAttachment>? attachments;
  @JsonKey(name: 'resources', defaultValue: <SigningDocumentResource>[])
  final List<SigningDocumentResource>? resources;
  @JsonKey(name: 'interactions', defaultValue: <DocumentInteraction>[])
  final List<DocumentInteraction>? interactions;
  @JsonKey(
    name: 'status',
    toJson: documentStatusToJson,
    fromJson: documentStatusFromJson,
  )
  final enums.DocumentStatus? status;
  @JsonKey(name: 'externalDocumentId', defaultValue: '')
  final String? externalDocumentId;
  @JsonKey(name: 'undeliveredReason', defaultValue: '')
  final String? undeliveredReason;
  @JsonKey(name: 'numberOfRejectedImages', defaultValue: 0)
  final int? numberOfRejectedImages;
  static const fromJsonFactory = _$GetDocumentsResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetDocumentsResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(
                    other.documentSigningRequestId, documentSigningRequestId) ||
                const DeepCollectionEquality().equals(
                    other.documentSigningRequestId,
                    documentSigningRequestId)) &&
            (identical(other.signatoryName, signatoryName) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryName, signatoryName)) &&
            (identical(other.signatoryPhoneNo, signatoryPhoneNo) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryPhoneNo, signatoryPhoneNo)) &&
            (identical(other.signatoryEmail, signatoryEmail) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryEmail, signatoryEmail)) &&
            (identical(other.signatoryCountry, signatoryCountry) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryCountry, signatoryCountry)) &&
            (identical(other.signatoryPostCode, signatoryPostCode) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryPostCode, signatoryPostCode)) &&
            (identical(other.signatoryCity, signatoryCity) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryCity, signatoryCity)) &&
            (identical(other.signatoryAddress, signatoryAddress) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryAddress, signatoryAddress)) &&
            (identical(other.attachments, attachments) ||
                const DeepCollectionEquality()
                    .equals(other.attachments, attachments)) &&
            (identical(other.resources, resources) ||
                const DeepCollectionEquality()
                    .equals(other.resources, resources)) &&
            (identical(other.interactions, interactions) ||
                const DeepCollectionEquality()
                    .equals(other.interactions, interactions)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.externalDocumentId, externalDocumentId) ||
                const DeepCollectionEquality()
                    .equals(other.externalDocumentId, externalDocumentId)) &&
            (identical(other.undeliveredReason, undeliveredReason) ||
                const DeepCollectionEquality()
                    .equals(other.undeliveredReason, undeliveredReason)) &&
            (identical(other.numberOfRejectedImages, numberOfRejectedImages) ||
                const DeepCollectionEquality().equals(
                    other.numberOfRejectedImages, numberOfRejectedImages)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(documentSigningRequestId) ^
      const DeepCollectionEquality().hash(signatoryName) ^
      const DeepCollectionEquality().hash(signatoryPhoneNo) ^
      const DeepCollectionEquality().hash(signatoryEmail) ^
      const DeepCollectionEquality().hash(signatoryCountry) ^
      const DeepCollectionEquality().hash(signatoryPostCode) ^
      const DeepCollectionEquality().hash(signatoryCity) ^
      const DeepCollectionEquality().hash(signatoryAddress) ^
      const DeepCollectionEquality().hash(attachments) ^
      const DeepCollectionEquality().hash(resources) ^
      const DeepCollectionEquality().hash(interactions) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(externalDocumentId) ^
      const DeepCollectionEquality().hash(undeliveredReason) ^
      const DeepCollectionEquality().hash(numberOfRejectedImages) ^
      runtimeType.hashCode;
}

extension $GetDocumentsResponseExtension on GetDocumentsResponse {
  GetDocumentsResponse copyWith(
      {String? id,
      String? documentSigningRequestId,
      String? signatoryName,
      String? signatoryPhoneNo,
      String? signatoryEmail,
      String? signatoryCountry,
      String? signatoryPostCode,
      String? signatoryCity,
      String? signatoryAddress,
      List<SigningDocumentAttachment>? attachments,
      List<SigningDocumentResource>? resources,
      List<DocumentInteraction>? interactions,
      enums.DocumentStatus? status,
      String? externalDocumentId,
      String? undeliveredReason,
      int? numberOfRejectedImages}) {
    return GetDocumentsResponse(
        id: id ?? this.id,
        documentSigningRequestId:
            documentSigningRequestId ?? this.documentSigningRequestId,
        signatoryName: signatoryName ?? this.signatoryName,
        signatoryPhoneNo: signatoryPhoneNo ?? this.signatoryPhoneNo,
        signatoryEmail: signatoryEmail ?? this.signatoryEmail,
        signatoryCountry: signatoryCountry ?? this.signatoryCountry,
        signatoryPostCode: signatoryPostCode ?? this.signatoryPostCode,
        signatoryCity: signatoryCity ?? this.signatoryCity,
        signatoryAddress: signatoryAddress ?? this.signatoryAddress,
        attachments: attachments ?? this.attachments,
        resources: resources ?? this.resources,
        interactions: interactions ?? this.interactions,
        status: status ?? this.status,
        externalDocumentId: externalDocumentId ?? this.externalDocumentId,
        undeliveredReason: undeliveredReason ?? this.undeliveredReason,
        numberOfRejectedImages:
            numberOfRejectedImages ?? this.numberOfRejectedImages);
  }

  GetDocumentsResponse copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? documentSigningRequestId,
      Wrapped<String?>? signatoryName,
      Wrapped<String?>? signatoryPhoneNo,
      Wrapped<String?>? signatoryEmail,
      Wrapped<String?>? signatoryCountry,
      Wrapped<String?>? signatoryPostCode,
      Wrapped<String?>? signatoryCity,
      Wrapped<String?>? signatoryAddress,
      Wrapped<List<SigningDocumentAttachment>?>? attachments,
      Wrapped<List<SigningDocumentResource>?>? resources,
      Wrapped<List<DocumentInteraction>?>? interactions,
      Wrapped<enums.DocumentStatus?>? status,
      Wrapped<String?>? externalDocumentId,
      Wrapped<String?>? undeliveredReason,
      Wrapped<int?>? numberOfRejectedImages}) {
    return GetDocumentsResponse(
        id: (id != null ? id.value : this.id),
        documentSigningRequestId: (documentSigningRequestId != null
            ? documentSigningRequestId.value
            : this.documentSigningRequestId),
        signatoryName:
            (signatoryName != null ? signatoryName.value : this.signatoryName),
        signatoryPhoneNo: (signatoryPhoneNo != null
            ? signatoryPhoneNo.value
            : this.signatoryPhoneNo),
        signatoryEmail: (signatoryEmail != null
            ? signatoryEmail.value
            : this.signatoryEmail),
        signatoryCountry: (signatoryCountry != null
            ? signatoryCountry.value
            : this.signatoryCountry),
        signatoryPostCode: (signatoryPostCode != null
            ? signatoryPostCode.value
            : this.signatoryPostCode),
        signatoryCity:
            (signatoryCity != null ? signatoryCity.value : this.signatoryCity),
        signatoryAddress: (signatoryAddress != null
            ? signatoryAddress.value
            : this.signatoryAddress),
        attachments:
            (attachments != null ? attachments.value : this.attachments),
        resources: (resources != null ? resources.value : this.resources),
        interactions:
            (interactions != null ? interactions.value : this.interactions),
        status: (status != null ? status.value : this.status),
        externalDocumentId: (externalDocumentId != null
            ? externalDocumentId.value
            : this.externalDocumentId),
        undeliveredReason: (undeliveredReason != null
            ? undeliveredReason.value
            : this.undeliveredReason),
        numberOfRejectedImages: (numberOfRejectedImages != null
            ? numberOfRejectedImages.value
            : this.numberOfRejectedImages));
  }
}

@JsonSerializable(explicitToJson: true)
class GetTransportHandlerRequest {
  GetTransportHandlerRequest({
    this.id,
  });

  factory GetTransportHandlerRequest.fromJson(Map<String, dynamic> json) =>
      _$GetTransportHandlerRequestFromJson(json);

  static const toJsonFactory = _$GetTransportHandlerRequestToJson;
  Map<String, dynamic> toJson() => _$GetTransportHandlerRequestToJson(this);

  @JsonKey(name: 'id', defaultValue: '')
  final String? id;
  static const fromJsonFactory = _$GetTransportHandlerRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetTransportHandlerRequest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^ runtimeType.hashCode;
}

extension $GetTransportHandlerRequestExtension on GetTransportHandlerRequest {
  GetTransportHandlerRequest copyWith({String? id}) {
    return GetTransportHandlerRequest(id: id ?? this.id);
  }

  GetTransportHandlerRequest copyWithWrapped({Wrapped<String?>? id}) {
    return GetTransportHandlerRequest(id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class GetTransportHandlersRequest {
  GetTransportHandlersRequest({
    required this.transportAuthorityId,
  });

  factory GetTransportHandlersRequest.fromJson(Map<String, dynamic> json) =>
      _$GetTransportHandlersRequestFromJson(json);

  static const toJsonFactory = _$GetTransportHandlersRequestToJson;
  Map<String, dynamic> toJson() => _$GetTransportHandlersRequestToJson(this);

  @JsonKey(name: 'transportAuthorityId', defaultValue: '')
  final String transportAuthorityId;
  static const fromJsonFactory = _$GetTransportHandlersRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetTransportHandlersRequest &&
            (identical(other.transportAuthorityId, transportAuthorityId) ||
                const DeepCollectionEquality()
                    .equals(other.transportAuthorityId, transportAuthorityId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transportAuthorityId) ^
      runtimeType.hashCode;
}

extension $GetTransportHandlersRequestExtension on GetTransportHandlersRequest {
  GetTransportHandlersRequest copyWith({String? transportAuthorityId}) {
    return GetTransportHandlersRequest(
        transportAuthorityId:
            transportAuthorityId ?? this.transportAuthorityId);
  }

  GetTransportHandlersRequest copyWithWrapped(
      {Wrapped<String>? transportAuthorityId}) {
    return GetTransportHandlersRequest(
        transportAuthorityId: (transportAuthorityId != null
            ? transportAuthorityId.value
            : this.transportAuthorityId));
  }
}

@JsonSerializable(explicitToJson: true)
class ListDocuments {
  ListDocuments();

  factory ListDocuments.fromJson(Map<String, dynamic> json) =>
      _$ListDocumentsFromJson(json);

  static const toJsonFactory = _$ListDocumentsToJson;
  Map<String, dynamic> toJson() => _$ListDocumentsToJson(this);

  static const fromJsonFactory = _$ListDocumentsFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class RejectDocumentSigningRequest {
  RejectDocumentSigningRequest({
    this.documentId,
    this.reason,
  });

  factory RejectDocumentSigningRequest.fromJson(Map<String, dynamic> json) =>
      _$RejectDocumentSigningRequestFromJson(json);

  static const toJsonFactory = _$RejectDocumentSigningRequestToJson;
  Map<String, dynamic> toJson() => _$RejectDocumentSigningRequestToJson(this);

  @JsonKey(name: 'documentId', defaultValue: '')
  final String? documentId;
  @JsonKey(name: 'reason', defaultValue: '')
  final String? reason;
  static const fromJsonFactory = _$RejectDocumentSigningRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RejectDocumentSigningRequest &&
            (identical(other.documentId, documentId) ||
                const DeepCollectionEquality()
                    .equals(other.documentId, documentId)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(documentId) ^
      const DeepCollectionEquality().hash(reason) ^
      runtimeType.hashCode;
}

extension $RejectDocumentSigningRequestExtension
    on RejectDocumentSigningRequest {
  RejectDocumentSigningRequest copyWith({String? documentId, String? reason}) {
    return RejectDocumentSigningRequest(
        documentId: documentId ?? this.documentId,
        reason: reason ?? this.reason);
  }

  RejectDocumentSigningRequest copyWithWrapped(
      {Wrapped<String?>? documentId, Wrapped<String?>? reason}) {
    return RejectDocumentSigningRequest(
        documentId: (documentId != null ? documentId.value : this.documentId),
        reason: (reason != null ? reason.value : this.reason));
  }
}

@JsonSerializable(explicitToJson: true)
class RejectDocumentSigningResponse {
  RejectDocumentSigningResponse({
    this.status,
    this.message,
  });

  factory RejectDocumentSigningResponse.fromJson(Map<String, dynamic> json) =>
      _$RejectDocumentSigningResponseFromJson(json);

  static const toJsonFactory = _$RejectDocumentSigningResponseToJson;
  Map<String, dynamic> toJson() => _$RejectDocumentSigningResponseToJson(this);

  @JsonKey(name: 'status')
  final bool? status;
  @JsonKey(name: 'message', defaultValue: '')
  final String? message;
  static const fromJsonFactory = _$RejectDocumentSigningResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RejectDocumentSigningResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $RejectDocumentSigningResponseExtension
    on RejectDocumentSigningResponse {
  RejectDocumentSigningResponse copyWith({bool? status, String? message}) {
    return RejectDocumentSigningResponse(
        status: status ?? this.status, message: message ?? this.message);
  }

  RejectDocumentSigningResponse copyWithWrapped(
      {Wrapped<bool?>? status, Wrapped<String?>? message}) {
    return RejectDocumentSigningResponse(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class RemoveDocumentHandlerRequest {
  RemoveDocumentHandlerRequest({
    this.documentId,
    this.issuerId,
  });

  factory RemoveDocumentHandlerRequest.fromJson(Map<String, dynamic> json) =>
      _$RemoveDocumentHandlerRequestFromJson(json);

  static const toJsonFactory = _$RemoveDocumentHandlerRequestToJson;
  Map<String, dynamic> toJson() => _$RemoveDocumentHandlerRequestToJson(this);

  @JsonKey(name: 'documentId', defaultValue: '')
  final String? documentId;
  @JsonKey(name: 'issuerId', defaultValue: '')
  final String? issuerId;
  static const fromJsonFactory = _$RemoveDocumentHandlerRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveDocumentHandlerRequest &&
            (identical(other.documentId, documentId) ||
                const DeepCollectionEquality()
                    .equals(other.documentId, documentId)) &&
            (identical(other.issuerId, issuerId) ||
                const DeepCollectionEquality()
                    .equals(other.issuerId, issuerId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(documentId) ^
      const DeepCollectionEquality().hash(issuerId) ^
      runtimeType.hashCode;
}

extension $RemoveDocumentHandlerRequestExtension
    on RemoveDocumentHandlerRequest {
  RemoveDocumentHandlerRequest copyWith(
      {String? documentId, String? issuerId}) {
    return RemoveDocumentHandlerRequest(
        documentId: documentId ?? this.documentId,
        issuerId: issuerId ?? this.issuerId);
  }

  RemoveDocumentHandlerRequest copyWithWrapped(
      {Wrapped<String?>? documentId, Wrapped<String?>? issuerId}) {
    return RemoveDocumentHandlerRequest(
        documentId: (documentId != null ? documentId.value : this.documentId),
        issuerId: (issuerId != null ? issuerId.value : this.issuerId));
  }
}

@JsonSerializable(explicitToJson: true)
class RemoveDocumentHandlerResponse {
  RemoveDocumentHandlerResponse({
    this.status,
    this.message,
  });

  factory RemoveDocumentHandlerResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoveDocumentHandlerResponseFromJson(json);

  static const toJsonFactory = _$RemoveDocumentHandlerResponseToJson;
  Map<String, dynamic> toJson() => _$RemoveDocumentHandlerResponseToJson(this);

  @JsonKey(name: 'status')
  final bool? status;
  @JsonKey(name: 'message', defaultValue: '')
  final String? message;
  static const fromJsonFactory = _$RemoveDocumentHandlerResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveDocumentHandlerResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $RemoveDocumentHandlerResponseExtension
    on RemoveDocumentHandlerResponse {
  RemoveDocumentHandlerResponse copyWith({bool? status, String? message}) {
    return RemoveDocumentHandlerResponse(
        status: status ?? this.status, message: message ?? this.message);
  }

  RemoveDocumentHandlerResponse copyWithWrapped(
      {Wrapped<bool?>? status, Wrapped<String?>? message}) {
    return RemoveDocumentHandlerResponse(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class RemoveDocumentResourceRequest {
  RemoveDocumentResourceRequest({
    this.documentId,
    this.resourceIds,
    this.issuerId,
  });

  factory RemoveDocumentResourceRequest.fromJson(Map<String, dynamic> json) =>
      _$RemoveDocumentResourceRequestFromJson(json);

  static const toJsonFactory = _$RemoveDocumentResourceRequestToJson;
  Map<String, dynamic> toJson() => _$RemoveDocumentResourceRequestToJson(this);

  @JsonKey(name: 'documentId', defaultValue: '')
  final String? documentId;
  @JsonKey(name: 'resourceIds', defaultValue: <String>[])
  final List<String>? resourceIds;
  @JsonKey(name: 'issuerId', defaultValue: '')
  final String? issuerId;
  static const fromJsonFactory = _$RemoveDocumentResourceRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveDocumentResourceRequest &&
            (identical(other.documentId, documentId) ||
                const DeepCollectionEquality()
                    .equals(other.documentId, documentId)) &&
            (identical(other.resourceIds, resourceIds) ||
                const DeepCollectionEquality()
                    .equals(other.resourceIds, resourceIds)) &&
            (identical(other.issuerId, issuerId) ||
                const DeepCollectionEquality()
                    .equals(other.issuerId, issuerId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(documentId) ^
      const DeepCollectionEquality().hash(resourceIds) ^
      const DeepCollectionEquality().hash(issuerId) ^
      runtimeType.hashCode;
}

extension $RemoveDocumentResourceRequestExtension
    on RemoveDocumentResourceRequest {
  RemoveDocumentResourceRequest copyWith(
      {String? documentId, List<String>? resourceIds, String? issuerId}) {
    return RemoveDocumentResourceRequest(
        documentId: documentId ?? this.documentId,
        resourceIds: resourceIds ?? this.resourceIds,
        issuerId: issuerId ?? this.issuerId);
  }

  RemoveDocumentResourceRequest copyWithWrapped(
      {Wrapped<String?>? documentId,
      Wrapped<List<String>?>? resourceIds,
      Wrapped<String?>? issuerId}) {
    return RemoveDocumentResourceRequest(
        documentId: (documentId != null ? documentId.value : this.documentId),
        resourceIds:
            (resourceIds != null ? resourceIds.value : this.resourceIds),
        issuerId: (issuerId != null ? issuerId.value : this.issuerId));
  }
}

@JsonSerializable(explicitToJson: true)
class RemoveDocumentResourceResponse {
  RemoveDocumentResourceResponse({
    this.status,
    this.message,
  });

  factory RemoveDocumentResourceResponse.fromJson(Map<String, dynamic> json) =>
      _$RemoveDocumentResourceResponseFromJson(json);

  static const toJsonFactory = _$RemoveDocumentResourceResponseToJson;
  Map<String, dynamic> toJson() => _$RemoveDocumentResourceResponseToJson(this);

  @JsonKey(name: 'status')
  final bool? status;
  @JsonKey(name: 'message', defaultValue: '')
  final String? message;
  static const fromJsonFactory = _$RemoveDocumentResourceResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveDocumentResourceResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $RemoveDocumentResourceResponseExtension
    on RemoveDocumentResourceResponse {
  RemoveDocumentResourceResponse copyWith({bool? status, String? message}) {
    return RemoveDocumentResourceResponse(
        status: status ?? this.status, message: message ?? this.message);
  }

  RemoveDocumentResourceResponse copyWithWrapped(
      {Wrapped<bool?>? status, Wrapped<String?>? message}) {
    return RemoveDocumentResourceResponse(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class UndeliverableDocumentSigningRequest {
  UndeliverableDocumentSigningRequest({
    this.documentId,
    this.reason,
  });

  factory UndeliverableDocumentSigningRequest.fromJson(
          Map<String, dynamic> json) =>
      _$UndeliverableDocumentSigningRequestFromJson(json);

  static const toJsonFactory = _$UndeliverableDocumentSigningRequestToJson;
  Map<String, dynamic> toJson() =>
      _$UndeliverableDocumentSigningRequestToJson(this);

  @JsonKey(name: 'documentId', defaultValue: '')
  final String? documentId;
  @JsonKey(name: 'reason', defaultValue: '')
  final String? reason;
  static const fromJsonFactory = _$UndeliverableDocumentSigningRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UndeliverableDocumentSigningRequest &&
            (identical(other.documentId, documentId) ||
                const DeepCollectionEquality()
                    .equals(other.documentId, documentId)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(documentId) ^
      const DeepCollectionEquality().hash(reason) ^
      runtimeType.hashCode;
}

extension $UndeliverableDocumentSigningRequestExtension
    on UndeliverableDocumentSigningRequest {
  UndeliverableDocumentSigningRequest copyWith(
      {String? documentId, String? reason}) {
    return UndeliverableDocumentSigningRequest(
        documentId: documentId ?? this.documentId,
        reason: reason ?? this.reason);
  }

  UndeliverableDocumentSigningRequest copyWithWrapped(
      {Wrapped<String?>? documentId, Wrapped<String?>? reason}) {
    return UndeliverableDocumentSigningRequest(
        documentId: (documentId != null ? documentId.value : this.documentId),
        reason: (reason != null ? reason.value : this.reason));
  }
}

@JsonSerializable(explicitToJson: true)
class UndeliverableDocumentSigningResponse {
  UndeliverableDocumentSigningResponse({
    this.status,
    this.message,
  });

  factory UndeliverableDocumentSigningResponse.fromJson(
          Map<String, dynamic> json) =>
      _$UndeliverableDocumentSigningResponseFromJson(json);

  static const toJsonFactory = _$UndeliverableDocumentSigningResponseToJson;
  Map<String, dynamic> toJson() =>
      _$UndeliverableDocumentSigningResponseToJson(this);

  @JsonKey(name: 'status')
  final bool? status;
  @JsonKey(name: 'message', defaultValue: '')
  final String? message;
  static const fromJsonFactory = _$UndeliverableDocumentSigningResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UndeliverableDocumentSigningResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $UndeliverableDocumentSigningResponseExtension
    on UndeliverableDocumentSigningResponse {
  UndeliverableDocumentSigningResponse copyWith(
      {bool? status, String? message}) {
    return UndeliverableDocumentSigningResponse(
        status: status ?? this.status, message: message ?? this.message);
  }

  UndeliverableDocumentSigningResponse copyWithWrapped(
      {Wrapped<bool?>? status, Wrapped<String?>? message}) {
    return UndeliverableDocumentSigningResponse(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class UploadAttachmentRequest {
  UploadAttachmentRequest({
    this.id,
    this.documentIds,
    required this.b64Image,
    required this.dateTime,
    required this.name,
    this.entityIdentifier,
    this.entity,
    this.additionalData,
  });

  factory UploadAttachmentRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadAttachmentRequestFromJson(json);

  static const toJsonFactory = _$UploadAttachmentRequestToJson;
  Map<String, dynamic> toJson() => _$UploadAttachmentRequestToJson(this);

  @JsonKey(name: 'id', defaultValue: '')
  final String? id;
  @JsonKey(name: 'documentIds', defaultValue: <String>[])
  final List<String>? documentIds;
  @JsonKey(name: 'b64Image', defaultValue: '')
  final String b64Image;
  @JsonKey(name: 'dateTime')
  final DateTime dateTime;
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @JsonKey(name: 'entityIdentifier', defaultValue: '')
  final String? entityIdentifier;
  @JsonKey(name: 'entity', defaultValue: '')
  final String? entity;
  @JsonKey(name: 'additionalData')
  final Map<String, dynamic>? additionalData;
  static const fromJsonFactory = _$UploadAttachmentRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UploadAttachmentRequest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.documentIds, documentIds) ||
                const DeepCollectionEquality()
                    .equals(other.documentIds, documentIds)) &&
            (identical(other.b64Image, b64Image) ||
                const DeepCollectionEquality()
                    .equals(other.b64Image, b64Image)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.entityIdentifier, entityIdentifier) ||
                const DeepCollectionEquality()
                    .equals(other.entityIdentifier, entityIdentifier)) &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)) &&
            (identical(other.additionalData, additionalData) ||
                const DeepCollectionEquality()
                    .equals(other.additionalData, additionalData)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(documentIds) ^
      const DeepCollectionEquality().hash(b64Image) ^
      const DeepCollectionEquality().hash(dateTime) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(entityIdentifier) ^
      const DeepCollectionEquality().hash(entity) ^
      const DeepCollectionEquality().hash(additionalData) ^
      runtimeType.hashCode;
}

extension $UploadAttachmentRequestExtension on UploadAttachmentRequest {
  UploadAttachmentRequest copyWith(
      {String? id,
      List<String>? documentIds,
      String? b64Image,
      DateTime? dateTime,
      String? name,
      String? entityIdentifier,
      String? entity,
      Map<String, dynamic>? additionalData}) {
    return UploadAttachmentRequest(
        id: id ?? this.id,
        documentIds: documentIds ?? this.documentIds,
        b64Image: b64Image ?? this.b64Image,
        dateTime: dateTime ?? this.dateTime,
        name: name ?? this.name,
        entityIdentifier: entityIdentifier ?? this.entityIdentifier,
        entity: entity ?? this.entity,
        additionalData: additionalData ?? this.additionalData);
  }

  UploadAttachmentRequest copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<List<String>?>? documentIds,
      Wrapped<String>? b64Image,
      Wrapped<DateTime>? dateTime,
      Wrapped<String>? name,
      Wrapped<String?>? entityIdentifier,
      Wrapped<String?>? entity,
      Wrapped<Map<String, dynamic>?>? additionalData}) {
    return UploadAttachmentRequest(
        id: (id != null ? id.value : this.id),
        documentIds:
            (documentIds != null ? documentIds.value : this.documentIds),
        b64Image: (b64Image != null ? b64Image.value : this.b64Image),
        dateTime: (dateTime != null ? dateTime.value : this.dateTime),
        name: (name != null ? name.value : this.name),
        entityIdentifier: (entityIdentifier != null
            ? entityIdentifier.value
            : this.entityIdentifier),
        entity: (entity != null ? entity.value : this.entity),
        additionalData: (additionalData != null
            ? additionalData.value
            : this.additionalData));
  }
}

@JsonSerializable(explicitToJson: true)
class ClientSignatureResponse {
  ClientSignatureResponse({
    this.status,
    this.message,
  });

  factory ClientSignatureResponse.fromJson(Map<String, dynamic> json) =>
      _$ClientSignatureResponseFromJson(json);

  static const toJsonFactory = _$ClientSignatureResponseToJson;
  Map<String, dynamic> toJson() => _$ClientSignatureResponseToJson(this);

  @JsonKey(name: 'status')
  final bool? status;
  @JsonKey(name: 'message', defaultValue: '')
  final String? message;
  static const fromJsonFactory = _$ClientSignatureResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClientSignatureResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $ClientSignatureResponseExtension on ClientSignatureResponse {
  ClientSignatureResponse copyWith({bool? status, String? message}) {
    return ClientSignatureResponse(
        status: status ?? this.status, message: message ?? this.message);
  }

  ClientSignatureResponse copyWithWrapped(
      {Wrapped<bool?>? status, Wrapped<String?>? message}) {
    return ClientSignatureResponse(
        status: (status != null ? status.value : this.status),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentSigningUpload {
  DocumentSigningUpload({
    this.signingRequestId,
    this.signatoryName,
    this.signatoryPhoneNo,
    this.signatoryEmail,
    this.signatoryCountry,
    this.signatoryPostCode,
    this.signatoryCity,
    this.signatoryAddress,
    this.externalDocumentId,
    this.hasResources,
    this.numberOfRejectedImages,
  });

  factory DocumentSigningUpload.fromJson(Map<String, dynamic> json) =>
      _$DocumentSigningUploadFromJson(json);

  static const toJsonFactory = _$DocumentSigningUploadToJson;
  Map<String, dynamic> toJson() => _$DocumentSigningUploadToJson(this);

  @JsonKey(name: 'signingRequestId', defaultValue: '')
  final String? signingRequestId;
  @JsonKey(name: 'signatoryName', defaultValue: '')
  final String? signatoryName;
  @JsonKey(name: 'signatoryPhoneNo', defaultValue: '')
  final String? signatoryPhoneNo;
  @JsonKey(name: 'signatoryEmail', defaultValue: '')
  final String? signatoryEmail;
  @JsonKey(name: 'signatoryCountry', defaultValue: '')
  final String? signatoryCountry;
  @JsonKey(name: 'signatoryPostCode', defaultValue: '')
  final String? signatoryPostCode;
  @JsonKey(name: 'signatoryCity', defaultValue: '')
  final String? signatoryCity;
  @JsonKey(name: 'signatoryAddress', defaultValue: '')
  final String? signatoryAddress;
  @JsonKey(name: 'externalDocumentId', defaultValue: '')
  final String? externalDocumentId;
  @JsonKey(name: 'hasResources')
  final bool? hasResources;
  @JsonKey(name: 'numberOfRejectedImages', defaultValue: 0)
  final int? numberOfRejectedImages;
  static const fromJsonFactory = _$DocumentSigningUploadFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentSigningUpload &&
            (identical(other.signingRequestId, signingRequestId) ||
                const DeepCollectionEquality()
                    .equals(other.signingRequestId, signingRequestId)) &&
            (identical(other.signatoryName, signatoryName) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryName, signatoryName)) &&
            (identical(other.signatoryPhoneNo, signatoryPhoneNo) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryPhoneNo, signatoryPhoneNo)) &&
            (identical(other.signatoryEmail, signatoryEmail) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryEmail, signatoryEmail)) &&
            (identical(other.signatoryCountry, signatoryCountry) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryCountry, signatoryCountry)) &&
            (identical(other.signatoryPostCode, signatoryPostCode) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryPostCode, signatoryPostCode)) &&
            (identical(other.signatoryCity, signatoryCity) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryCity, signatoryCity)) &&
            (identical(other.signatoryAddress, signatoryAddress) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryAddress, signatoryAddress)) &&
            (identical(other.externalDocumentId, externalDocumentId) ||
                const DeepCollectionEquality()
                    .equals(other.externalDocumentId, externalDocumentId)) &&
            (identical(other.hasResources, hasResources) ||
                const DeepCollectionEquality()
                    .equals(other.hasResources, hasResources)) &&
            (identical(other.numberOfRejectedImages, numberOfRejectedImages) ||
                const DeepCollectionEquality().equals(
                    other.numberOfRejectedImages, numberOfRejectedImages)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(signingRequestId) ^
      const DeepCollectionEquality().hash(signatoryName) ^
      const DeepCollectionEquality().hash(signatoryPhoneNo) ^
      const DeepCollectionEquality().hash(signatoryEmail) ^
      const DeepCollectionEquality().hash(signatoryCountry) ^
      const DeepCollectionEquality().hash(signatoryPostCode) ^
      const DeepCollectionEquality().hash(signatoryCity) ^
      const DeepCollectionEquality().hash(signatoryAddress) ^
      const DeepCollectionEquality().hash(externalDocumentId) ^
      const DeepCollectionEquality().hash(hasResources) ^
      const DeepCollectionEquality().hash(numberOfRejectedImages) ^
      runtimeType.hashCode;
}

extension $DocumentSigningUploadExtension on DocumentSigningUpload {
  DocumentSigningUpload copyWith(
      {String? signingRequestId,
      String? signatoryName,
      String? signatoryPhoneNo,
      String? signatoryEmail,
      String? signatoryCountry,
      String? signatoryPostCode,
      String? signatoryCity,
      String? signatoryAddress,
      String? externalDocumentId,
      bool? hasResources,
      int? numberOfRejectedImages}) {
    return DocumentSigningUpload(
        signingRequestId: signingRequestId ?? this.signingRequestId,
        signatoryName: signatoryName ?? this.signatoryName,
        signatoryPhoneNo: signatoryPhoneNo ?? this.signatoryPhoneNo,
        signatoryEmail: signatoryEmail ?? this.signatoryEmail,
        signatoryCountry: signatoryCountry ?? this.signatoryCountry,
        signatoryPostCode: signatoryPostCode ?? this.signatoryPostCode,
        signatoryCity: signatoryCity ?? this.signatoryCity,
        signatoryAddress: signatoryAddress ?? this.signatoryAddress,
        externalDocumentId: externalDocumentId ?? this.externalDocumentId,
        hasResources: hasResources ?? this.hasResources,
        numberOfRejectedImages:
            numberOfRejectedImages ?? this.numberOfRejectedImages);
  }

  DocumentSigningUpload copyWithWrapped(
      {Wrapped<String?>? signingRequestId,
      Wrapped<String?>? signatoryName,
      Wrapped<String?>? signatoryPhoneNo,
      Wrapped<String?>? signatoryEmail,
      Wrapped<String?>? signatoryCountry,
      Wrapped<String?>? signatoryPostCode,
      Wrapped<String?>? signatoryCity,
      Wrapped<String?>? signatoryAddress,
      Wrapped<String?>? externalDocumentId,
      Wrapped<bool?>? hasResources,
      Wrapped<int?>? numberOfRejectedImages}) {
    return DocumentSigningUpload(
        signingRequestId: (signingRequestId != null
            ? signingRequestId.value
            : this.signingRequestId),
        signatoryName:
            (signatoryName != null ? signatoryName.value : this.signatoryName),
        signatoryPhoneNo: (signatoryPhoneNo != null
            ? signatoryPhoneNo.value
            : this.signatoryPhoneNo),
        signatoryEmail: (signatoryEmail != null
            ? signatoryEmail.value
            : this.signatoryEmail),
        signatoryCountry: (signatoryCountry != null
            ? signatoryCountry.value
            : this.signatoryCountry),
        signatoryPostCode: (signatoryPostCode != null
            ? signatoryPostCode.value
            : this.signatoryPostCode),
        signatoryCity:
            (signatoryCity != null ? signatoryCity.value : this.signatoryCity),
        signatoryAddress: (signatoryAddress != null
            ? signatoryAddress.value
            : this.signatoryAddress),
        externalDocumentId: (externalDocumentId != null
            ? externalDocumentId.value
            : this.externalDocumentId),
        hasResources:
            (hasResources != null ? hasResources.value : this.hasResources),
        numberOfRejectedImages: (numberOfRejectedImages != null
            ? numberOfRejectedImages.value
            : this.numberOfRejectedImages));
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentSigningUploadResponse {
  DocumentSigningUploadResponse({
    this.id,
  });

  factory DocumentSigningUploadResponse.fromJson(Map<String, dynamic> json) =>
      _$DocumentSigningUploadResponseFromJson(json);

  static const toJsonFactory = _$DocumentSigningUploadResponseToJson;
  Map<String, dynamic> toJson() => _$DocumentSigningUploadResponseToJson(this);

  @JsonKey(name: 'id', defaultValue: '')
  final String? id;
  static const fromJsonFactory = _$DocumentSigningUploadResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentSigningUploadResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^ runtimeType.hashCode;
}

extension $DocumentSigningUploadResponseExtension
    on DocumentSigningUploadResponse {
  DocumentSigningUploadResponse copyWith({String? id}) {
    return DocumentSigningUploadResponse(id: id ?? this.id);
  }

  DocumentSigningUploadResponse copyWithWrapped({Wrapped<String?>? id}) {
    return DocumentSigningUploadResponse(id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class UploadResourceRequest {
  UploadResourceRequest({
    this.documentId,
    this.signatoryName,
    this.signatoryPhoneNo,
    this.signatoryEmail,
    this.signatoryCountry,
    this.signatoryPostCode,
    this.signatoryCity,
    this.signatoryAddress,
    this.externalResourceId,
    this.externalDocumentId,
  });

  factory UploadResourceRequest.fromJson(Map<String, dynamic> json) =>
      _$UploadResourceRequestFromJson(json);

  static const toJsonFactory = _$UploadResourceRequestToJson;
  Map<String, dynamic> toJson() => _$UploadResourceRequestToJson(this);

  @JsonKey(name: 'documentId', defaultValue: '')
  final String? documentId;
  @JsonKey(name: 'signatoryName', defaultValue: '')
  final String? signatoryName;
  @JsonKey(name: 'signatoryPhoneNo', defaultValue: '')
  final String? signatoryPhoneNo;
  @JsonKey(name: 'signatoryEmail', defaultValue: '')
  final String? signatoryEmail;
  @JsonKey(name: 'signatoryCountry', defaultValue: '')
  final String? signatoryCountry;
  @JsonKey(name: 'signatoryPostCode', defaultValue: '')
  final String? signatoryPostCode;
  @JsonKey(name: 'signatoryCity', defaultValue: '')
  final String? signatoryCity;
  @JsonKey(name: 'signatoryAddress', defaultValue: '')
  final String? signatoryAddress;
  @JsonKey(name: 'externalResourceId', defaultValue: '')
  final String? externalResourceId;
  @JsonKey(name: 'externalDocumentId', defaultValue: '')
  final String? externalDocumentId;
  static const fromJsonFactory = _$UploadResourceRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UploadResourceRequest &&
            (identical(other.documentId, documentId) ||
                const DeepCollectionEquality()
                    .equals(other.documentId, documentId)) &&
            (identical(other.signatoryName, signatoryName) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryName, signatoryName)) &&
            (identical(other.signatoryPhoneNo, signatoryPhoneNo) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryPhoneNo, signatoryPhoneNo)) &&
            (identical(other.signatoryEmail, signatoryEmail) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryEmail, signatoryEmail)) &&
            (identical(other.signatoryCountry, signatoryCountry) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryCountry, signatoryCountry)) &&
            (identical(other.signatoryPostCode, signatoryPostCode) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryPostCode, signatoryPostCode)) &&
            (identical(other.signatoryCity, signatoryCity) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryCity, signatoryCity)) &&
            (identical(other.signatoryAddress, signatoryAddress) ||
                const DeepCollectionEquality()
                    .equals(other.signatoryAddress, signatoryAddress)) &&
            (identical(other.externalResourceId, externalResourceId) ||
                const DeepCollectionEquality()
                    .equals(other.externalResourceId, externalResourceId)) &&
            (identical(other.externalDocumentId, externalDocumentId) ||
                const DeepCollectionEquality()
                    .equals(other.externalDocumentId, externalDocumentId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(documentId) ^
      const DeepCollectionEquality().hash(signatoryName) ^
      const DeepCollectionEquality().hash(signatoryPhoneNo) ^
      const DeepCollectionEquality().hash(signatoryEmail) ^
      const DeepCollectionEquality().hash(signatoryCountry) ^
      const DeepCollectionEquality().hash(signatoryPostCode) ^
      const DeepCollectionEquality().hash(signatoryCity) ^
      const DeepCollectionEquality().hash(signatoryAddress) ^
      const DeepCollectionEquality().hash(externalResourceId) ^
      const DeepCollectionEquality().hash(externalDocumentId) ^
      runtimeType.hashCode;
}

extension $UploadResourceRequestExtension on UploadResourceRequest {
  UploadResourceRequest copyWith(
      {String? documentId,
      String? signatoryName,
      String? signatoryPhoneNo,
      String? signatoryEmail,
      String? signatoryCountry,
      String? signatoryPostCode,
      String? signatoryCity,
      String? signatoryAddress,
      String? externalResourceId,
      String? externalDocumentId}) {
    return UploadResourceRequest(
        documentId: documentId ?? this.documentId,
        signatoryName: signatoryName ?? this.signatoryName,
        signatoryPhoneNo: signatoryPhoneNo ?? this.signatoryPhoneNo,
        signatoryEmail: signatoryEmail ?? this.signatoryEmail,
        signatoryCountry: signatoryCountry ?? this.signatoryCountry,
        signatoryPostCode: signatoryPostCode ?? this.signatoryPostCode,
        signatoryCity: signatoryCity ?? this.signatoryCity,
        signatoryAddress: signatoryAddress ?? this.signatoryAddress,
        externalResourceId: externalResourceId ?? this.externalResourceId,
        externalDocumentId: externalDocumentId ?? this.externalDocumentId);
  }

  UploadResourceRequest copyWithWrapped(
      {Wrapped<String?>? documentId,
      Wrapped<String?>? signatoryName,
      Wrapped<String?>? signatoryPhoneNo,
      Wrapped<String?>? signatoryEmail,
      Wrapped<String?>? signatoryCountry,
      Wrapped<String?>? signatoryPostCode,
      Wrapped<String?>? signatoryCity,
      Wrapped<String?>? signatoryAddress,
      Wrapped<String?>? externalResourceId,
      Wrapped<String?>? externalDocumentId}) {
    return UploadResourceRequest(
        documentId: (documentId != null ? documentId.value : this.documentId),
        signatoryName:
            (signatoryName != null ? signatoryName.value : this.signatoryName),
        signatoryPhoneNo: (signatoryPhoneNo != null
            ? signatoryPhoneNo.value
            : this.signatoryPhoneNo),
        signatoryEmail: (signatoryEmail != null
            ? signatoryEmail.value
            : this.signatoryEmail),
        signatoryCountry: (signatoryCountry != null
            ? signatoryCountry.value
            : this.signatoryCountry),
        signatoryPostCode: (signatoryPostCode != null
            ? signatoryPostCode.value
            : this.signatoryPostCode),
        signatoryCity:
            (signatoryCity != null ? signatoryCity.value : this.signatoryCity),
        signatoryAddress: (signatoryAddress != null
            ? signatoryAddress.value
            : this.signatoryAddress),
        externalResourceId: (externalResourceId != null
            ? externalResourceId.value
            : this.externalResourceId),
        externalDocumentId: (externalDocumentId != null
            ? externalDocumentId.value
            : this.externalDocumentId));
  }
}

@JsonSerializable(explicitToJson: true)
class UploadResourceResponse {
  UploadResourceResponse({
    this.id,
    this.documentId,
    this.qrCode,
    this.token,
  });

  factory UploadResourceResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadResourceResponseFromJson(json);

  static const toJsonFactory = _$UploadResourceResponseToJson;
  Map<String, dynamic> toJson() => _$UploadResourceResponseToJson(this);

  @JsonKey(name: 'id', defaultValue: '')
  final String? id;
  @JsonKey(name: 'documentId', defaultValue: '')
  final String? documentId;
  @JsonKey(name: 'qrCode', defaultValue: '')
  final String? qrCode;
  @JsonKey(name: 'token', defaultValue: '')
  final String? token;
  static const fromJsonFactory = _$UploadResourceResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UploadResourceResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.documentId, documentId) ||
                const DeepCollectionEquality()
                    .equals(other.documentId, documentId)) &&
            (identical(other.qrCode, qrCode) ||
                const DeepCollectionEquality().equals(other.qrCode, qrCode)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(documentId) ^
      const DeepCollectionEquality().hash(qrCode) ^
      const DeepCollectionEquality().hash(token) ^
      runtimeType.hashCode;
}

extension $UploadResourceResponseExtension on UploadResourceResponse {
  UploadResourceResponse copyWith(
      {String? id, String? documentId, String? qrCode, String? token}) {
    return UploadResourceResponse(
        id: id ?? this.id,
        documentId: documentId ?? this.documentId,
        qrCode: qrCode ?? this.qrCode,
        token: token ?? this.token);
  }

  UploadResourceResponse copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? documentId,
      Wrapped<String?>? qrCode,
      Wrapped<String?>? token}) {
    return UploadResourceResponse(
        id: (id != null ? id.value : this.id),
        documentId: (documentId != null ? documentId.value : this.documentId),
        qrCode: (qrCode != null ? qrCode.value : this.qrCode),
        token: (token != null ? token.value : this.token));
  }
}

@JsonSerializable(explicitToJson: true)
class MetaData {
  MetaData({
    this.created,
    this.updated,
    this.createdBy,
    this.updatedBy,
  });

  factory MetaData.fromJson(Map<String, dynamic> json) =>
      _$MetaDataFromJson(json);

  static const toJsonFactory = _$MetaDataToJson;
  Map<String, dynamic> toJson() => _$MetaDataToJson(this);

  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'updated')
  final DateTime? updated;
  @JsonKey(name: 'createdBy', defaultValue: '')
  final String? createdBy;
  @JsonKey(name: 'updatedBy', defaultValue: '')
  final String? updatedBy;
  static const fromJsonFactory = _$MetaDataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MetaData &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.updated, updated) ||
                const DeepCollectionEquality()
                    .equals(other.updated, updated)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.updatedBy, updatedBy) ||
                const DeepCollectionEquality()
                    .equals(other.updatedBy, updatedBy)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(updated) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(updatedBy) ^
      runtimeType.hashCode;
}

extension $MetaDataExtension on MetaData {
  MetaData copyWith(
      {DateTime? created,
      DateTime? updated,
      String? createdBy,
      String? updatedBy}) {
    return MetaData(
        created: created ?? this.created,
        updated: updated ?? this.updated,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy);
  }

  MetaData copyWithWrapped(
      {Wrapped<DateTime?>? created,
      Wrapped<DateTime?>? updated,
      Wrapped<String?>? createdBy,
      Wrapped<String?>? updatedBy}) {
    return MetaData(
        created: (created != null ? created.value : this.created),
        updated: (updated != null ? updated.value : this.updated),
        createdBy: (createdBy != null ? createdBy.value : this.createdBy),
        updatedBy: (updatedBy != null ? updatedBy.value : this.updatedBy));
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentMoveRequest {
  DocumentMoveRequest({
    required this.namespace,
    this.eTag,
    this.id,
    this.metaData,
    this.key,
  });

  factory DocumentMoveRequest.fromJson(Map<String, dynamic> json) =>
      _$DocumentMoveRequestFromJson(json);

  static const toJsonFactory = _$DocumentMoveRequestToJson;
  Map<String, dynamic> toJson() => _$DocumentMoveRequestToJson(this);

  @JsonKey(name: 'namespace', defaultValue: '')
  final String namespace;
  @JsonKey(name: 'eTag', defaultValue: '')
  final String? eTag;
  @JsonKey(name: 'id', defaultValue: '')
  final String? id;
  @JsonKey(name: 'metaData')
  final MetaData? metaData;
  @JsonKey(name: 'key', defaultValue: '')
  final String? key;
  static const fromJsonFactory = _$DocumentMoveRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentMoveRequest &&
            (identical(other.namespace, namespace) ||
                const DeepCollectionEquality()
                    .equals(other.namespace, namespace)) &&
            (identical(other.eTag, eTag) ||
                const DeepCollectionEquality().equals(other.eTag, eTag)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.metaData, metaData) ||
                const DeepCollectionEquality()
                    .equals(other.metaData, metaData)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(namespace) ^
      const DeepCollectionEquality().hash(eTag) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(metaData) ^
      const DeepCollectionEquality().hash(key) ^
      runtimeType.hashCode;
}

extension $DocumentMoveRequestExtension on DocumentMoveRequest {
  DocumentMoveRequest copyWith(
      {String? namespace,
      String? eTag,
      String? id,
      MetaData? metaData,
      String? key}) {
    return DocumentMoveRequest(
        namespace: namespace ?? this.namespace,
        eTag: eTag ?? this.eTag,
        id: id ?? this.id,
        metaData: metaData ?? this.metaData,
        key: key ?? this.key);
  }

  DocumentMoveRequest copyWithWrapped(
      {Wrapped<String>? namespace,
      Wrapped<String?>? eTag,
      Wrapped<String?>? id,
      Wrapped<MetaData?>? metaData,
      Wrapped<String?>? key}) {
    return DocumentMoveRequest(
        namespace: (namespace != null ? namespace.value : this.namespace),
        eTag: (eTag != null ? eTag.value : this.eTag),
        id: (id != null ? id.value : this.id),
        metaData: (metaData != null ? metaData.value : this.metaData),
        key: (key != null ? key.value : this.key));
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentMoveResponse {
  DocumentMoveResponse({
    this.status,
    this.key,
  });

  factory DocumentMoveResponse.fromJson(Map<String, dynamic> json) =>
      _$DocumentMoveResponseFromJson(json);

  static const toJsonFactory = _$DocumentMoveResponseToJson;
  Map<String, dynamic> toJson() => _$DocumentMoveResponseToJson(this);

  @JsonKey(name: 'status')
  final bool? status;
  @JsonKey(name: 'key', defaultValue: '')
  final String? key;
  static const fromJsonFactory = _$DocumentMoveResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentMoveResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(key) ^
      runtimeType.hashCode;
}

extension $DocumentMoveResponseExtension on DocumentMoveResponse {
  DocumentMoveResponse copyWith({bool? status, String? key}) {
    return DocumentMoveResponse(
        status: status ?? this.status, key: key ?? this.key);
  }

  DocumentMoveResponse copyWithWrapped(
      {Wrapped<bool?>? status, Wrapped<String?>? key}) {
    return DocumentMoveResponse(
        status: (status != null ? status.value : this.status),
        key: (key != null ? key.value : this.key));
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentMetadata {
  DocumentMetadata({
    this.name,
    this.value,
    this.key,
  });

  factory DocumentMetadata.fromJson(Map<String, dynamic> json) =>
      _$DocumentMetadataFromJson(json);

  static const toJsonFactory = _$DocumentMetadataToJson;
  Map<String, dynamic> toJson() => _$DocumentMetadataToJson(this);

  @JsonKey(name: 'name', defaultValue: '')
  final String? name;
  @JsonKey(name: 'value', defaultValue: '')
  final String? value;
  @JsonKey(name: 'key', defaultValue: '')
  final String? key;
  static const fromJsonFactory = _$DocumentMetadataFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentMetadata &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(key) ^
      runtimeType.hashCode;
}

extension $DocumentMetadataExtension on DocumentMetadata {
  DocumentMetadata copyWith({String? name, String? value, String? key}) {
    return DocumentMetadata(
        name: name ?? this.name,
        value: value ?? this.value,
        key: key ?? this.key);
  }

  DocumentMetadata copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? value,
      Wrapped<String?>? key}) {
    return DocumentMetadata(
        name: (name != null ? name.value : this.name),
        value: (value != null ? value.value : this.value),
        key: (key != null ? key.value : this.key));
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentSearchRequest {
  DocumentSearchRequest({
    this.description,
    this.namespace,
    this.fileName,
    this.mimeType,
    this.startingDate,
    this.endingDate,
    this.documentMetadata,
    this.eTag,
    this.id,
    this.metaData,
    this.key,
  });

  factory DocumentSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$DocumentSearchRequestFromJson(json);

  static const toJsonFactory = _$DocumentSearchRequestToJson;
  Map<String, dynamic> toJson() => _$DocumentSearchRequestToJson(this);

  @JsonKey(name: 'description', defaultValue: '')
  final String? description;
  @JsonKey(name: 'namespace', defaultValue: '')
  final String? namespace;
  @JsonKey(name: 'fileName', defaultValue: '')
  final String? fileName;
  @JsonKey(name: 'mimeType', defaultValue: '')
  final String? mimeType;
  @JsonKey(name: 'startingDate')
  final DateTime? startingDate;
  @JsonKey(name: 'endingDate')
  final DateTime? endingDate;
  @JsonKey(name: 'documentMetadata', defaultValue: <DocumentMetadata>[])
  final List<DocumentMetadata>? documentMetadata;
  @JsonKey(name: 'eTag', defaultValue: '')
  final String? eTag;
  @JsonKey(name: 'id', defaultValue: '')
  final String? id;
  @JsonKey(name: 'metaData')
  final MetaData? metaData;
  @JsonKey(name: 'key', defaultValue: '')
  final String? key;
  static const fromJsonFactory = _$DocumentSearchRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentSearchRequest &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.namespace, namespace) ||
                const DeepCollectionEquality()
                    .equals(other.namespace, namespace)) &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality()
                    .equals(other.fileName, fileName)) &&
            (identical(other.mimeType, mimeType) ||
                const DeepCollectionEquality()
                    .equals(other.mimeType, mimeType)) &&
            (identical(other.startingDate, startingDate) ||
                const DeepCollectionEquality()
                    .equals(other.startingDate, startingDate)) &&
            (identical(other.endingDate, endingDate) ||
                const DeepCollectionEquality()
                    .equals(other.endingDate, endingDate)) &&
            (identical(other.documentMetadata, documentMetadata) ||
                const DeepCollectionEquality()
                    .equals(other.documentMetadata, documentMetadata)) &&
            (identical(other.eTag, eTag) ||
                const DeepCollectionEquality().equals(other.eTag, eTag)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.metaData, metaData) ||
                const DeepCollectionEquality()
                    .equals(other.metaData, metaData)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(namespace) ^
      const DeepCollectionEquality().hash(fileName) ^
      const DeepCollectionEquality().hash(mimeType) ^
      const DeepCollectionEquality().hash(startingDate) ^
      const DeepCollectionEquality().hash(endingDate) ^
      const DeepCollectionEquality().hash(documentMetadata) ^
      const DeepCollectionEquality().hash(eTag) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(metaData) ^
      const DeepCollectionEquality().hash(key) ^
      runtimeType.hashCode;
}

extension $DocumentSearchRequestExtension on DocumentSearchRequest {
  DocumentSearchRequest copyWith(
      {String? description,
      String? namespace,
      String? fileName,
      String? mimeType,
      DateTime? startingDate,
      DateTime? endingDate,
      List<DocumentMetadata>? documentMetadata,
      String? eTag,
      String? id,
      MetaData? metaData,
      String? key}) {
    return DocumentSearchRequest(
        description: description ?? this.description,
        namespace: namespace ?? this.namespace,
        fileName: fileName ?? this.fileName,
        mimeType: mimeType ?? this.mimeType,
        startingDate: startingDate ?? this.startingDate,
        endingDate: endingDate ?? this.endingDate,
        documentMetadata: documentMetadata ?? this.documentMetadata,
        eTag: eTag ?? this.eTag,
        id: id ?? this.id,
        metaData: metaData ?? this.metaData,
        key: key ?? this.key);
  }

  DocumentSearchRequest copyWithWrapped(
      {Wrapped<String?>? description,
      Wrapped<String?>? namespace,
      Wrapped<String?>? fileName,
      Wrapped<String?>? mimeType,
      Wrapped<DateTime?>? startingDate,
      Wrapped<DateTime?>? endingDate,
      Wrapped<List<DocumentMetadata>?>? documentMetadata,
      Wrapped<String?>? eTag,
      Wrapped<String?>? id,
      Wrapped<MetaData?>? metaData,
      Wrapped<String?>? key}) {
    return DocumentSearchRequest(
        description:
            (description != null ? description.value : this.description),
        namespace: (namespace != null ? namespace.value : this.namespace),
        fileName: (fileName != null ? fileName.value : this.fileName),
        mimeType: (mimeType != null ? mimeType.value : this.mimeType),
        startingDate:
            (startingDate != null ? startingDate.value : this.startingDate),
        endingDate: (endingDate != null ? endingDate.value : this.endingDate),
        documentMetadata: (documentMetadata != null
            ? documentMetadata.value
            : this.documentMetadata),
        eTag: (eTag != null ? eTag.value : this.eTag),
        id: (id != null ? id.value : this.id),
        metaData: (metaData != null ? metaData.value : this.metaData),
        key: (key != null ? key.value : this.key));
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentGeolocation {
  DocumentGeolocation({
    this.latitude,
    this.longitude,
  });

  factory DocumentGeolocation.fromJson(Map<String, dynamic> json) =>
      _$DocumentGeolocationFromJson(json);

  static const toJsonFactory = _$DocumentGeolocationToJson;
  Map<String, dynamic> toJson() => _$DocumentGeolocationToJson(this);

  @JsonKey(name: 'latitude')
  final double? latitude;
  @JsonKey(name: 'longitude')
  final double? longitude;
  static const fromJsonFactory = _$DocumentGeolocationFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentGeolocation &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      runtimeType.hashCode;
}

extension $DocumentGeolocationExtension on DocumentGeolocation {
  DocumentGeolocation copyWith({double? latitude, double? longitude}) {
    return DocumentGeolocation(
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude);
  }

  DocumentGeolocation copyWithWrapped(
      {Wrapped<double?>? latitude, Wrapped<double?>? longitude}) {
    return DocumentGeolocation(
        latitude: (latitude != null ? latitude.value : this.latitude),
        longitude: (longitude != null ? longitude.value : this.longitude));
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentDownloadToken {
  DocumentDownloadToken({
    this.token,
    this.enabled,
    this.hasPersistentToken,
    this.created,
    this.validTo,
    this.key,
  });

  factory DocumentDownloadToken.fromJson(Map<String, dynamic> json) =>
      _$DocumentDownloadTokenFromJson(json);

  static const toJsonFactory = _$DocumentDownloadTokenToJson;
  Map<String, dynamic> toJson() => _$DocumentDownloadTokenToJson(this);

  @JsonKey(name: 'token', defaultValue: '')
  final String? token;
  @JsonKey(name: 'enabled')
  final bool? enabled;
  @JsonKey(name: 'hasPersistentToken')
  final bool? hasPersistentToken;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'validTo')
  final DateTime? validTo;
  @JsonKey(name: 'key', defaultValue: '')
  final String? key;
  static const fromJsonFactory = _$DocumentDownloadTokenFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentDownloadToken &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.enabled, enabled) ||
                const DeepCollectionEquality()
                    .equals(other.enabled, enabled)) &&
            (identical(other.hasPersistentToken, hasPersistentToken) ||
                const DeepCollectionEquality()
                    .equals(other.hasPersistentToken, hasPersistentToken)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.validTo, validTo) ||
                const DeepCollectionEquality()
                    .equals(other.validTo, validTo)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(enabled) ^
      const DeepCollectionEquality().hash(hasPersistentToken) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(validTo) ^
      const DeepCollectionEquality().hash(key) ^
      runtimeType.hashCode;
}

extension $DocumentDownloadTokenExtension on DocumentDownloadToken {
  DocumentDownloadToken copyWith(
      {String? token,
      bool? enabled,
      bool? hasPersistentToken,
      DateTime? created,
      DateTime? validTo,
      String? key}) {
    return DocumentDownloadToken(
        token: token ?? this.token,
        enabled: enabled ?? this.enabled,
        hasPersistentToken: hasPersistentToken ?? this.hasPersistentToken,
        created: created ?? this.created,
        validTo: validTo ?? this.validTo,
        key: key ?? this.key);
  }

  DocumentDownloadToken copyWithWrapped(
      {Wrapped<String?>? token,
      Wrapped<bool?>? enabled,
      Wrapped<bool?>? hasPersistentToken,
      Wrapped<DateTime?>? created,
      Wrapped<DateTime?>? validTo,
      Wrapped<String?>? key}) {
    return DocumentDownloadToken(
        token: (token != null ? token.value : this.token),
        enabled: (enabled != null ? enabled.value : this.enabled),
        hasPersistentToken: (hasPersistentToken != null
            ? hasPersistentToken.value
            : this.hasPersistentToken),
        created: (created != null ? created.value : this.created),
        validTo: (validTo != null ? validTo.value : this.validTo),
        key: (key != null ? key.value : this.key));
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentSearchResponseItem {
  DocumentSearchResponseItem({
    this.description,
    this.namespace,
    this.fileName,
    this.calculatedMimeType,
    this.mimeType,
    this.encoding,
    this.created,
    this.geolocation,
    this.downloadTokens,
    this.documentMetadata,
    this.eTag,
    this.id,
    this.metaData,
    this.key,
  });

  factory DocumentSearchResponseItem.fromJson(Map<String, dynamic> json) =>
      _$DocumentSearchResponseItemFromJson(json);

  static const toJsonFactory = _$DocumentSearchResponseItemToJson;
  Map<String, dynamic> toJson() => _$DocumentSearchResponseItemToJson(this);

  @JsonKey(name: 'description', defaultValue: '')
  final String? description;
  @JsonKey(name: 'namespace', defaultValue: '')
  final String? namespace;
  @JsonKey(name: 'fileName', defaultValue: '')
  final String? fileName;
  @JsonKey(name: 'calculatedMimeType', defaultValue: '')
  final String? calculatedMimeType;
  @JsonKey(name: 'mimeType', defaultValue: '')
  final String? mimeType;
  @JsonKey(name: 'encoding', defaultValue: '')
  final String? encoding;
  @JsonKey(name: 'created')
  final DateTime? created;
  @JsonKey(name: 'geolocation')
  final DocumentGeolocation? geolocation;
  @JsonKey(name: 'downloadTokens', defaultValue: <DocumentDownloadToken>[])
  final List<DocumentDownloadToken>? downloadTokens;
  @JsonKey(name: 'documentMetadata', defaultValue: <DocumentMetadata>[])
  final List<DocumentMetadata>? documentMetadata;
  @JsonKey(name: 'eTag', defaultValue: '')
  final String? eTag;
  @JsonKey(name: 'id', defaultValue: '')
  final String? id;
  @JsonKey(name: 'metaData')
  final MetaData? metaData;
  @JsonKey(name: 'key', defaultValue: '')
  final String? key;
  static const fromJsonFactory = _$DocumentSearchResponseItemFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentSearchResponseItem &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.namespace, namespace) ||
                const DeepCollectionEquality()
                    .equals(other.namespace, namespace)) &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality()
                    .equals(other.fileName, fileName)) &&
            (identical(other.calculatedMimeType, calculatedMimeType) ||
                const DeepCollectionEquality()
                    .equals(other.calculatedMimeType, calculatedMimeType)) &&
            (identical(other.mimeType, mimeType) ||
                const DeepCollectionEquality()
                    .equals(other.mimeType, mimeType)) &&
            (identical(other.encoding, encoding) ||
                const DeepCollectionEquality()
                    .equals(other.encoding, encoding)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.geolocation, geolocation) ||
                const DeepCollectionEquality()
                    .equals(other.geolocation, geolocation)) &&
            (identical(other.downloadTokens, downloadTokens) ||
                const DeepCollectionEquality()
                    .equals(other.downloadTokens, downloadTokens)) &&
            (identical(other.documentMetadata, documentMetadata) ||
                const DeepCollectionEquality()
                    .equals(other.documentMetadata, documentMetadata)) &&
            (identical(other.eTag, eTag) ||
                const DeepCollectionEquality().equals(other.eTag, eTag)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.metaData, metaData) ||
                const DeepCollectionEquality()
                    .equals(other.metaData, metaData)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(namespace) ^
      const DeepCollectionEquality().hash(fileName) ^
      const DeepCollectionEquality().hash(calculatedMimeType) ^
      const DeepCollectionEquality().hash(mimeType) ^
      const DeepCollectionEquality().hash(encoding) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(geolocation) ^
      const DeepCollectionEquality().hash(downloadTokens) ^
      const DeepCollectionEquality().hash(documentMetadata) ^
      const DeepCollectionEquality().hash(eTag) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(metaData) ^
      const DeepCollectionEquality().hash(key) ^
      runtimeType.hashCode;
}

extension $DocumentSearchResponseItemExtension on DocumentSearchResponseItem {
  DocumentSearchResponseItem copyWith(
      {String? description,
      String? namespace,
      String? fileName,
      String? calculatedMimeType,
      String? mimeType,
      String? encoding,
      DateTime? created,
      DocumentGeolocation? geolocation,
      List<DocumentDownloadToken>? downloadTokens,
      List<DocumentMetadata>? documentMetadata,
      String? eTag,
      String? id,
      MetaData? metaData,
      String? key}) {
    return DocumentSearchResponseItem(
        description: description ?? this.description,
        namespace: namespace ?? this.namespace,
        fileName: fileName ?? this.fileName,
        calculatedMimeType: calculatedMimeType ?? this.calculatedMimeType,
        mimeType: mimeType ?? this.mimeType,
        encoding: encoding ?? this.encoding,
        created: created ?? this.created,
        geolocation: geolocation ?? this.geolocation,
        downloadTokens: downloadTokens ?? this.downloadTokens,
        documentMetadata: documentMetadata ?? this.documentMetadata,
        eTag: eTag ?? this.eTag,
        id: id ?? this.id,
        metaData: metaData ?? this.metaData,
        key: key ?? this.key);
  }

  DocumentSearchResponseItem copyWithWrapped(
      {Wrapped<String?>? description,
      Wrapped<String?>? namespace,
      Wrapped<String?>? fileName,
      Wrapped<String?>? calculatedMimeType,
      Wrapped<String?>? mimeType,
      Wrapped<String?>? encoding,
      Wrapped<DateTime?>? created,
      Wrapped<DocumentGeolocation?>? geolocation,
      Wrapped<List<DocumentDownloadToken>?>? downloadTokens,
      Wrapped<List<DocumentMetadata>?>? documentMetadata,
      Wrapped<String?>? eTag,
      Wrapped<String?>? id,
      Wrapped<MetaData?>? metaData,
      Wrapped<String?>? key}) {
    return DocumentSearchResponseItem(
        description:
            (description != null ? description.value : this.description),
        namespace: (namespace != null ? namespace.value : this.namespace),
        fileName: (fileName != null ? fileName.value : this.fileName),
        calculatedMimeType: (calculatedMimeType != null
            ? calculatedMimeType.value
            : this.calculatedMimeType),
        mimeType: (mimeType != null ? mimeType.value : this.mimeType),
        encoding: (encoding != null ? encoding.value : this.encoding),
        created: (created != null ? created.value : this.created),
        geolocation:
            (geolocation != null ? geolocation.value : this.geolocation),
        downloadTokens: (downloadTokens != null
            ? downloadTokens.value
            : this.downloadTokens),
        documentMetadata: (documentMetadata != null
            ? documentMetadata.value
            : this.documentMetadata),
        eTag: (eTag != null ? eTag.value : this.eTag),
        id: (id != null ? id.value : this.id),
        metaData: (metaData != null ? metaData.value : this.metaData),
        key: (key != null ? key.value : this.key));
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentSearchResponse {
  DocumentSearchResponse({
    this.items,
  });

  factory DocumentSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$DocumentSearchResponseFromJson(json);

  static const toJsonFactory = _$DocumentSearchResponseToJson;
  Map<String, dynamic> toJson() => _$DocumentSearchResponseToJson(this);

  @JsonKey(name: 'items', defaultValue: <DocumentSearchResponseItem>[])
  final List<DocumentSearchResponseItem>? items;
  static const fromJsonFactory = _$DocumentSearchResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentSearchResponse &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(items) ^ runtimeType.hashCode;
}

extension $DocumentSearchResponseExtension on DocumentSearchResponse {
  DocumentSearchResponse copyWith({List<DocumentSearchResponseItem>? items}) {
    return DocumentSearchResponse(items: items ?? this.items);
  }

  DocumentSearchResponse copyWithWrapped(
      {Wrapped<List<DocumentSearchResponseItem>?>? items}) {
    return DocumentSearchResponse(
        items: (items != null ? items.value : this.items));
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentMetadataRequest {
  DocumentMetadataRequest({
    this.action,
    this.documentMetadata,
    this.eTag,
    this.id,
    this.metaData,
    this.key,
  });

  factory DocumentMetadataRequest.fromJson(Map<String, dynamic> json) =>
      _$DocumentMetadataRequestFromJson(json);

  static const toJsonFactory = _$DocumentMetadataRequestToJson;
  Map<String, dynamic> toJson() => _$DocumentMetadataRequestToJson(this);

  @JsonKey(
    name: 'action',
    toJson: documentMetadataRequestActionToJson,
    fromJson: documentMetadataRequestActionFromJson,
  )
  final enums.DocumentMetadataRequestAction? action;
  @JsonKey(name: 'documentMetadata', defaultValue: <DocumentMetadata>[])
  final List<DocumentMetadata>? documentMetadata;
  @JsonKey(name: 'eTag', defaultValue: '')
  final String? eTag;
  @JsonKey(name: 'id', defaultValue: '')
  final String? id;
  @JsonKey(name: 'metaData')
  final MetaData? metaData;
  @JsonKey(name: 'key', defaultValue: '')
  final String? key;
  static const fromJsonFactory = _$DocumentMetadataRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentMetadataRequest &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.documentMetadata, documentMetadata) ||
                const DeepCollectionEquality()
                    .equals(other.documentMetadata, documentMetadata)) &&
            (identical(other.eTag, eTag) ||
                const DeepCollectionEquality().equals(other.eTag, eTag)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.metaData, metaData) ||
                const DeepCollectionEquality()
                    .equals(other.metaData, metaData)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(documentMetadata) ^
      const DeepCollectionEquality().hash(eTag) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(metaData) ^
      const DeepCollectionEquality().hash(key) ^
      runtimeType.hashCode;
}

extension $DocumentMetadataRequestExtension on DocumentMetadataRequest {
  DocumentMetadataRequest copyWith(
      {enums.DocumentMetadataRequestAction? action,
      List<DocumentMetadata>? documentMetadata,
      String? eTag,
      String? id,
      MetaData? metaData,
      String? key}) {
    return DocumentMetadataRequest(
        action: action ?? this.action,
        documentMetadata: documentMetadata ?? this.documentMetadata,
        eTag: eTag ?? this.eTag,
        id: id ?? this.id,
        metaData: metaData ?? this.metaData,
        key: key ?? this.key);
  }

  DocumentMetadataRequest copyWithWrapped(
      {Wrapped<enums.DocumentMetadataRequestAction?>? action,
      Wrapped<List<DocumentMetadata>?>? documentMetadata,
      Wrapped<String?>? eTag,
      Wrapped<String?>? id,
      Wrapped<MetaData?>? metaData,
      Wrapped<String?>? key}) {
    return DocumentMetadataRequest(
        action: (action != null ? action.value : this.action),
        documentMetadata: (documentMetadata != null
            ? documentMetadata.value
            : this.documentMetadata),
        eTag: (eTag != null ? eTag.value : this.eTag),
        id: (id != null ? id.value : this.id),
        metaData: (metaData != null ? metaData.value : this.metaData),
        key: (key != null ? key.value : this.key));
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentMetadataResponse {
  DocumentMetadataResponse({
    this.status,
    this.key,
  });

  factory DocumentMetadataResponse.fromJson(Map<String, dynamic> json) =>
      _$DocumentMetadataResponseFromJson(json);

  static const toJsonFactory = _$DocumentMetadataResponseToJson;
  Map<String, dynamic> toJson() => _$DocumentMetadataResponseToJson(this);

  @JsonKey(name: 'status')
  final bool? status;
  @JsonKey(name: 'key', defaultValue: '')
  final String? key;
  static const fromJsonFactory = _$DocumentMetadataResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocumentMetadataResponse &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(key) ^
      runtimeType.hashCode;
}

extension $DocumentMetadataResponseExtension on DocumentMetadataResponse {
  DocumentMetadataResponse copyWith({bool? status, String? key}) {
    return DocumentMetadataResponse(
        status: status ?? this.status, key: key ?? this.key);
  }

  DocumentMetadataResponse copyWithWrapped(
      {Wrapped<bool?>? status, Wrapped<String?>? key}) {
    return DocumentMetadataResponse(
        status: (status != null ? status.value : this.status),
        key: (key != null ? key.value : this.key));
  }
}

@JsonSerializable(explicitToJson: true)
class DtFormatRequest {
  DtFormatRequest({
    required this.locale,
    required this.value,
  });

  factory DtFormatRequest.fromJson(Map<String, dynamic> json) =>
      _$DtFormatRequestFromJson(json);

  static const toJsonFactory = _$DtFormatRequestToJson;
  Map<String, dynamic> toJson() => _$DtFormatRequestToJson(this);

  @JsonKey(name: 'locale', defaultValue: '')
  final String locale;
  @JsonKey(name: 'value', defaultValue: '')
  final String value;
  static const fromJsonFactory = _$DtFormatRequestFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DtFormatRequest &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(locale) ^
      const DeepCollectionEquality().hash(value) ^
      runtimeType.hashCode;
}

extension $DtFormatRequestExtension on DtFormatRequest {
  DtFormatRequest copyWith({String? locale, String? value}) {
    return DtFormatRequest(
        locale: locale ?? this.locale, value: value ?? this.value);
  }

  DtFormatRequest copyWithWrapped(
      {Wrapped<String>? locale, Wrapped<String>? value}) {
    return DtFormatRequest(
        locale: (locale != null ? locale.value : this.locale),
        value: (value != null ? value.value : this.value));
  }
}

@JsonSerializable(explicitToJson: true)
class DtFormatResponse {
  DtFormatResponse({
    this.formatted,
    this.value,
    this.status,
  });

  factory DtFormatResponse.fromJson(Map<String, dynamic> json) =>
      _$DtFormatResponseFromJson(json);

  static const toJsonFactory = _$DtFormatResponseToJson;
  Map<String, dynamic> toJson() => _$DtFormatResponseToJson(this);

  @JsonKey(name: 'formatted', defaultValue: '')
  final String? formatted;
  @JsonKey(name: 'value')
  final DateTime? value;
  @JsonKey(name: 'status')
  final bool? status;
  static const fromJsonFactory = _$DtFormatResponseFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DtFormatResponse &&
            (identical(other.formatted, formatted) ||
                const DeepCollectionEquality()
                    .equals(other.formatted, formatted)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(formatted) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $DtFormatResponseExtension on DtFormatResponse {
  DtFormatResponse copyWith(
      {String? formatted, DateTime? value, bool? status}) {
    return DtFormatResponse(
        formatted: formatted ?? this.formatted,
        value: value ?? this.value,
        status: status ?? this.status);
  }

  DtFormatResponse copyWithWrapped(
      {Wrapped<String?>? formatted,
      Wrapped<DateTime?>? value,
      Wrapped<bool?>? status}) {
    return DtFormatResponse(
        formatted: (formatted != null ? formatted.value : this.formatted),
        value: (value != null ? value.value : this.value),
        status: (status != null ? status.value : this.status));
  }
}

int? userFindStatusToJson(enums.UserFindStatus? userFindStatus) {
  return userFindStatus?.value;
}

enums.UserFindStatus userFindStatusFromJson(
  Object? userFindStatus, [
  enums.UserFindStatus? defaultValue,
]) {
  return enums.UserFindStatus.values
          .firstWhereOrNull((e) => e.value == userFindStatus) ??
      defaultValue ??
      enums.UserFindStatus.swaggerGeneratedUnknown;
}

List<int> userFindStatusListToJson(List<enums.UserFindStatus>? userFindStatus) {
  if (userFindStatus == null) {
    return [];
  }

  return userFindStatus.map((e) => e.value!).toList();
}

List<enums.UserFindStatus> userFindStatusListFromJson(
  List? userFindStatus, [
  List<enums.UserFindStatus>? defaultValue,
]) {
  if (userFindStatus == null) {
    return defaultValue ?? [];
  }

  return userFindStatus
      .map((e) => userFindStatusFromJson(e.toString()))
      .toList();
}

List<enums.UserFindStatus>? userFindStatusNullableListFromJson(
  List? userFindStatus, [
  List<enums.UserFindStatus>? defaultValue,
]) {
  if (userFindStatus == null) {
    return defaultValue;
  }

  return userFindStatus
      .map((e) => userFindStatusFromJson(e.toString()))
      .toList();
}

int? attachmentTypeToJson(enums.AttachmentType? attachmentType) {
  return attachmentType?.value;
}

enums.AttachmentType attachmentTypeFromJson(
  Object? attachmentType, [
  enums.AttachmentType? defaultValue,
]) {
  return enums.AttachmentType.values
          .firstWhereOrNull((e) => e.value == attachmentType) ??
      defaultValue ??
      enums.AttachmentType.swaggerGeneratedUnknown;
}

List<int> attachmentTypeListToJson(List<enums.AttachmentType>? attachmentType) {
  if (attachmentType == null) {
    return [];
  }

  return attachmentType.map((e) => e.value!).toList();
}

List<enums.AttachmentType> attachmentTypeListFromJson(
  List? attachmentType, [
  List<enums.AttachmentType>? defaultValue,
]) {
  if (attachmentType == null) {
    return defaultValue ?? [];
  }

  return attachmentType
      .map((e) => attachmentTypeFromJson(e.toString()))
      .toList();
}

List<enums.AttachmentType>? attachmentTypeNullableListFromJson(
  List? attachmentType, [
  List<enums.AttachmentType>? defaultValue,
]) {
  if (attachmentType == null) {
    return defaultValue;
  }

  return attachmentType
      .map((e) => attachmentTypeFromJson(e.toString()))
      .toList();
}

int? documentStatusToJson(enums.DocumentStatus? documentStatus) {
  return documentStatus?.value;
}

enums.DocumentStatus documentStatusFromJson(
  Object? documentStatus, [
  enums.DocumentStatus? defaultValue,
]) {
  return enums.DocumentStatus.values
          .firstWhereOrNull((e) => e.value == documentStatus) ??
      defaultValue ??
      enums.DocumentStatus.swaggerGeneratedUnknown;
}

List<int> documentStatusListToJson(List<enums.DocumentStatus>? documentStatus) {
  if (documentStatus == null) {
    return [];
  }

  return documentStatus.map((e) => e.value!).toList();
}

List<enums.DocumentStatus> documentStatusListFromJson(
  List? documentStatus, [
  List<enums.DocumentStatus>? defaultValue,
]) {
  if (documentStatus == null) {
    return defaultValue ?? [];
  }

  return documentStatus
      .map((e) => documentStatusFromJson(e.toString()))
      .toList();
}

List<enums.DocumentStatus>? documentStatusNullableListFromJson(
  List? documentStatus, [
  List<enums.DocumentStatus>? defaultValue,
]) {
  if (documentStatus == null) {
    return defaultValue;
  }

  return documentStatus
      .map((e) => documentStatusFromJson(e.toString()))
      .toList();
}

int? documentMetadataRequestActionToJson(
    enums.DocumentMetadataRequestAction? documentMetadataRequestAction) {
  return documentMetadataRequestAction?.value;
}

enums.DocumentMetadataRequestAction documentMetadataRequestActionFromJson(
  Object? documentMetadataRequestAction, [
  enums.DocumentMetadataRequestAction? defaultValue,
]) {
  return enums.DocumentMetadataRequestAction.values
          .firstWhereOrNull((e) => e.value == documentMetadataRequestAction) ??
      defaultValue ??
      enums.DocumentMetadataRequestAction.swaggerGeneratedUnknown;
}

List<int> documentMetadataRequestActionListToJson(
    List<enums.DocumentMetadataRequestAction>? documentMetadataRequestAction) {
  if (documentMetadataRequestAction == null) {
    return [];
  }

  return documentMetadataRequestAction.map((e) => e.value!).toList();
}

List<enums.DocumentMetadataRequestAction>
    documentMetadataRequestActionListFromJson(
  List? documentMetadataRequestAction, [
  List<enums.DocumentMetadataRequestAction>? defaultValue,
]) {
  if (documentMetadataRequestAction == null) {
    return defaultValue ?? [];
  }

  return documentMetadataRequestAction
      .map((e) => documentMetadataRequestActionFromJson(e.toString()))
      .toList();
}

List<enums.DocumentMetadataRequestAction>?
    documentMetadataRequestActionNullableListFromJson(
  List? documentMetadataRequestAction, [
  List<enums.DocumentMetadataRequestAction>? defaultValue,
]) {
  if (documentMetadataRequestAction == null) {
    return defaultValue;
  }

  return documentMetadataRequestAction
      .map((e) => documentMetadataRequestActionFromJson(e.toString()))
      .toList();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
