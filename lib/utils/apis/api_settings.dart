
class ApiSettings{

  //---------------------------MAIN LINK----------------------------------------
  static const String _baseUrl= "https://api.weatherapi.com/";
  //---------------------------API LINK-----------------------------------------
  static const String _apiUrl= "${_baseUrl}v1/";
  static const String apiKey = "2dd8a63a3144494097f102738230407";
  //---------------------------WEATHER API LINK---------------------------------
  static const String weatherApi = "${_apiUrl}forecast.json?key=$apiKey&q=Palestine&days=5&aqi=yes&alerts=no";






}