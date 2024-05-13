// import 'package:flutter/material.dart';

// class SeatReservationScreen extends StatefulWidget {
//   @override
//   _SeatReservationScreenState createState() => _SeatReservationScreenState();
// }

// class _SeatReservationScreenState extends State<SeatReservationScreen> {

//   @override
//   void initState() {
//     super.initState();
//     // Initialize seats with some initial values (true for reserved, false for available)
//     _seats = List.generate(
//       5,
//       (_) => List.generate(5, (_) => false),
//     );
//   }

//   void _toggleSeatReservation(int row, int col) {
//     setState(() {
//       _seats[row][col] = !_seats[row][col]; // Toggle reservation status
//     });
//   }
//   List<List<bool>> _seats;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Seat Reservation'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: GridView.builder(
//           itemCount: _seats.length * _seats[0].length,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: _seats[0].length,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//           ),
//           itemBuilder: (BuildContext context, int index) {
//             int row = index ~/ _seats[0].length;
//             int col = index % _seats[0].length;
//             return GestureDetector(
//               onTap: () {
//                 _toggleSeatReservation(row, col);
//               },
//               child: Container(
//                 color: _seats[row][col] ? Colors.red : Colors.green,
//                 child: Center(
//                   child: Text(
//                     '${row + 1}-${col + 1}',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class SeatBookingScreen extends StatefulWidget {
  @override
  _SeatBookingScreenState createState() => _SeatBookingScreenState();
}

class _SeatBookingScreenState extends State<SeatBookingScreen> {
  List<List<bool>> _seats = List.generate(
    5,
    (_) => List.generate(5, (_) => false),
  ); // Initially, all seats are available

  void _toggleSeat(int row, int col) {
    setState(() {
      _seats[row][col] = !_seats[row][col]; // Toggle seat selection
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Seat Booking'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: _seats[0].length,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: _seats.length * _seats[0].length,
                itemBuilder: (BuildContext context, int index) {
                  int row = index ~/ _seats[0].length;
                  int col = index % _seats[0].length;
                  return GestureDetector(
                    onTap: () {
                      _toggleSeat(row, col);
                    },
                    child: Container(
                      color: _seats[row][col] ? Colors.grey : Colors.blue,
                      child: Center(
                        child: Text(
                          '${String.fromCharCode('A'.codeUnitAt(0) + row)}${col + 1}',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Add logic to proceed with booking
              print('Selected Seats: $_seats');
            },
            child: Text('Book Selected Seats'),
          ),
        ],
      ),
    );
  }
}