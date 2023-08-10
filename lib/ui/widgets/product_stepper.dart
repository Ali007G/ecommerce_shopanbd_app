import 'package:ecommerce_shopanbd/ui/utills/app_colours.dart';
import 'package:flutter/material.dart';

class ProductStepper extends StatefulWidget {
  const ProductStepper({Key? key}) : super(key: key);

  @override
  State<ProductStepper> createState() => _ProductStepperState();
}

class _ProductStepperState extends State<ProductStepper> {
  int _currentValue = 1;
  TextEditingController _stepperTEController = TextEditingController(text: '1');

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        stepperButton(
          onTap: () {
            () {
              if (_currentValue > 1) {
                _currentValue--;
                _stepperTEController.text = _currentValue.toString();
              }
            };
          },
          iconData: Icons.remove,
        ),
        /*
        SizedBox(
          width: 30,
          height: 30,
          child: InkWell(
            onTap: () {
              if (_currentValue > 1) {
                _currentValue--;
                _stepperTEController.text = _currentValue.toString();
              }
            },
            child: Container(
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(
                Icons.remove,
                size: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
        */
        SizedBox(
          width: 50,
          height: 30,
          child: TextField(
            controller: _stepperTEController,
            enabled: false,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            decoration: const InputDecoration(
                border: OutlineInputBorder(
              borderSide: BorderSide.none,
            )),
          ),
        ),
        /* SizedBox(
          width: 30,
          height: 30,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            onPressed: () {
              if (_currentValue < 20) {
                _currentValue++;
                _stepperTEController.text = _currentValue.toString();
              }
            },
            child: const Icon(
              Icons.add,
              size: 16,
            ),
          ),
        ), */
        stepperButton(
          onTap: () {
            () {
              if (_currentValue < 20) {
                _currentValue++;
                _stepperTEController.text = _currentValue.toString();
              }
            };
          },
          iconData: Icons.add,
        ),
      ],
    );
  }

  Widget stepperButton(
      {required VoidCallback onTap, required IconData iconData}) {
    return SizedBox(
      width: 30,
      height: 30,
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            iconData,
            size: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
