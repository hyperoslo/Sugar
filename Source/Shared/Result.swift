public enum Result<T, Error: ErrorType> {
  case Success(T)
  case Failure(Error)
}
