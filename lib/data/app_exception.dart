class AppException implements Exception{

String? _message;
String? _prefix;


AppException([this._message,this._prefix]){

  String toString(){
   return '$_prefix$_message';
  }
}


}
class InternetException extends AppException{
  InternetException([String ? message]):super
  (message,'No Internet');

  
}