class AppEndpoints {
  ///UAT Server Urls
  static const milesCpaUatUrl = 'https://cpa-api-uat.mileseducation.com';
  static const milesWebUatUrl = 'https://cpa-lms-uat.mileseducation.com';

  ///PROD Server Urls
  static const milesCpaProdUrl = 'https://cpa-api.mileseducation.com';
  static const milesWebProdUrl = 'https://cpa.mileseducation.com';

  static const studentLoginEndpoint = '/studentLogin';
  static const getavailableDatesByCategory = '/getavailabledatesbycategory';
  static const getStudentData = '/student/details';
  static const getSessionDetails = '/getsessiondetails';
  static const deleteAppointment = '/deleteAppointment';
  static const getAppointmentList = '/getAppointments_list';
  static const getFeedbackQuestions = '/getFeedbackquestions';
  static const insertFeedback = '/insertFeedback';
  static const getCategory = '/getcategory';
  static const forgotpassword = '/student/forgotPassword';
  static const getSrName = '/getBankDetails';
  static const getcities = '/getAppointment_popupdata';
  static const saveReferenceData = '/saveReferenceData';
  static const getTopicwiseReport = '/gettopicwisereport';
  //Webinar
  static const String zoomListLmsWebinar = '/admin/webinar/zoomListLmsWebinar';
  static const String getWebinarVideos = '/getWebinarVideos';
  static const String zoomRegister = '/admin/webinar/zoomRegister';
  static const String userWebinarInfo = '/userwebinarinfo';
  static const String getfeedbackquestion = '/getFeedbackquestions';
  static const String sumbitFeedback = '/insertFeedback';
  static const String getCategoryByWebinarType =
      '/admin/webinar/getcategorybycategorytype';
  static const String zoomRegisterAllMobileWebinars =
      '/admin/webinar/zoomRegisterAllMobileWebinars';
  static const String getSubjectBasedBatches =
      '/admin/webinar/getsubjectbasedbatches';
  static const String getVideoBatchList = '/admin/webinar/getvideobatcheslist';
}
