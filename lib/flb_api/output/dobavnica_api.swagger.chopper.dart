// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dobavnica_api.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$DobavnicaApi extends DobavnicaApi {
  _$DobavnicaApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = DobavnicaApi;

  @override
  Future<Response<UserTokenResponseDto>> _apiTenantAccountRenewPost({
    required String? tenant,
    required TokenRenewRequest? body,
  }) {
    final Uri $url = Uri.parse('/api/${tenant}/Account/Renew');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserTokenResponseDto, UserTokenResponseDto>($request);
  }

  @override
  Future<Response<UserTokenResponseDto>> _apiTenantAccountAuthenticatePost({
    required String? tenant,
    required AuthenticateDto? body,
  }) {
    final Uri $url = Uri.parse('/api/${tenant}/Account/Authenticate');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserTokenResponseDto, UserTokenResponseDto>($request);
  }

  @override
  Future<Response<UserAuthenticationResponseDto>>
      _apiTenantAccountChangePasswordPost({
    required String? tenant,
    required UserAuthenticationRequestDto? body,
  }) {
    final Uri $url = Uri.parse('/api/${tenant}/Account/ChangePassword');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserAuthenticationResponseDto,
        UserAuthenticationResponseDto>($request);
  }

  @override
  Future<Response<UserResetPasswordResponseDto>>
      _apiTenantAccountResetPasswordPost({
    required String? tenant,
    required UserResetPasswordRequestDto? body,
  }) {
    final Uri $url = Uri.parse('/api/${tenant}/Account/ResetPassword');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserResetPasswordResponseDto,
        UserResetPasswordResponseDto>($request);
  }

  @override
  Future<Response<UserGenerateTokenResponseDto>>
      _apiTenantVersionCompanyAccountSendPasswordResetTokenPost({
    required String? tenant,
    required String? version,
    required String? company,
    required UserGenerateTokenRequestDto? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/${tenant}/${version}/${company}/Account/SendPasswordResetToken');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserGenerateTokenResponseDto,
        UserGenerateTokenResponseDto>($request);
  }

  @override
  Future<Response<UserFindResponseDto>> _apiTenantAccountFindUserPost({
    required String? tenant,
    required UserFindRequestDto? body,
  }) {
    final Uri $url = Uri.parse('/api/${tenant}/Account/FindUser');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UserFindResponseDto, UserFindResponseDto>($request);
  }

  @override
  Future<Response<dynamic>>
      _apiAnonymousTenantVersionCompanyDocumentsStreamVideoGet({
    required String? company,
    String? key,
    String? token,
    required String? tenant,
    required String? version,
  }) {
    final Uri $url = Uri.parse(
        '/api/anonymous/${tenant}/${version}/${company}/Documents/StreamVideo');
    final Map<String, dynamic> $params = <String, dynamic>{
      'key': key,
      'token': token,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiAnonymousTenantVersionCompanyDocumentsGet({
    required String? company,
    String? key,
    String? token,
    bool? noFileName,
    bool? htmlContent,
    required String? tenant,
    required String? version,
  }) {
    final Uri $url =
        Uri.parse('/api/anonymous/${tenant}/${version}/${company}/Documents');
    final Map<String, dynamic> $params = <String, dynamic>{
      'key': key,
      'token': token,
      'noFileName': noFileName,
      'htmlContent': htmlContent,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiGfsTenantVersionCompanyGet({
    String? gfsFileId,
    bool? noFileName,
    required String? tenant,
    required String? version,
    required String? company,
  }) {
    final Uri $url = Uri.parse('/api/gfs/${tenant}/${version}/${company}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'gfsFileId': gfsFileId,
      'noFileName': noFileName,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiPublicTenantVersionCompanyDocumentsKeyGet({
    required String? key,
    bool? noFileName,
    bool? htmlContent,
    required String? tenant,
    required String? version,
    required String? company,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/${version}/${company}/Documents/${key}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'noFileName': noFileName,
      'htmlContent': htmlContent,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiPublicTenantVersionCompanyDocumentsKeyDelete({
    required String? key,
    required String? tenant,
    required String? version,
    required String? company,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/${version}/${company}/Documents/${key}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> _apiPublicTenantVersionCompanyDocumentsPost({
    required String? tenant,
    required String? version,
    required String? company,
  }) {
    final Uri $url =
        Uri.parse('/api/public/${tenant}/${version}/${company}/Documents');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<AddDocumentHandlerResponse>>
      _apiPublicTenantPubCompanyDocumentSigningClientAddDocumentHandlerPost({
    required Object? tenant,
    required Object? company,
    required AddDocumentHandlerRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/DocumentSigningClient/AddDocumentHandler');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<AddDocumentHandlerResponse, AddDocumentHandlerResponse>($request);
  }

  @override
  Future<Response<AuthorizeTransportHandlerResponse>>
      _apiAnonymousTenantPubCompanyDocumentSigningDeviceAuthorizeDevicePost({
    required Object? tenant,
    required Object? company,
    required AuthorizeTransportHandlerRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/anonymous/${tenant}/pub/${company}/DocumentSigningDevice/AuthorizeDevice');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AuthorizeTransportHandlerResponse,
        AuthorizeTransportHandlerResponse>($request);
  }

  @override
  Future<Response<List<ClaimDocumentsResponse>>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceClaimDocumentsPost({
    required Object? tenant,
    required Object? company,
    required ClaimDocumentsRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/DocumentSigningDevice/ClaimDocuments');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<List<ClaimDocumentsResponse>, ClaimDocumentsResponse>($request);
  }

  @override
  Future<Response<CompleteDocumentsResponse>>
      _apiPublicTenantPubCompanyDocumentSigningClientCompleteDocumentSigningPost({
    required Object? tenant,
    required Object? company,
    required CompleteDocumentsRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/DocumentSigningClient/CompleteDocumentSigning');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<CompleteDocumentsResponse, CompleteDocumentsResponse>($request);
  }

  @override
  Future<Response<DocumentResourceResponse>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceConfirmDocumentResourcePost({
    required Object? tenant,
    required Object? company,
    required DocumentResourceRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/DocumentSigningDevice/ConfirmDocumentResource');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<DocumentResourceResponse, DocumentResourceResponse>($request);
  }

  @override
  Future<Response<DocumentSigningLabelResponse>>
      _apiPublicTenantPubCompanyDocumentSigningClientCreateNewSigningRequestPost({
    required Object? tenant,
    required Object? company,
    required DocumentSigningRequestDto? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/DocumentSigningClient/CreateNewSigningRequest');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<DocumentSigningLabelResponse,
        DocumentSigningLabelResponse>($request);
  }

  @override
  Future<Response<TransportHandlerModel>>
      _apiAnonymousTenantPubCompanyDocumentSigningDeviceCreateNewHandlerPost({
    required Object? tenant,
    required Object? company,
    required CreateTransportHandlerModel? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/anonymous/${tenant}/pub/${company}/DocumentSigningDevice/CreateNewHandler');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<TransportHandlerModel, TransportHandlerModel>($request);
  }

  @override
  Future<Response<DownloadDocumentAttachmentResponse>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceDownloadDocumentAttachmentPost({
    required Object? tenant,
    required Object? company,
    required DownloadDocumentAttachmentRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/DocumentSigningDevice/DownloadDocumentAttachment');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<DownloadDocumentAttachmentResponse,
        DownloadDocumentAttachmentResponse>($request);
  }

  @override
  Future<Response<List<GetDocumentsResponse>>>
      _apiPublicTenantPubCompanyDocumentSigningClientGetDocumentsSigningPost({
    required Object? tenant,
    required Object? company,
    required GetDocumentsRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/DocumentSigningClient/GetDocumentsSigning');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<List<GetDocumentsResponse>, GetDocumentsResponse>($request);
  }

  @override
  Future<Response<TransportHandlerModel>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceGetTransportHandlerInfoPost({
    required Object? tenant,
    required Object? company,
    required GetTransportHandlerRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/DocumentSigningDevice/GetTransportHandlerInfo');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<TransportHandlerModel, TransportHandlerModel>($request);
  }

  @override
  Future<Response<List<TransportHandlerModel>>>
      _apiPublicTenantPubCompanyDocumentSigningClientGetTransportHandlersPost({
    required Object? tenant,
    required Object? company,
    required GetTransportHandlersRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/DocumentSigningClient/GetTransportHandlers');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<List<TransportHandlerModel>, TransportHandlerModel>($request);
  }

  @override
  Future<Response<List<ClaimDocumentsResponse>>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceListDocumentsPost({
    required Object? tenant,
    required Object? company,
    required ListDocuments? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/DocumentSigningDevice/ListDocuments');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<List<ClaimDocumentsResponse>, ClaimDocumentsResponse>($request);
  }

  @override
  Future<Response<RejectDocumentSigningResponse>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceRejectDocumentPost({
    required Object? tenant,
    required Object? company,
    required RejectDocumentSigningRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/DocumentSigningDevice/RejectDocument');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<RejectDocumentSigningResponse,
        RejectDocumentSigningResponse>($request);
  }

  @override
  Future<Response<DocumentResourceResponse>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceRejectDocumentResourcePost({
    required Object? tenant,
    required Object? company,
    required DocumentResourceRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/DocumentSigningDevice/RejectDocumentResource');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<DocumentResourceResponse, DocumentResourceResponse>($request);
  }

  @override
  Future<Response<RemoveDocumentHandlerResponse>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceRemoveDocumentHandlerPost({
    required Object? tenant,
    required Object? company,
    required RemoveDocumentHandlerRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/DocumentSigningDevice/RemoveDocumentHandler');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<RemoveDocumentHandlerResponse,
        RemoveDocumentHandlerResponse>($request);
  }

  @override
  Future<Response<RemoveDocumentResourceResponse>>
      _apiPublicTenantPubCompanyDocumentSigningClientRemoveDocumentResourcePost({
    required Object? tenant,
    required Object? company,
    required RemoveDocumentResourceRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/DocumentSigningClient/RemoveDocumentResource');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<RemoveDocumentResourceResponse,
        RemoveDocumentResourceResponse>($request);
  }

  @override
  Future<Response<UndeliverableDocumentSigningResponse>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceUndeliverableDocumentPost({
    required Object? tenant,
    required Object? company,
    required UndeliverableDocumentSigningRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/DocumentSigningDevice/UndeliverableDocument');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<UndeliverableDocumentSigningResponse,
        UndeliverableDocumentSigningResponse>($request);
  }

  @override
  Future<Response<ClientSignatureResponse>>
      _apiPublicTenantPubCompanyDocumentSigningClientUploadAttachmentPost({
    required Object? tenant,
    required Object? company,
    required UploadAttachmentRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/DocumentSigningClient/UploadAttachment');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<ClientSignatureResponse, ClientSignatureResponse>($request);
  }

  @override
  Future<Response<ClientSignatureResponse>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceUploadClientSignaturePost({
    required Object? tenant,
    required Object? company,
    required UploadAttachmentRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/DocumentSigningDevice/UploadClientSignature');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<ClientSignatureResponse, ClientSignatureResponse>($request);
  }

  @override
  Future<Response<ClientSignatureResponse>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceUploadClientSignatureMultiplePost({
    required Object? tenant,
    required Object? company,
    required UploadAttachmentRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/DocumentSigningDevice/UploadClientSignatureMultiple');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<ClientSignatureResponse, ClientSignatureResponse>($request);
  }

  @override
  Future<Response<DocumentSigningUploadResponse>>
      _apiPublicTenantPubCompanyDocumentSigningClientUploadDocumentForSigningPost({
    required Object? tenant,
    required Object? company,
    required DocumentSigningUpload? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/DocumentSigningClient/UploadDocumentForSigning');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<DocumentSigningUploadResponse,
        DocumentSigningUploadResponse>($request);
  }

  @override
  Future<Response<ClientSignatureResponse>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceUploadDocumentImagePost({
    required Object? tenant,
    required Object? company,
    required UploadAttachmentRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/DocumentSigningDevice/UploadDocumentImage');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<ClientSignatureResponse, ClientSignatureResponse>($request);
  }

  @override
  Future<Response<UploadResourceResponse>>
      _apiPublicTenantPubCompanyDocumentSigningClientUploadDocumentResourcePost({
    required Object? tenant,
    required Object? company,
    required UploadResourceRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/DocumentSigningClient/UploadDocumentResource');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<UploadResourceResponse, UploadResourceResponse>($request);
  }

  @override
  Future<Response<ClientSignatureResponse>>
      _apiPublicTenantPubCompanyDocumentSigningDeviceUploadIssuerSignaturePost({
    required Object? tenant,
    required Object? company,
    required UploadAttachmentRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/DocumentSigningDevice/UploadIssuerSignature');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<ClientSignatureResponse, ClientSignatureResponse>($request);
  }

  @override
  Future<Response<DocumentMoveResponse>>
      _apiPublicTenantPubCompanyDocumentsDocumentMovePost({
    required Object? tenant,
    required Object? company,
    required DocumentMoveRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/Documents/DocumentMove');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<DocumentMoveResponse, DocumentMoveResponse>($request);
  }

  @override
  Future<Response<DocumentSearchResponse>>
      _apiPublicTenantPubCompanyDocumentsDocumentSearchPost({
    required Object? tenant,
    required Object? company,
    required DocumentSearchRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/Documents/DocumentSearch');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<DocumentSearchResponse, DocumentSearchResponse>($request);
  }

  @override
  Future<Response<DocumentMetadataResponse>>
      _apiPublicTenantPubCompanyDocumentsDocumentUpdateMetadataPost({
    required Object? tenant,
    required Object? company,
    required DocumentMetadataRequest? body,
  }) {
    final Uri $url = Uri.parse(
        '/api/public/${tenant}/pub/${company}/Documents/DocumentUpdateMetadata');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client
        .send<DocumentMetadataResponse, DocumentMetadataResponse>($request);
  }

  @override
  Future<Response<DtFormatResponse>>
      _apiPublicTenantPubCompanyApiDateTimeConvertPost({
    required Object? tenant,
    required Object? company,
    required DtFormatRequest? body,
  }) {
    final Uri $url =
        Uri.parse('/api/public/${tenant}/pub/${company}/Api/DateTimeConvert');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<DtFormatResponse, DtFormatResponse>($request);
  }
}
