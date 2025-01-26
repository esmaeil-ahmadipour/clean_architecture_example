import 'package:dio/dio.dart';

/// [RemoteDataState<T>] Documentation
///
/// The [RemoteDataState<T>] class is an abstract class representing the state
/// of remote data retrieval. It provides information about the retrieved data
/// and any encountered error using generics.
///
/// ## Class Overview
///
/// - Class Name: [RemoteDataState<T>]
/// - Type Parameter: T - the type of the remote data
/// - Description: Represents the state of remote data retrieval, including the
/// retrieved data and any encountered errors.
///
/// ## Constructors
///
/// - `const RemoteDataState(this.remoteData, this.error)`: Initializes a
/// `RemoteDataState` instance with the provided `remoteData` and `error`.
///
/// ## Properties
///
/// - [remoteData] : Represents the retrieved remote data of type `T`. It can
/// be `null` if no data is retrieved.
/// - [error] : Represents any encountered `DioException` during the remote data
/// retrieval. It can be `null` if no error occurred.
///
abstract class RemoteDataState<T> {

  const RemoteDataState(this.remoteData, this.error);
  final T? remoteData;
  final DioException? error;
}

/// [RemoteDataSuccess<T>] Documentation
///
/// - Description: Represents a successful state of remote data retrieval.
/// - Extends: [RemoteDataState<T>]
///
class RemoteDataSuccess<T> extends RemoteDataState<T> {
  const RemoteDataSuccess({T? remoteData, DioException? error})
      : super(remoteData, error);
}

/// [RemoteDataFailed<T>] Documentation
///
/// - Description: Represents a failed state of remote data retrieval.
/// - Extends: [RemoteDataState<T>]
///
class RemoteDataFailed<T> extends RemoteDataState<T> {
  const RemoteDataFailed({T? remoteData, DioException? error})
      : super(remoteData, error);
}
