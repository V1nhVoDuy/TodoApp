class AppConstant {
  AppConstant._();

  static const baseTodo = '*****';
  static baseImage(String path) => '*****/$path';

  static const endPointBaseImage = '*****/public/images';
  static const endPointAuthRegister = '$baseTodo/auth/register';
  static const endPointOtp = '$baseTodo/auth/send-otp';
  static const endPointLogin = '$baseTodo/auth/login';
  static const endPointForgotPassword = '$baseTodo/auth/forgot-password';
  static const endPointChangePassword = '$baseTodo/auth/change-password';
  static const endPointGetProfile = '$baseTodo/user/get-me';
  static const endPointUpdateProfile = '$baseTodo/user/update/profile';
  static const endPointUploadFile = '$baseTodo/file/upload';
  static const endPointGetListTask = '$baseTodo/task/get-list';
  static const endPointTaskCreate = '$baseTodo/task/create';
  static const endPointTaskUpdate = '$baseTodo/task/update';
  static const endPointTaskDelete = '$baseTodo/task/delete';
  static const endPointTaskMultipleRestore = '$baseTodo/task/multiple-restore';
  static const endPointTaskMultipleDelete = '$baseTodo/task/multiple-delete';
}
