// TODO use unions

// @freezed
// class Status with _$Status {
//   @JsonSerializable(fieldRename: FieldRename.snake)
//   const factory Status.department({
//     String? time,
//     String? status,
//     String? detail,
//     List<DepartmentModel>? result,
//   }) = _DepartmentStatus;
//   @JsonSerializable(fieldRename: FieldRename.snake)
//   const factory Status.student({
//     String? time,
//     String? status,
//     String? detail,
//     List<StudentModel>? result,
//   }) = _StudentStatus;
//   // const factory Status({
//   //   String? time,
//   //   String? status,
//   //   String? detail,
//   //   List<Model>? result,
//   // }) = _Status;

//   factory Status.fromJson(Map<String, Object?> json) => _$StatusFromJson(json);
// }
