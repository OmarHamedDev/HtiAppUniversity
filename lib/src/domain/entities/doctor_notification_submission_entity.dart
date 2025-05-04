class DoctorNotificationSubmissionEntity {
  final String doctorId;
  final String title;
  final String message;
  final String createdAt;
  final String fileUrl;

  const DoctorNotificationSubmissionEntity({
    required this.doctorId,
    required this.title,
    required this.fileUrl,
    required this.message,
    required this.createdAt,
  });

}