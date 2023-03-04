class AppException implements Exception{

final _message;
final _prefix;


AppException([this._message,this._prefix]){
@override
  String toString(){
   return '$_prefix$_message';
  }
}


}
class InternetException extends AppException{
  InternetException([String ? message]):super
  (message,'No Internet No Internet');

  
}

class Requesttimout extends AppException{
  Requesttimout([String ? message]):super
  (message,'Timeout');

  
}
class Service extends AppException{
  Service([String ? message]):super
  (message,'Services Failed');
 
   
  
}

class InvalidUrl extends AppException{
  InvalidUrl([String ? message]):super
  (message,'InvalidUrl');
 
   
  
}
class FetchException extends AppException{
  FetchException([String ? message]):super
  (message,'FetchException');
 
   
  
}