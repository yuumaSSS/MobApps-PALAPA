import 'package:flutter/material.dart';

class RatingBarWidget extends StatefulWidget {
  final String label;

  const RatingBarWidget({super.key, required this.label});

  @override
  State<RatingBarWidget> createState() => _RatingBarWidgetState();
}

class _RatingBarWidgetState extends State<RatingBarWidget> {
  int selectedRating = 0;
  bool isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          value: isEnabled,
          onChanged: (value) {
            setState(() {
              isEnabled = value ?? false;
              if (!isEnabled) selectedRating = 0;
            });
          },
        ),

        // Spacer
        const SizedBox(width: 8),

        // Label dan Rating Bar di kanan
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.label, style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),

              // Opacity dan IgnorePointer
              Opacity(
                opacity: isEnabled ? 1.0 : 0.3,
                child: IgnorePointer(
                  ignoring: !isEnabled,
                  child: Wrap(
                    spacing: 8,
                    children: List.generate(10, (index) {
                      final isSelected = selectedRating == index + 1;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedRating = index + 1;
                          });
                        },
                        child: Container(
                          width: 32,
                          height: 32,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: isSelected ? Colors.orange : Colors.grey[300],
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            '${index + 1}',
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ],
    );
  }
}
