class Car {
  final String title;
  final String location;
  final String mainImage;
  final List<String> additionalImages;
  final String bodyType;
  final String fuelType;
  final String transmission;
  final String dealerComments;
  final List<Map<String, String>> overview;
  final List<Map<String, List<Map<String, String>>>> features;
  
  Car({
    required this.title,
    required this.location,
    required this.mainImage,
    required this.additionalImages,
    required this.bodyType,
    required this.fuelType,
    required this.transmission,
    required this.dealerComments,
    required this.overview,
    required this.features,
  });
}
