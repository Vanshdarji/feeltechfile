// import 'package:flutter/material.dart';
// import 'package:vanshtask1/Screens/HelperScreen/class.dart';

// class ProfileScreen extends StatefulWidget {
//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _bioController = TextEditingController();

//   // Example user profile
//   UserProfile userProfile = UserProfile(
//       name: 'John Doe',
//       email: 'john.doe@example.com',
//       bio: 'Hello, I am John!');

//   @override
//   void initState() {
//     super.initState();
//     // Initialize the text controllers with the current user profile data
//     _nameController.text = userProfile.name;
//     _emailController.text = userProfile.email;
//     _bioController.text = userProfile.bio;
//   }

//   void _saveProfile() {
//     if (_formKey.currentState!.validate()) {
//       setState(() {
//         userProfile.name = _nameController.text;
//         userProfile.email = _emailController.text;
//         userProfile.bio = _bioController.text;
//       });
//       ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text('Profile Saved')));
//       Navigator.of(context).pop();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Edit Profile')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 controller: _nameController,
//                 decoration: InputDecoration(labelText: 'Name'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your name';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _emailController,
//                 decoration: InputDecoration(labelText: 'Email'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your email';
//                   }
//                   if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
//                     return 'Please enter a valid email address';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _bioController,
//                 decoration: InputDecoration(labelText: 'Bio'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your bio';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: _saveProfile,
//                 child: Text('Save Profile'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _emailController.dispose();
//     _bioController.dispose();
//     super.dispose();
//   }
// }
