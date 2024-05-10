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