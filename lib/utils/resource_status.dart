enum ResourceStatus { initial, loading, success, failure}

extension ResourceStatusX on ResourceStatus{
  bool get isInitial => this == ResourceStatus.initial;
  bool get isLoading => this == ResourceStatus.loading;
  bool get isSuccess => this == ResourceStatus.success;
  bool get isFailure => this == ResourceStatus.failure;
}