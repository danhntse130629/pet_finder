class ApiUrl {
  static final String BASE_URL = "https://pto.azurewebsites.net/api/v1/";
  static final String SORT = "?isSort=";

  static final String USER_URL = BASE_URL + "users";
  static final String USER_FINDBYGMAIL_URL = USER_URL + "/gmail?gmail=";

  static final String TOKEN_URL = BASE_URL + "token";
}