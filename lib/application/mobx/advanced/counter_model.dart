import 'package:state_app_samples/reosurces/model_core.dart';

class CounterModel extends ModelCore {
  CounterModel({String? title, int? counterAmount})
    : super(title: title ?? "", counterAmount: counterAmount ?? 0);
}
