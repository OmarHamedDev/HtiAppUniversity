class NotificationEntity {
  final num? id;
  final String? title;
  final String? message;
  final String? fileUrl;
  final bool isRead;
  final num? applicationId;
  final String? application;
   final String? createdAt;
  NotificationEntity({
    this.id,
    this.createdAt,
    this.title,
    this.message,
    this.fileUrl,
    required this.isRead,
    this.applicationId,
    this.application,

  });
}
