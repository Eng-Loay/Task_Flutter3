import 'package:doctor_app/widget/hospital.dart';
import 'package:doctor_app/widget/near_doctor.dart';

import './widget/doctor.dart';
import './widget/header.dart';
import './widget/input.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const HeaderWidget(),
              const DoctorWidget(),
              const InputWidget(),
              Hospital(),
              DoctorCard(
                name: 'Dr. Joseph Brostito',
                specialty: 'Dental Specialist',
                distance: '1.2 KM',
                rating: 4.8,
                reviews: 120,
                openingTime: '17.00',
                imagePath: 'assets/images/image.png', // Provide the path to your asset image
              ),
              DoctorCard(
                name: 'Dr. Imran Syahir',
                specialty: 'General Doctor',
                distance: '1.2 KM',
                rating: 5,
                reviews: 100,
                openingTime: '20.00',
                imagePath: 'assets/images/profile.png', // Provide the path to your asset image
              ),
              // Add more DoctorCards here as needed
            ],
          ),
        ),
      ),
    );
  }
}
