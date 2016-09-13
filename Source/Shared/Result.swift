public enum Result<T, Error: Error> {
  case success(T)
  case failure(Error)
}
