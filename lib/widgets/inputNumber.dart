import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputNumber extends StatefulWidget {
  final String title;
  final String hint;

  const InputNumber({
    super.key,
    required this.title,
    required this.hint,
  });

  @override
  State<InputNumber> createState() => _InputNumberState();
}

class _InputNumberState extends State<InputNumber> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            fontFamily: 'Rubik',
            fontWeight: FontWeight.w300,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 5),
        TextFormField(
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          controller: _controller,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: const TextStyle(
              fontFamily: 'Rubik',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xFFCBCBCB),
            ),
            suffixIcon: _controller.text.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      _controller.clear();
                    },
                  )
                : null,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Color(0xFFC28CFF),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Color(0xFFC28CFF),
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Color(0xFFE24717),
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Color(0xFFC28CFF),
              ),
            ),
          ),
          style: const TextStyle(
            fontFamily: 'Rubik',
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Colors.black,
          ),
          maxLines: null,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Form harus diisi';
            }
            return null;
          },
          autovalidateMode: AutovalidateMode.onUnfocus,
        ),
      ],
    );
  }
}