import 'package:flutter/material.dart';
import 'package:product_app/date_picker/model/meth_popup.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime(2100);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Picker'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              mymodalSheet(
                child: Column(
                  children: [
                    const Text(
                      'ជ្រើសរើសថ្ងៃ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SfDateRangePicker(
                      selectionMode: DateRangePickerSelectionMode.range,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('យល់ព្រម'),
                    ),
                  ],
                ),
              );
            },
            child: const Text('tes'),
          ),
          Row(
            children: [
              Text('${dateTime.day}/${dateTime.month}/${dateTime.year}'),
              const Spacer(),
              Text('${dateTime.day}/${dateTime.month}/${dateTime.year}'),
            ],
          ),
          ElevatedButton(
            onPressed: () async {
              DateTime? newDate = await showDatePicker(
                context: context,
                initialDate: dateTime,
                firstDate: DateTime(1800),
                lastDate: DateTime(3000),
              );
              if (newDate != null) {
                setState(() {
                  dateTime = newDate;
                });
              }
            },
            child: const Text('Get Date'),
          ),
        ],
      ),
    );
  }
}
