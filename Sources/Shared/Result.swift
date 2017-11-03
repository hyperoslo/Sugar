public enum Result<T, error: Error> {
  case success(T)
  case failure(Error)
}
