import 'package:flutter/material.dart';

class ProfileWidget extends StatefulWidget {
  final IconData icon;
  final String title;
  const ProfileWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                widget.icon,
                color: Colors.green[900],
                size: 24,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                widget.title,
                style: TextStyle(
                  color:Colors.green[900],
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.green[900],
            size: 15,
          )
        ],
      ),
    );
  }
}