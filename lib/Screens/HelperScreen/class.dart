import 'package:vanshtask1/Screens/HelperScreen/images.dart';

class ProfileService {
  // Singleton pattern
  static final ProfileService _instance = ProfileService._internal();
  factory ProfileService() => _instance;
  ProfileService._internal();

  // Profile data
  String _name = 'John Doe';
  String _email = 'john@example.com';
  String _bio = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.';

  // Get profile data
  Map<String, String> getProfile() {
    return {
      'name': _name,
      'email': _email,
      'bio': _bio,
    };
  }

  // Update profile data
  void updateProfile(Map<String, String> data) {
    _name = data['name']!;
    _email = data['email']!;
    _bio = data['bio']!;
  }
}

// Movies Screen Classs

class CarouselItem {
  final String rating;
  final String rate;
  final String name;
  final String Subtitle;
  final String imagePath;
  CarouselItem(
      {required this.rating,
      required this.rate,
      required this.name,
      required this.imagePath,
      required this.Subtitle});
}

final List<CarouselItem> carouselItems = [
  CarouselItem(
      rating: "IMBD",
      rate: "8.9",
      name: "The Avengers",
      Subtitle: "Action, Thriller, Scientific",
      imagePath: avenger),
  CarouselItem(
      rating: "IMBD",
      rate: "7.5",
      name: "The Corpsc Birde",
      Subtitle: "Comady, Family, Adventure",
      imagePath: cartoon),
  CarouselItem(
      rating: "IMBD",
      rate: "8.0",
      name: "The blue Birds",
      Subtitle: "Adventure, Family, Comady",
      imagePath: Birds),
];
