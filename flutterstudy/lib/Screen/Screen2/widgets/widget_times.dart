import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD

import '../../Screen1/model/color_model.dart';

class WidgetTimes extends StatefulWidget {
  const WidgetTimes({super.key});

  @override
  _WidgetTimesState createState() => _WidgetTimesState();
}

class _WidgetTimesState extends State<WidgetTimes> {
  int _selectedYear = DateTime.now().year;
  int _selectedMonth = DateTime.now().month;
  DateTime? _selectedDate;

  final List<String> _months = [
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
  ];

  final List<String> _weekdays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  void _changeMonth(int delta) {
    setState(() {
      _selectedMonth += delta;
      if (_selectedMonth > 12) {
        _selectedMonth = 1;
        _selectedYear++;
      } else if (_selectedMonth < 1) {
        _selectedMonth = 12;
        _selectedYear--;
      }

      _selectedYear = _selectedYear.clamp(2000, 2024);
    });
  }

=======

import '../../Screen1/model/color_model.dart';


class WidgetTimes extends StatelessWidget {
  const WidgetTimes({super.key});

>>>>>>> 0118c54 (khaihandsome)
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => _changeMonth(-1),
                icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
              ),
              Text(
                '${_months[_selectedMonth - 1]} $_selectedYear',
                style: const TextStyle(color: AppColors.hexBA83DE, fontSize: 20),
              ),
              IconButton(
                onPressed: () => _changeMonth(1),
                icon: const Icon(Icons.arrow_forward_ios, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
<<<<<<< HEAD
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: DateTime(_selectedYear, _selectedMonth + 1, 0).day,
              itemBuilder: (context, index) {
                DateTime currentDay = DateTime(_selectedYear, _selectedMonth, index + 1);
                String dayName = _weekdays[currentDay.weekday - 1];

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedDate = currentDay;
                    });
                  },
                  child: _buildDayColumn(
                    dayName,
                    '${currentDay.day}',
                    currentDay == _selectedDate,
                  ),
                );
              },
            ),
=======
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildDayColumn('Mon', '04', false),
              _buildDayColumn('Tue', '05', false),
              _buildDayColumn('Wed', '06', false),
              _buildDayColumn('Thu', '07', true),
              _buildDayColumn('Fri', '08', false),
              _buildDayColumn('Sat', '09', false),
              _buildDayColumn('Sun', '10', false),
            ],
>>>>>>> 0118c54 (khaihandsome)
          ),
        ],
      ),
    );
  }

  Widget _buildDayColumn(String day, String date, bool isSelected) {
<<<<<<< HEAD
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Text(
            day,
            style: TextStyle(
              color: isSelected ? AppColors.hexBA83DE : Colors.white,
=======
    return Column(
      children: [
        Text(
          day,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        const SizedBox(height: 8.0),
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
          ),
          child: Text(
            date,
            style: const TextStyle(
              color: Colors.white,
>>>>>>> 0118c54 (khaihandsome)
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            date,
            style: TextStyle(
              color: isSelected ? AppColors.hexBA83DE : Colors.white70,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
