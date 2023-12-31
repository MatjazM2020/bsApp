/* INFO: 
  In this class we define the constants which we use in other files. 
*/


class Constants{
  static const tenant = 'FLBDev'; 
  static const company = 'FLB'; 
  static const baseUrl = 'http://devapp.devweb.b-s.si/'; //We use this baseUrl so that we can communicate with the server also from the outside (outside of the BS network)
  static const authorizeDeviceUri = '/api/anonymous/FLBDev/pub/FLB/DocumentSigningDevice/AuthorizeDevice';
  static const createNewHandlerUri = '/api/anonymous/FLBDev/pub/FLB/DocumentSigningDevice/CreateNewHandler'; 
  static const settings = 'Settings'; 
  
  
  static const homeDocumentPath = '/home'; 
  static const registerPath = '/register'; 
  static const scanPath = '/scan';
  static const documentDetailViewPath = '/documentDetailView'; 
  static const packetDetailViewPath = '/packetDetailView'; 
  static const settingsPath = '/settings'; 
  static const signaturePath = '/signature'; 
  

  static const homeImgPath = 'assets/images/home1.png';
  static const scanImgPath = 'assets/images/scan1.png';
  static const settingsImgPath = 'assets/images/settings1.png';
  static const newItemImgPath = 'assets/images/newItem1.png'; 
  static const editImgPath = 'assets/images/edit1.png'; 
  static const displayImgPath = 'assets/images/display1.png'; 
  static const deleteImgPath = 'assets/images/delete1.png'; 
  static const createNewImgPath = 'assets/images/createNew1.png'; 
  static const magnifyingGlassPath = 'assets/images/magnifyingGlass.png'; 
  static const hamburgerPath = 'assets/images/hamburger1.png'; 
  static const signImgPath = 'assets/images/sign.png'; 
  static const backImgpath = 'assets/images/back.png'; 
  static const moreImgPath = 'assets/images/more.png'; 


  static const bold = 'SourceSansProBold';
  static const regular = 'SourceSandProRegular';
  static const semiBold = 'SourceSandProSemiBold';


  static const List<String> inputTexts = [
  'Name',
  'Surname',
  'Phone',
  'VatNo',
  'Vehicle Number',
  'Email',
];
}


