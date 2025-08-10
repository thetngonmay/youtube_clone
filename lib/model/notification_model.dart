class NotificationModel{

  final String channelProfileUrl;
  final String notificationTitle;
  final String notificationDesc;
  final String createdDate;
  final String videoImage;
  final bool isSeen;

  NotificationModel(
      this.channelProfileUrl,
      this.notificationTitle,
      this.notificationDesc,
      this.createdDate,
      this.videoImage,
      this.isSeen
      );

}