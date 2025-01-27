import 'package:clean_architecture_example/features/details/presentation/widget/shimmer_widget.dart';
import 'package:flutter/material.dart';

// Widget for each detail row (title and value)
class DetailRow extends StatelessWidget {
  const DetailRow({
    super.key,
    required this.isLoading,
    required this.label,
    required this.value,
  });

  final bool isLoading;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: isLoading
          ? const ShimmerWidget.rectangular(height: 16, width: double.infinity)
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                Expanded(
                  child: Text(
                    value,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
    );
  }
}
