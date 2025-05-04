class EventEntity {
   int id;
   String title;
   String description;
   String imageUrl;
   String createdAt;

  EventEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.createdAt,
  });
}