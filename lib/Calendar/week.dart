import 'package:flutter/material.dart';

class WeekWidget extends StatelessWidget {
  const WeekWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                width: 40,
                height: 40,
                color: Colors.black12,
                child: const Center(
                  child: Text(
                    "16",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 7),
              const Text(
                "월",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),

          Column(
            children: [
              Container(
                width: 40,
                height: 40,
                color: Colors.black12,
                child: const Center(
                  child: Text(
                    "17",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 7),
              const Text(
                "화",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),

          Column(
            children: [
              Container(
                width: 40,
                height: 40,
                color: Colors.black12,
                child: const Center(
                  child: Text(
                    "18",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 7),
              const Text(
                "수",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),

          Column(
            children: [
              Container(
                width: 40,
                height: 40,
                color: Colors.black12,
                child: const Center(
                  child: Text(
                    "19",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 7),
              const Text(
                "목",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          // 20
          Column(
            children: [
              Container(
                width: 40,
                height: 40,
                color: Colors.black12,
                child: const Center(
                  child: Text(
                    "20",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 7),
              const Text(
                "금",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          // 21
          Column(
            children: [
              Container(
                width: 40,
                height: 40,
                color: Colors.black12,
                child: const Center(
                  child: Text(
                    "21",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 7),
              const Text(
                "토",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          // 22
          Column(
            children: [
              Container(
                width: 40,
                height: 40,
                color: Colors.black12,
                child: const Center(
                  child: Text(
                    "22",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 7),
              const Text(
                "일",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
