import 'package:flutter/material.dart';

ButtonStyle buttonStyle(Color color) => ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(36),
        side: BorderSide(
          color: color,
          width: 2,
        ),
      ),
    );
