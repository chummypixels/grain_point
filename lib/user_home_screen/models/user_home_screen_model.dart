import 'package:get/get.dart';
import 'frame_one_item_model.dart';
import 'frame_two_item_model.dart';

class UserHomeScreenModel {
  RxList<FrameOneItemModel> frameOneItemList =
      RxList.filled(3, FrameOneItemModel());
  RxList<FrameTwo> frameTwoItemList = RxList.filled(5, FrameTwo());
}
