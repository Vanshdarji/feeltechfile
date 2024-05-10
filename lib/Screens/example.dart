// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
//
//
// class ProfileScreen extends StatefulWidget {
//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }
//
// class _ProfileScreenState extends State<ProfileScreen> {
//   final ProfileService _profileService = ProfileService();
//
//   Map<String, String> _profileData = {};
//
//   @override
//   void initState() {
//     super.initState();
//     _profileData = _profileService.getProfile();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.edit),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => EditProfileScreen()),
//               ).then((value) {
//                 if (value != null) {
//                   setState(() {
//                     _profileData = value;
//                   });
//                 }
//               });
//             },
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Name: ${_profileData['name']}',
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Email: ${_profileData['email']}',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Bio: ${_profileData['bio']}',
//               style: TextStyle(fontSize: 18),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
// class EditProfileScreen extends StatefulWidget {
//   @override
//   _EditProfileScreenState createState() => _EditProfileScreenState();
// }
//
// class _EditProfileScreenState extends State<EditProfileScreen> {
//   final ProfileService _profileService = ProfileService();
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _bioController = TextEditingController();
//
//   @override
//   void initState() {
//     super.initState();
//     Map<String, String> profileData = _profileService.getProfile();
//     _nameController.text = profileData['name']!;
//     _emailController.text = profileData['email']!;
//     _bioController.text = profileData['bio']!;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Edit Profile'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextField(
//               controller: _nameController,
//               decoration: InputDecoration(labelText: 'Name'),
//             ),
//             SizedBox(height: 20),
//             TextField(
//               controller: _emailController,
//               decoration: InputDecoration(labelText: 'Email'),
//             ),
//             SizedBox(height: 20),
//             TextField(
//               controller: _bioController,
//               decoration: InputDecoration(labelText: 'Bio'),
//               maxLines: 3,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 _saveProfile(context);
//               },
//               child: Text('Save'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void _saveProfile(BuildContext context) {
//     Map<String, String> profileData = {
//       'name': _nameController.text,
//       'email': _emailController.text,
//       'bio': _bioController.text,
//     };
//     _profileService.updateProfile(profileData);
//     Navigator.pop(context, profileData);
//   }
// }






