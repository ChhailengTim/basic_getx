
import 'package:flutter/material.dart';

Color? statusColors(String typeStatus) {
  switch (typeStatus.toLowerCase()) {
    case 'pending':
      return Colors.blue;
    case 'approved':
      return Colors.green;
    case 'rejected':
      return Colors.red;
  }
  return Colors.black;
}
