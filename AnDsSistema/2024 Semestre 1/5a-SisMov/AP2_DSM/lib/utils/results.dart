sealed class Results{}

class SuccessResults extends Results{}
class LoadingResults extends Results{}
class ErrorResults extends Results{
  final String code;
  ErrorResults({required this.code});
}